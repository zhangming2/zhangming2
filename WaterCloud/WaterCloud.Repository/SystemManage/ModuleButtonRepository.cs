/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.DataBase;
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Repository.SystemManage;
using System.Collections.Generic;

namespace WaterCloud.Repository.SystemManage
{
    public class ModuleButtonRepository : RepositoryBase<ModuleButtonEntity>, IModuleButtonRepository
    {
        public List<ModuleButtonEntity> GetListNew(string moduleId)
        {
            using (var db = new RepositoryBase())
            {
                var query = db.IQueryable<ModuleButtonEntity>()
                    .InnerJoin<ModuleEntity>((a, b) => a.F_ModuleId == b.F_Id)
                    .Select((a, b) => new ModuleButtonEntity { 
                    F_Id=a.F_Id,
                    F_AllowDelete=a.F_AllowDelete,
                    F_AllowEdit=a.F_AllowEdit,
                    F_UrlAddress=a.F_UrlAddress,
                    F_CreatorTime=a.F_CreatorTime,
                    F_CreatorUserId=a.F_CreatorUserId,
                    F_DeleteMark=a.F_DeleteMark,
                    F_DeleteTime=a.F_DeleteTime,
                    F_DeleteUserId=a.F_DeleteUserId,
                    F_Description=a.F_Description,
                    F_EnabledMark=a.F_EnabledMark,
                    F_EnCode=a.F_EnCode,
                    F_FullName=a.F_FullName,
                    F_Icon=a.F_Icon,
                    F_IsPublic=a.F_IsPublic,
                    F_JsEvent=a.F_JsEvent,
                    F_LastModifyTime=a.F_LastModifyTime,
                    F_LastModifyUserId=a.F_LastModifyUserId,
                    F_Layers=a.F_Layers,
                    F_Location=a.F_Location,
                    F_ModuleId=b.F_UrlAddress,
                    F_ParentId=a.F_ParentId,
                    F_SortCode=a.F_SortCode,
                    F_Split=a.F_Split,                                        
                    });
                if (!string.IsNullOrEmpty(moduleId))
                {
                    query = query.Where(a => a.F_ModuleId == moduleId);
                }
                return query.OrderBy(a=>a.F_SortCode).ToList();
            }
        }

        public void SubmitCloneButton(List<ModuleButtonEntity> entitys)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                db.Insert(entitys);
                db.Commit();
            }
        }
    }
}
