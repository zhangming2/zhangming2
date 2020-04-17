/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace WaterCloud.Application.SystemManage
{
    public class OrganizeApp
    {
        private IOrganizeRepository service = new OrganizeRepository();

        public List<OrganizeEntity> GetList()
        {
            return service.IQueryable().OrderBy(t => t.F_CreatorTime).ToList();
        }
        public OrganizeEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            if (service.IQueryable(t => t.F_ParentId.Equals(keyValue)).Count() > 0)
            {
                throw new Exception("删除失败！操作的对象包含了下级数据。");
            }
            else
            {
                service.Delete(t => t.F_Id == keyValue);
            }
        }
        public void SubmitForm(OrganizeEntity organizeEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                organizeEntity.Modify(keyValue);
                service.Update(organizeEntity);
            }
            else
            {
                organizeEntity.Create();
                service.Insert(organizeEntity);
            }
        }
    }
}
