﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Code;
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace WaterCloud.Application.SystemManage
{
    public class UserApp
    {
        private IUserRepository service = new UserRepository();
        private UserLogOnApp userLogOnApp = new UserLogOnApp();

        public List<UserEntity> GetList(Pagination pagination, string keyword)
        {
            var expression = ExtLinq.True<UserEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_Account.Contains(keyword));
                expression = expression.Or(t => t.F_RealName.Contains(keyword));
                expression = expression.Or(t => t.F_MobilePhone.Contains(keyword));
            }
            expression = expression.And(t => t.F_Account != "admin");
            return service.FindList(expression, pagination);
        }
        public List<UserEntity> GetList(string keyword)
        {
            var expression = ExtLinq.True<UserEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_Account.Contains(keyword));
                expression = expression.Or(t => t.F_RealName.Contains(keyword));
                expression = expression.Or(t => t.F_MobilePhone.Contains(keyword));
            }
            expression = expression.And(t => t.F_Account != "admin");
            return service.IQueryable(expression).OrderBy(t => t.F_Account).ToList();
        }

        public void SubmitUserForm(UserEntity userEntity)
        {
            service.Update(userEntity);
        }

        public List<UserEntity> GetUserList(string keyword)
        {
            var expression = ExtLinq.True<UserEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_Account.Contains(keyword));
                expression = expression.Or(t => t.F_RealName.Contains(keyword));
                expression = expression.Or(t => t.F_MobilePhone.Contains(keyword));
            }
            expression = expression.And(t => t.F_EnabledMark==true);
            return service.IQueryable(expression).OrderBy(t => t.F_Account).ToList();
        }

        public UserEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.DeleteForm(keyValue);
        }
        public void SubmitForm(UserEntity userEntity, UserLogOnEntity userLogOnEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                userEntity.Modify(keyValue);
            }
            else
            {
                userEntity.Create();
                userLogOnEntity.F_ErrorNum = 0;
            }
            service.SubmitForm(userEntity, userLogOnEntity, keyValue);
        }
        public void UpdateForm(UserEntity userEntity)
        {
            service.Update(userEntity);
        }
        /// <summary>
        /// 登录判断
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public UserEntity CheckLogin(string username, string password, string sessionid)
        {
            UserEntity userEntity = service.FindEntity(t => t.F_Account == username);
            if (userEntity != null)
            {
                if (userEntity.F_EnabledMark == true)
                {
                    UserLogOnEntity userLogOnEntity = userLogOnApp.GetForm(userEntity.F_Id);
                    if (userLogOnEntity == null)
                    {
                        throw new Exception("账户未初始化设置密码,请联系管理员");
                    }
                    string dbPassword = Md5.md5(DESEncrypt.Encrypt(password.ToLower(), userLogOnEntity.F_UserSecretkey).ToLower(), 32).ToLower();
                    if (dbPassword == userLogOnEntity.F_UserPassword)
                    {
                        DateTime lastVisitTime = DateTime.Now;
                        int LogOnCount = (userLogOnEntity.F_LogOnCount).ToInt() + 1;
                        if (userLogOnEntity.F_LastVisitTime != null)
                        {
                            userLogOnEntity.F_PreviousVisitTime = userLogOnEntity.F_LastVisitTime.ToDate();
                        }
                        userLogOnEntity.F_LoginSession = sessionid;
                        userLogOnEntity.F_LastVisitTime = lastVisitTime;
                        userLogOnEntity.F_LogOnCount = LogOnCount;
                        userLogOnApp.UpdateForm(userLogOnEntity);
                        //缓存记录登录sessionId
                        CacheFactory.Cache().WriteCache(sessionid, userEntity.F_Id);
                        return userEntity;
                    }
                    else
                    {
                        if (userEntity.F_Account != "admin")
                        {
                            userLogOnEntity.F_ErrorNum = userLogOnEntity.F_ErrorNum + 1;
                            string erornum = (5 - userLogOnEntity.F_ErrorNum).ToString();
                            if (userLogOnEntity.F_ErrorNum == 5)
                            {
                                userLogOnEntity.F_ErrorNum = 0;
                                userEntity.F_EnabledMark = true;
                                userLogOnApp.UpdateForm(userEntity, userLogOnEntity);
                                throw new Exception("密码不正确，账户被系统锁定");
                            }
                            else
                            {
                                userLogOnApp.UpdateForm(userLogOnEntity);
                                throw new Exception("密码不正确，请重新输入，还有" + erornum + "次机会");
                            }
                        }
                        else
                        {
                            throw new Exception("密码不正确，请重新输入");
                        }
                    }
                }
                else
                {
                    throw new Exception("账户被系统锁定,请联系管理员");
                }
            }
            else
            {
                throw new Exception("账户不存在，请重新输入");
            }
        }

        /// <summary>
        /// 通过钉钉UserId实现用户登录
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public UserEntity CheckLoginByDingTalk(string userId)
        {
            UserEntity userEntity = service.FindEntity(t => t.F_DingTalkUserId == userId);
            if (userEntity != null)
            {
                if (userEntity.F_EnabledMark == true)
                {
                    return userEntity;
                }
                else
                {
                    throw new Exception("账户被系统锁定,请联系管理员");
                }
            }
            else
            {
                throw new Exception("账户不存在，请重新输入");
            }
        }

        /// <summary>
        /// 根据用户Id或者角色Id查询用户
        /// </summary>
        /// <param name="list"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public List<UserEntity> GetUserList(List<string> list,string type="Users")
        {
            var expression = ExtLinq.True<UserEntity>();
            expression = expression.And(t => t.F_EnabledMark == true);
            List<UserEntity> data = service.IQueryable(expression).ToList();
            List<UserEntity> users = new List<UserEntity>();
            try
            {
                if (data != null && list != null)
                {
                    if (type == "Roles")
                    {
                        foreach (string f_id in list)
                        {
                            users.AddRange(data.FindAll(delegate (UserEntity p) { return p.F_RoleId == f_id; }));
                        }
                    }
                    else
                    {
                        foreach (string f_id in list)
                        {
                            users.Add(data.Find(delegate (UserEntity p) { return p.F_Id == f_id; }));
                        }
                    }
                    return users;
                }
                else
                {
                    return null;
                }
            }
            catch(Exception ex)
            {
                return null;
            }
        }
    }
}
