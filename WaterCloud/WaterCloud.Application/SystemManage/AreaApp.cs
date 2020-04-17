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
    public class AreaApp
    {
        private IAreaRepository service = new AreaRepository();

        public List<AreaEntity> GetList()
        {
            return service.IQueryable().ToList();
        }
        public AreaEntity GetForm(string keyValue)
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
        public void SubmitForm(AreaEntity mEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                mEntity.Modify(keyValue);
                service.Update(mEntity);
            }
            else
            {
                mEntity.Create();
                service.Insert(mEntity);
            }
        }
    }
}
