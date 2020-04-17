//-----------------------------------------------------------------------
// <copyright file=" QuickModule.cs" company="JR">
// * Copyright (C) WaterCloud.Framework  All Rights Reserved
// * version : 1.0
// * author  : WaterCloud.Framework
// * FileName: QuickModule.cs
// * history : Created by T4 04/13/2020 16:51:13 
// </copyright>
//-----------------------------------------------------------------------
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Linq;
using WaterCloud.Code;
namespace WaterCloud.Application.SystemManage
{
    public class QuickModuleApp
    {
		private IQuickModuleRepository service = new QuickModuleRepository();

        public object GetTransferList(string userId)
        {
            return service.GetTransferList(userId);
        }

        public object GetQuickModuleList(string userId)
        {
            return service.GetQuickModuleList(userId);
        }

        public void SubmitForm(string[] permissionIds)
        {
            List<QuickModuleEntity> list = new List<QuickModuleEntity>();
            foreach (var itemId in permissionIds)
            {
                QuickModuleEntity entity = new QuickModuleEntity();
                entity.Create();
                entity.F_ModuleId = itemId;
                entity.F_EnabledMark = true;
                entity.F_DeleteMark = false;
                list.Add(entity);
            }
            service.SubmitForm(list);
        }

    }
}