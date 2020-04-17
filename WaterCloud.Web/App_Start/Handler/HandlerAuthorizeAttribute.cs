using WaterCloud.Application.SystemManage;
using WaterCloud.Code;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace WaterCloud.Web
{
    public class HandlerAuthorizeAttribute : ActionFilterAttribute
    {
        public bool Ignore { get; set; }
        public HandlerAuthorizeAttribute(bool ignore = true)
        {
            Ignore = ignore;
        }
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                return;
            }
            if (Ignore == false)
            {
                return;
            }
            if (!this.ActionAuthorize(filterContext))
            {
                filterContext.HttpContext.Response.Write("<script>top.location.href = '/Content/page/error.html?msg=" + "很抱歉！您的权限不足，访问被拒绝！" + "';</script>");
                return;
            }
        }
        private bool ActionAuthorize(ActionExecutingContext filterContext)
        {
            var operatorProvider = OperatorProvider.Provider.GetCurrent();
            var roleId = operatorProvider.RoleId;
            var action = HttpContext.Current.Request.ServerVariables["SCRIPT_NAME"].ToString();
            return new RoleAuthorizeApp().ActionValidate(roleId, action);
        }
    }
}