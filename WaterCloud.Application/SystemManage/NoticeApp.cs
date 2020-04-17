//-----------------------------------------------------------------------
// <copyright file=" Notice.cs" company="JR">
// * Copyright (C) WaterCloud.Framework  All Rights Reserved
// * version : 1.0
// * author  : WaterCloud.Framework
// * FileName: Notice.cs
// * history : Created by T4 04/13/2020 16:51:21 
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
    public class NoticeApp
    {
		private INoticeRepository service = new NoticeRepository();

		public List<NoticeEntity> GetList(string keyword)
        {
		    var expression = ExtLinq.True<NoticeEntity>();
            if (!string.IsNullOrEmpty("keyword"))
            {
                expression = expression.And(t => t.F_Title.Contains(keyword)||t.F_Content.Contains(keyword));
            }
            return service.IQueryable(expression).ToList();
        }
        public List<NoticeEntity> GetList(Pagination pagination, string keyword = "")
        {
            var expression = ExtLinq.True<NoticeEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_Title.Contains(keyword));
                expression = expression.Or(t => t.F_Content.Contains(keyword));
            }
            expression = expression.And(t => t.F_EnabledMark == true);
            return service.FindList(expression, pagination);
        }
        public NoticeEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

		public void SubmitForm(NoticeEntity entity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                entity.Modify(keyValue);
                service.Update(entity);
            }
            else
            {
                entity.Create();
                service.Insert(entity);
            }
        }

		public void DeleteForm(string keyValue)
        {
            service.DeleteForm(keyValue);
        }

    }
}