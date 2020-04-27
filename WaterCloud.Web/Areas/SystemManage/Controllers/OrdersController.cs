using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WaterCloud.Web.Areas.SystemManage.Controllers
{
    public class OrdersController : Controller
    {
        // GET: SystemManage/Orders
        public ActionResult Index()
        {
            return View();
        }
    }
}