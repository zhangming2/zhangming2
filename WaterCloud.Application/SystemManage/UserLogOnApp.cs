/*******************************************************************************
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

namespace WaterCloud.Application.SystemManage
{
    public class UserLogOnApp
    {
        private IUserLogOnRepository service = new UserLogOnRepository();

        public UserLogOnEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void UpdateForm(UserLogOnEntity userLogOnEntity)
        {
            service.Update(userLogOnEntity);
        }
        /// <summary>
        /// 冻结更新
        /// </summary>
        /// <param name="userEntity"></param>
        /// <param name="userLogOnEntity"></param>
        public void UpdateForm(UserEntity userEntity, UserLogOnEntity userLogOnEntity)
        {
            service.ChangeForm(userEntity, userLogOnEntity);
        }
        public void RevisePassword(string userPassword,string keyValue)
        {
            UserLogOnEntity userLogOnEntity = new UserLogOnEntity();
            userLogOnEntity = service.FindEntity(keyValue);
            if (userLogOnEntity == null)
            {
                userLogOnEntity = new UserLogOnEntity();
                userLogOnEntity.F_Id = keyValue;
                userLogOnEntity.F_UserId = keyValue;
                userLogOnEntity.F_UserSecretkey = Md5.md5(Utils.CreateNo(), 16).ToLower();
                userLogOnEntity.F_UserPassword = Md5.md5(DESEncrypt.Encrypt(Md5.md5(userPassword, 32).ToLower(), userLogOnEntity.F_UserSecretkey).ToLower(), 32).ToLower();
                service.Insert(userLogOnEntity);
            }
            else
            {
                //userLogOnEntity = new UserLogOnEntity();
                //userLogOnEntity.F_Id = keyValue;
                userLogOnEntity.F_UserSecretkey = Md5.md5(Utils.CreateNo(), 16).ToLower();
                userLogOnEntity.F_UserPassword = Md5.md5(DESEncrypt.Encrypt(Md5.md5(userPassword, 32).ToLower(), userLogOnEntity.F_UserSecretkey).ToLower(), 32).ToLower();
                service.Update(userLogOnEntity);
            }
           
        }
    }
}
