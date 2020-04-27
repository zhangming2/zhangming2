using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WaterCloud.DataBase;
using WaterCloud.Domain.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;

namespace WaterCloud.Repository.SystemManage
{
    public class OrdershisRepository : RepositoryBase<OrdershisEntity>, IOrdershisRepository
    {
    }
}
