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

namespace WaterCloud.Repository.SystemManage
{
    public class UserLogOnRepository : RepositoryBase<UserLogOnEntity>, IUserLogOnRepository
    {
        public void ChangeForm(UserEntity userEntity, UserLogOnEntity userLogOnEntity)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                db.Update(userEntity);
                db.Update(userLogOnEntity);
                db.Commit();
            }
        }
    }
}
