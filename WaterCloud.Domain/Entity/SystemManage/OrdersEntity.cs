using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WaterCloud.Entity;

namespace WaterCloud.Domain.Entity.SystemManage
{
    [TableAttribute("Orders")]
    public class OrdersEntity : IEntity<OrdersEntity>
    {
        //[ColumnAttribute("F_Id", IsPrimaryKey = true)]
        public long id { get; set; }
        public string orderid { get; set; }
        public string sku { get; set; }
        public string batchid { get; set; }
        public string matchid { get; set; }
        public int quantity { get; set; }
        public string tolocation { get; set; }
        public string fromlocation { get; set; }
        public string orderstate { get; set; }
        public int  truequantity { get; set; }
        public int checkquantity { get; set; }
        public string downdate { get; set; }
        public string readtime { get; set; }
        public string returntime { get; set; }
        public string lighttime { get; set; }
        public string oprationtime { get; set; }
        public string oprationstate { get; set; }
        public string shopid { get; set; }
        public string classes { get; set; }
        public string goodssize { get; set; }
        public string oprationcode { get; set; }
        public string boxcode { get; set; }
        public string goodscode { get; set; }
        public string corlorcode { get; set; }
        public string sizecode { get; set; }
        public string prize { get; set; }
        public string discount { get; set; }
        public string suppliercode { get; set; }
        public string clientcode { get; set; }
        public string partcode { get; set; }
        public string barcode { get; set; }
        public string goodsname { get; set; }
        public string goodstype { get; set; }
        public string prodarea { get; set; }
        public string lotno { get; set; }
        public string tasktype { get; set; }
        public string checkuser { get; set; }
        public string prino { get; set; }
        public string wmsboxcode { get; set; }
        public string orderway { get; set; }
        public string boxweight { get; set; }
        public string clientname { get; set; }
        public string bkbarcode { get; set; }
        public string wmsorderid { get; set; }
        public string shopname { get; set; }
        public string goodsweight { get; set; }
        public string state { get; set; }
        public string warehouseid { get; set; }
        public string warehousename { get; set; }
        public string orderwayname { get; set; }
        public string workblock { get; set; }
        public string unit { get; set; }
    }
}
