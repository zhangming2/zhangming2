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
using System.Linq;
using System.Collections.Generic;

using WaterCloud.Code;

namespace WaterCloud.Application.SystemManage
{
    public class ItemsApp
    {
        private IItemsRepository service = new ItemsRepository();

        public List<ItemsEntity> GetList()
        {
            return service.IQueryable().ToList();
        }
        public ItemsEntity GetForm(string keyValue)
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
        public void SubmitForm(ItemsEntity itemsEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                itemsEntity.Modify(keyValue);
                service.Update(itemsEntity);
            }
            else
            {
                itemsEntity.Create();
                service.Insert(itemsEntity);
            }
        }


        public string GetModelId(string keyValue)
        {
            var expression = ExtLinq.True<ItemsEntity>();
            if (!string.IsNullOrEmpty(keyValue))
            {
                expression = expression.And(t => t.F_EnCode.Contains(keyValue));
            }
            var Itemslist = service.IQueryable(expression).OrderBy(t => t.F_Id).ToList();
            if (Itemslist.Count!=1)
            {
                throw new Exception("信息存在异常！");
            }
            return Itemslist.FirstOrDefault().F_Id;
        }
    }
}
