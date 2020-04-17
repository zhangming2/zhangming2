/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Code;
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Domain.ViewModel;
using WaterCloud.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace WaterCloud.Application.SystemManage
{
    public class RoleAuthorizeApp
    {
        private IRoleRepository roleservice = new RoleRepository();
        private IRoleAuthorizeRepository service = new RoleAuthorizeRepository();
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();

        public List<RoleAuthorizeEntity> GetList(string ObjectId)
        {
            return service.IQueryable(t => t.F_ObjectId == ObjectId).ToList();
        }
        public List<ModuleEntity> GetMenuList(string roleId)
        {
            var data = new List<ModuleEntity>();
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                data = moduleApp.GetList();
            }
            else
            {
                var moduledata = moduleApp.GetList();
                var role = roleservice.FindEntity(roleId);
                if (role==null||role.F_EnabledMark==false)
                {
                    return data;
                }
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId && t.F_ItemType == 1).ToList();
                foreach (var item in authorizedata)
                {
                    ModuleEntity moduleEntity = moduledata.Find(t => t.F_Id == item.F_ItemId);
                    if (moduleEntity != null)
                    {
                        data.Add(moduleEntity);
                    }
                }
            }
            return data.OrderBy(t => t.F_SortCode).ToList();
        }
        public List<ModuleButtonEntity> GetButtonList(string roleId)
        {
            var data = new List<ModuleButtonEntity>();
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                data = moduleButtonApp.GetList();
            }
            else
            {
                var buttondata = moduleButtonApp.GetList();
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId && t.F_ItemType == 2).ToList();
                foreach (var item in authorizedata)
                {
                    ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                    if (moduleButtonEntity != null)
                    {
                        data.Add(moduleButtonEntity);
                    }
                }
            }
            return data.OrderBy(t => t.F_SortCode).ToList();
        }
        public List<ModuleButtonEntity> GetButtonListNew(string roleId)
        {
            var data = new List<ModuleButtonEntity>();
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                data = moduleButtonApp.GetListNew();
            }
            else
            {
                var buttondata = moduleButtonApp.GetListNew();
                var role = roleservice.FindEntity(roleId);
                if (role == null || role.F_EnabledMark == false)
                {
                    return data;
                }
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId && t.F_ItemType == 2).ToList();
                foreach (var item in authorizedata)
                {
                    ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                    if (moduleButtonEntity != null)
                    {
                        data.Add(moduleButtonEntity);
                    }
                }
            }
            return data.OrderBy(t => t.F_SortCode).ToList();
        }
        public bool ActionValidate(string roleId, string action)
        {
            var authorizeurldata = new List<AuthorizeActionModel>();
            var cachedata = CacheFactory.Cache().GetCache<List<AuthorizeActionModel>>("authorizeurldata_" + roleId);
            if (cachedata == null)
            {
                var moduledata = moduleApp.GetList();
                var buttondata = moduleButtonApp.GetList();
                var role = roleservice.FindEntity(roleId);
                if (role != null && role.F_EnabledMark != false)
                {
                    var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId).ToList();
                    foreach (var item in authorizedata)
                    {
                        try
                        {
                            if (item.F_ItemType == 1)
                            {
                                ModuleEntity moduleEntity = moduledata.Find(t => t.F_Id == item.F_ItemId);
                                authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleEntity.F_Id, F_UrlAddress = moduleEntity.F_UrlAddress });
                            }
                            else if (item.F_ItemType == 2)
                            {
                                ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                                authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleButtonEntity.F_ModuleId, F_UrlAddress = moduleButtonEntity.F_UrlAddress });
                            }
                        }
                        catch (Exception ex)
                        {
                            string e = ex.Message;
                            continue;
                        }
                    }
                    CacheFactory.Cache().WriteCache(authorizeurldata, "authorizeurldata_" + roleId, DateTime.Now.AddMinutes(5));
                }
            }
            else
            {
                authorizeurldata = cachedata;
            }
            var module = authorizeurldata.Find(t => t.F_UrlAddress==action);
            if (module!=null)
            {
                return true;
            }
            return false;
        }
        public bool RoleValidate(string roleId)
        {
            var authorizeurldata = new List<AuthorizeActionModel>();
            var cachedata = CacheFactory.Cache().GetCache<List<AuthorizeActionModel>>("authorizeurldata_" + roleId);
            if (cachedata == null)
            {
                var moduledata = moduleApp.GetList();
                var buttondata = moduleButtonApp.GetList();
                var role = roleservice.FindEntity(roleId);
                if (role != null && role.F_EnabledMark != false)
                {
                    var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId).ToList();
                    foreach (var item in authorizedata)
                    {
                        try
                        {
                            if (item.F_ItemType == 1)
                            {
                                ModuleEntity moduleEntity = moduledata.Find(t => t.F_Id == item.F_ItemId);
                                authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleEntity.F_Id, F_UrlAddress = moduleEntity.F_UrlAddress });
                            }
                            else if (item.F_ItemType == 2)
                            {
                                ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                                authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleButtonEntity.F_ModuleId, F_UrlAddress = moduleButtonEntity.F_UrlAddress });
                            }
                        }
                        catch (Exception ex)
                        {
                            string e = ex.Message;
                            continue;
                        }
                    }
                    CacheFactory.Cache().WriteCache(authorizeurldata, "authorizeurldata_" + roleId, DateTime.Now.AddHours(1));
                }               
            }
            else
            {
                authorizeurldata = cachedata;
            }            
            if (authorizeurldata != null)
            {
                return true;
            }
            return false;
        }
    }
}
