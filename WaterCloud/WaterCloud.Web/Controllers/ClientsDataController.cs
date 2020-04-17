/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Application.SystemManage;
using WaterCloud.Code;
using WaterCloud.Entity.SystemManage;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System;
using WaterCloud.Entity;
using Newtonsoft.Json.Linq;
using WaterCloud.Application.SystemSecurity;

namespace WaterCloud.Web.Controllers
{
    [HandlerLogin]
    public class ClientsDataController : Controller
    {
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetClientsDataJson()
        {
            var data = new
            {
                dataItems = this.GetDataItemList(),
                organize = this.GetOrganizeList(),
                role = this.GetRoleList(),
                duty = this.GetDutyList(),
                user = this.GetUserList(),
                authorizeButton = this.GetMenuButtonListNew(),
            };
            return Content(data.ToJson());
        }

        private object GetQuickModuleList()
        {
            if (OperatorProvider.Provider.GetCurrent()==null)
            {
                return null;
            }
            var userId = OperatorProvider.Provider.GetCurrent().UserId;
            var data = new QuickModuleApp().GetQuickModuleList(userId);
            return data;
        }

        private object GetNoticeList()
        {
            NoticeApp noticeApp = new NoticeApp();
            var data = noticeApp.GetList("").Where(a=>a.F_EnabledMark==true).OrderByDescending(a=>a.F_CreatorTime).Take(6).ToList();
            return data;
        }

        [HttpGet]
        public ActionResult GetInitDataJson()
        {
            string data = this.GetMenuListNew();
            return Content(data);
        }
        [HttpGet]
        public ActionResult GetNoticeInfo()
        {
            var data = this.GetNoticeList();
            return Content(data.ToJson());
        }
        [HttpGet]
        public ActionResult GetQuickModule()
        {
            try
            {
                var data = this.GetQuickModuleList();
                return Content(data.ToJson());
            }
            catch (Exception)
            {
                return null;
            }
        }
        [HttpGet]
        public ActionResult GetCoutData()
        {
            var data = new ServerStateApp().GetCoutData();
            return Content(data.ToJson());
        }
        private string GetMenuListNew()
        {
            var roleId = OperatorProvider.Provider.GetCurrent().RoleId;            StringBuilder sbJson = new StringBuilder();            InitEntity init = new InitEntity();            init.homeInfo = new HomeInfoEntity();            init.logoInfo = new LogoInfoEntity();            init.menuInfo = new List<MenuInfoEntity>();            MenuInfoEntity munu = new MenuInfoEntity();            init.menuInfo.Add(munu);            munu.title = "常规管理";            munu.icon = "fa fa-address-book";            munu.href = "";            munu.target = "_self";            munu.child = new List<MenuInfoEntity>();            munu.child = ToMenuJsonNew(new RoleAuthorizeApp().GetMenuList(roleId), "0");            CreateMunu(init.menuInfo);            sbJson.Append(init.ToJson());            return sbJson.ToString() ;
        }
        /// <summary>
        /// 组件管理
        /// </summary>
        /// <param name="menuInfo"></param>
        private void CreateMunu(List<MenuInfoEntity> menuInfo)
        {

            MenuInfoEntity modelmunu = new MenuInfoEntity();            modelmunu.title = "组件管理";            modelmunu.icon = "fa fa-lemon-o";            modelmunu.href = "";            modelmunu.target = "_self";            modelmunu.child = new List<MenuInfoEntity>();
            MenuInfoEntity child1 = new MenuInfoEntity();
            child1.title = "图标列表";            child1.href = "../Content/page/icon.html";            child1.icon = "fa fa-dot-circle-o";            child1.target = "_self";
            modelmunu.child.Add(child1);
            MenuInfoEntity child2 = new MenuInfoEntity();
            child2.title = "图标选择";            child2.href = "../Content/page/icon-picker.html";            child2.icon = "fa fa-adn";            child2.target = "_self";
            modelmunu.child.Add(child2);
            MenuInfoEntity child3 = new MenuInfoEntity();
            child3.title = "颜色选择";            child3.href = "../Content/page/color-select.html";            child3.icon = "fa fa-dashboard";            child3.target = "_self";
            modelmunu.child.Add(child3);
            MenuInfoEntity child4 = new MenuInfoEntity();
            child4.title = "下拉选择";            child4.href = "../Content/page/table-select.html";            child4.icon = "fa fa-angle-double-down";            child4.target = "_self";
            modelmunu.child.Add(child4);
            MenuInfoEntity child5 = new MenuInfoEntity();
            child5.title = "文件上传";            child5.href = "../Content/page/upload.html";            child5.icon = "fa fa-arrow-up";            child5.target = "_self";
            modelmunu.child.Add(child5);
            MenuInfoEntity child6 = new MenuInfoEntity();
            child6.title = "富文本编辑器";            child6.href = "../Content/page/editor.html";            child6.icon = "fa fa-edit";            child6.target = "_self";
            modelmunu.child.Add(child6);
            MenuInfoEntity child7 = new MenuInfoEntity();
            child7.title = "省市县区选择器";            child7.href = "../Content/page/area.html";            child7.icon = "fa fa-rocket";            child7.target = "_self";
            modelmunu.child.Add(child7);
            menuInfo.Add(modelmunu);
        }

        private List<MenuInfoEntity> ToMenuJsonNew(List<ModuleEntity> data, string parentId)
        {
            List<MenuInfoEntity> list = new List<MenuInfoEntity>();
            List<ModuleEntity> entitys = data.FindAll(t => t.F_ParentId == parentId);
            if (entitys.Count > 0)
            {
                foreach (var item in entitys)
                {
                    MenuInfoEntity munu = new MenuInfoEntity();
                    munu.title = item.F_FullName;
                    munu.icon = item.F_Icon;
                    munu.href = item.F_UrlAddress;
                    munu.target = "_self";
                    if (data.FindAll(t => t.F_ParentId == item.F_Id).Count>0)
                    {
                        munu.child = new List<MenuInfoEntity>();
                        munu.child = ToMenuJsonNew(data, item.F_Id);
                    }
                    list.Add(munu);
                };
            }
            return list;
        }

        private object GetDataItemList()
        {
            var itemdata = new ItemsDetailApp().GetList();
            Dictionary<string, object> dictionaryItem = new Dictionary<string, object>();
            foreach (var item in new ItemsApp().GetList())
            {
                var dataItemList = itemdata.FindAll(t => t.F_ItemId.Equals(item.F_Id));
                Dictionary<string, string> dictionaryItemList = new Dictionary<string, string>();
                foreach (var itemList in dataItemList)
                {
                    dictionaryItemList.Add(itemList.F_ItemCode, itemList.F_ItemName);
                }
                dictionaryItem.Add(item.F_EnCode, dictionaryItemList);
            }

            return dictionaryItem;
        }
        private object GetOrganizeList()
        {
            OrganizeApp organizeApp = new OrganizeApp();
            var data = organizeApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (OrganizeEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetRoleList()
        {
            RoleApp roleApp = new RoleApp();
            var data = roleApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (RoleEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetDutyList()
        {
            DutyApp dutyApp = new DutyApp();
            var data = dutyApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (RoleEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetUserList()
        {
            UserApp userApp = new UserApp();
            var data = userApp.GetUserList("");
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (UserEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_Account,
                    fullname = item.F_RealName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }

        //private object GetMenuList()
        //{
        //    var roleId = OperatorProvider.Provider.GetCurrent().RoleId;
        //    return ToMenuJson(new RoleAuthorizeApp().GetMenuList(roleId), "0");
        //}
        //private string ToMenuJson(List<ModuleEntity> data, string parentId)
        //{
        //    StringBuilder sbJson = new StringBuilder();
        //    sbJson.Append("[");
        //    List<ModuleEntity> entitys = data.FindAll(t => t.F_ParentId == parentId);
        //    if (entitys.Count > 0)
        //    {
        //        foreach (var item in entitys)
        //        {
        //            string strJson = item.ToJson();
        //            strJson = strJson.Insert(strJson.Length - 1, ",\"ChildNodes\":" + ToMenuJson(data, item.F_Id) + "");
        //            sbJson.Append(strJson + ",");
        //        }
        //        sbJson = sbJson.Remove(sbJson.Length - 1, 1);
        //    }
        //    sbJson.Append("]");
        //    return sbJson.ToString();
        //}
        //private object GetMenuButtonList()
        //{
        //    var roleId = OperatorProvider.Provider.GetCurrent().RoleId;
        //    var data = new RoleAuthorizeApp().GetButtonList(roleId);
        //    var dataModuleId = data.Distinct(new ExtList<ModuleButtonEntity>("F_ModuleId"));
        //    Dictionary<string, object> dictionary = new Dictionary<string, object>();
        //    foreach (ModuleButtonEntity item in dataModuleId)
        //    {
        //        var buttonList = data.Where(t => t.F_ModuleId.Equals(item.F_ModuleId));
        //        dictionary.Add(item.F_ModuleId, buttonList);
        //    }
        //    return dictionary;
        //}
        private object GetMenuButtonListNew()
        {
            var roleId = OperatorProvider.Provider.GetCurrent().RoleId;
            var data = new RoleAuthorizeApp().GetButtonListNew(roleId);
            var dataModuleId = data.Distinct(new ExtList<ModuleButtonEntity>("F_ModuleId"));
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (ModuleButtonEntity item in dataModuleId)
            {
                var buttonList = data.Where(t => t.F_ModuleId.Equals(item.F_ModuleId));
                dictionary.Add(item.F_ModuleId, buttonList);
            }
            return dictionary;
        }
    }
}
