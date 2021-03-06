﻿/*******************************************************************************
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
using System.Web.Mvc;
using WaterCloud.Entity.SystemSecurity;
using WaterCloud.Application;
using WaterCloud.Application.SystemSecurity;
using System;

namespace WaterCloud.Web.Areas.SystemManage.Controllers
{
    public class ModuleButtonController : ControllerBase
    {
        private string moduleName = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Namespace.Split('.')[3];
        private string className = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName.Split('.')[5];
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeSelectJson(string moduleId)
        {
            var data = moduleButtonApp.GetList(moduleId);
            var treeList = new List<TreeSelectModel>();
            foreach (ModuleButtonEntity item in data)
            {
                TreeSelectModel treeModel = new TreeSelectModel();
                treeModel.id = item.F_Id;
                treeModel.text = item.F_FullName;
                treeModel.parentId = item.F_ParentId;
                treeList.Add(treeModel);
            }
            return Content(treeList.TreeSelectJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeGridJson(string moduleId)
        {
            var data = moduleButtonApp.GetList(moduleId);
            //var treeList = new List<TreeGridModel>();
            //foreach (ModuleButtonEntity item in data)
            //{
            //    TreeGridModel treeModel = new TreeGridModel();
            //    bool hasChildren = data.Count(t => t.F_ParentId == item.F_Id) == 0 ? false : true;
            //    treeModel.id = item.F_Id;
            //    treeModel.isLeaf = hasChildren;
            //    treeModel.parentId = item.F_ParentId;
            //    treeModel.expanded = hasChildren;
            //    treeModel.entityJson = item.ToJson();
            //    treeList.Add(treeModel);
            //}
            return ResultLayUiTable(data.Count, data);
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = moduleButtonApp.GetForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(ModuleButtonEntity moduleButtonEntity, string keyValue)
        {
            var module = new ModuleApp().GetList().Where(a => a.F_Layers == 1 && a.F_EnCode == moduleName).FirstOrDefault();           
            LogEntity logEntity;
            if (string.IsNullOrEmpty(keyValue))
            {
                moduleButtonEntity.F_DeleteMark = false;
                moduleButtonEntity.F_AllowEdit = false;
                moduleButtonEntity.F_AllowDelete = false;
                logEntity = new LogEntity(module.F_FullName, "按钮管理", DbLogType.Create.ToString());
                logEntity.F_Description += DbLogType.Create.ToDescription();
            }
            else
            {
                logEntity = new LogEntity(module.F_FullName, "按钮管理", DbLogType.Update.ToString());
                logEntity.F_Description += DbLogType.Update.ToDescription();
                logEntity.F_KeyValue = keyValue;
            }
            try
            {
                logEntity.F_Account = OperatorProvider.Provider.GetCurrent().UserCode;
                logEntity.F_NickName = OperatorProvider.Provider.GetCurrent().UserName;
                if (moduleButtonEntity.F_ParentId == "0")
                {
                    moduleButtonEntity.F_Layers = 1;
                }
                else
                {
                    moduleButtonEntity.F_Layers = moduleButtonApp.GetForm(moduleButtonEntity.F_ParentId).F_Layers + 1;
                }
                moduleButtonApp.SubmitForm(moduleButtonEntity, keyValue);
                logEntity.F_Description += "操作成功";
                new LogApp().WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                new LogApp().WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            var module = new ModuleApp().GetList().Where(a => a.F_Layers == 1 && a.F_EnCode == moduleName).FirstOrDefault();
            LogEntity logEntity = new LogEntity(module.F_FullName, "按钮管理", DbLogType.Delete.ToString());
            logEntity.F_Description += DbLogType.Delete.ToDescription();
            try
            {
                logEntity.F_Account = OperatorProvider.Provider.GetCurrent().UserCode;
                logEntity.F_NickName = OperatorProvider.Provider.GetCurrent().UserName;
                moduleButtonApp.DeleteForm(keyValue);
                logEntity.F_Description += "操作成功";
                new LogApp().WriteDbLog(logEntity);
                return Success("删除成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                new LogApp().WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpGet]
        public ActionResult CloneButton()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetCloneButtonTreeJson()
        {
            var moduledata = moduleApp.GetList();
            var buttondata = moduleButtonApp.GetList();
            var treeList = new List<TreeGridModel>();
            foreach (ModuleEntity item in moduledata)
            {
                TreeGridModel treeModel = new TreeGridModel();
                treeModel.id = item.F_Id;
                treeModel.title = item.F_FullName;
                treeModel.parentId = item.F_ParentId;
                treeModel.checkArr = "0";
                treeModel.disabled = true;
                //treeModel.self = item;
                treeList.Add(treeModel);
            }
            foreach (ModuleButtonEntity item in buttondata)
            {
                TreeGridModel treeModel = new TreeGridModel();
                treeModel.id = item.F_Id;
                treeModel.title = item.F_FullName;
                treeModel.parentId = item.F_ParentId == "0" ? item.F_ModuleId : item.F_ParentId;
                treeModel.checkArr = "0";
                //treeModel.self = item;
                treeList.Add(treeModel);
            }
            return ResultDTree(treeList.TreeList());
        }
        //public ActionResult GetCloneButtonTreeJson()
        //{
        //    var moduledata = moduleApp.GetList();
        //    var buttondata = moduleButtonApp.GetList();
        //    var treeList = new List<TreeViewModel>();
        //    foreach (ModuleEntity item in moduledata)
        //    {
        //        TreeViewModel tree = new TreeViewModel();
        //        bool hasChildren = moduledata.Count(t => t.F_ParentId == item.F_Id) == 0 ? false : true;
        //        tree.id = item.F_Id;
        //        tree.text = item.F_FullName;
        //        tree.value = item.F_EnCode;
        //        tree.parentId = item.F_ParentId;
        //        tree.isexpand = true;
        //        tree.complete = true;
        //        tree.hasChildren = true;
        //        treeList.Add(tree);
        //    }
        //    foreach (ModuleButtonEntity item in buttondata)
        //    {
        //        TreeViewModel tree = new TreeViewModel();
        //        bool hasChildren = buttondata.Count(t => t.F_ParentId == item.F_Id) == 0 ? false : true;
        //        tree.id = item.F_Id;
        //        tree.text = item.F_FullName;
        //        tree.value = item.F_EnCode;
        //        if (item.F_ParentId == "0")
        //        {
        //            tree.parentId = item.F_ModuleId;
        //        }
        //        else
        //        {
        //            tree.parentId = item.F_ParentId;
        //        }
        //        tree.isexpand = true;
        //        tree.complete = true;
        //        tree.showcheck = true;
        //        tree.hasChildren = hasChildren;
        //        if (item.F_Icon != "")
        //        {
        //            tree.img = item.F_Icon;
        //        }
        //        treeList.Add(tree);
        //    }
        //    return Content(treeList.TreeViewJson());
        //}
        [HttpPost]
        [HandlerAjaxOnly]
        public ActionResult SubmitCloneButton(string moduleId, string Ids)
        {
            var module = new ModuleApp().GetList().Where(a => a.F_Layers == 1 && a.F_EnCode == moduleName).FirstOrDefault();
            LogEntity logEntity= new LogEntity(module.F_FullName, "按钮管理", DbLogType.Create.ToString());
            logEntity.F_Description += DbLogType.Create.ToDescription();
            try
            {
                logEntity.F_Account = OperatorProvider.Provider.GetCurrent().UserCode;
                logEntity.F_NickName = OperatorProvider.Provider.GetCurrent().UserName;
                moduleButtonApp.SubmitCloneButton(moduleId, Ids);
                logEntity.F_Description += "克隆成功";
                new LogApp().WriteDbLog(logEntity);
                return Success("克隆成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "克隆失败，" + ex.Message;
                new LogApp().WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
    }
}
