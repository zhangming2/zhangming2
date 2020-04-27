using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WaterCloud.Domain.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;

namespace WaterCloud.Application.SystemManage
{
    public class OrdersApp
    {
        private IOrdersRepository service = new Repository.SystemManage.OrdersRepository();

        public List<OrdersEntity> GetList()
        {
            return service.IQueryable().ToList();
        }
    }
}
