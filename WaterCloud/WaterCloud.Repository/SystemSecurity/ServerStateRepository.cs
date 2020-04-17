//-----------------------------------------------------------------------
// <copyright file=" ServerState.cs" company="WaterCloud">
// * Copyright (C) WaterCloud.Framework  All Rights Reserved
// * version : 1.0
// * author  : WaterCloud.Framework
// * FileName: ServerState.cs
// * history : Created by T4 04/13/2020 11:54:49 
// </copyright>
//-----------------------------------------------------------------------
using WaterCloud.DataBase;
using WaterCloud.Entity.SystemSecurity;
using WaterCloud.Domain.IRepository.SystemSecurity;
using WaterCloud.Entity.SystemManage;

namespace WaterCloud.Repository.SystemSecurity
{
    public class ServerStateRepository : RepositoryBase<ServerStateEntity>, IServerStateRepository
    {
		public void DeleteForm(string keyValue)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                db.Delete<ServerStateEntity>(t => t.F_Id == keyValue);
                db.Commit();
            }
        }

        public object GetCoutData()
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                int usercout = db.IQueryable<UserEntity>().Count();
                int logincout = db.IQueryable<UserLogOnEntity>().Sum(a => a.F_LogOnCount) ?? 0;
                int modulecout = db.IQueryable<ModuleEntity>(a=>a.F_EnabledMark==true&&a.F_UrlAddress!=null).Count();
                int logcout = db.IQueryable<LogEntity>().Count();
                return new { usercout= usercout, logincout= logincout, modulecout= modulecout, logcout= logcout }; 
            }
        }
    }
}