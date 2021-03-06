﻿/*******************************************************************************
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
using System.Data.Common;
using System.Data.SqlClient;
using System.Text;
using Chloe;

namespace WaterCloud.Repository.SystemManage
{
    public class ItemsDetailRepository : RepositoryBase<ItemsDetailEntity>, IItemsDetailRepository
    {
        public List<ItemsDetailEntity> GetItemList(string enCode)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@"SELECT  d.*
                            FROM    Sys_ItemsDetail d
                                    INNER  JOIN Sys_Items i ON i.F_Id = d.F_ItemId
                            WHERE   1 = 1
                                    AND i.F_EnCode = @enCode
                                    AND d.F_EnabledMark = 1
                                    AND d.F_DeleteMark = 0
                            ORDER BY d.F_SortCode ASC");
            DbParam[] parameter = 
            {
                 new DbParam("@enCode",enCode)
            };
            return this.FindList(strSql.ToString(), parameter);
        }
    }
}
