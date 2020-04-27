using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WaterCloud.Domain.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;

namespace WaterCloud.Application.SystemManage
{
    public class OrdershisApp
    {
        private IOrdershisRepository service = new Repository.SystemManage.OrdershisRepository();

        public List<OrdershisEntity> GetList()
        {
            return service.IQueryable().ToList();
        }
    }
}
