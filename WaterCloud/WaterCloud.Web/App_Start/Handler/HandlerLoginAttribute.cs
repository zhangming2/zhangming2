using WaterCloud.Code;
using System.Web.Mvc;
using System.Web;
using System.Text;
using WaterCloud.Application.SystemManage;

namespace WaterCloud.Web
{
    public class HandlerLoginAttribute : AuthorizeAttribute
    {
        public bool Ignore = true;
        public HandlerLoginAttribute(bool ignore = true)
        {
            Ignore = ignore;
        }
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if (Ignore == false)
            {
                return;
            }
            if (OperatorProvider.Provider.GetCurrent() == null)
            {
                WebHelper.WriteCookie("WaterCloud_login_error", "overdue");
                filterContext.HttpContext.Response.Write("<script>top.location.href = '/Content/page/error.html?msg=" + "系统登录已超时，请重新登录！" + "';</script>");
                return;
            }
            //登录唯一检测
            else if (!this.LoginAuthorize(filterContext))
            {
                //管理员跳过检测
                if (OperatorProvider.Provider.GetCurrent().IsSystem)
                {
                    return;
                }
                HttpContext.Current.Session.Abandon();
                HttpContext.Current.Session.Clear();
                OperatorProvider.Provider.RemoveCurrent();
                filterContext.HttpContext.Response.Write("<script>top.location.href = '/Content/page/error.html?msg="+"账号已在其它地方登录，请重新登录！"+"';</script>");
                return;
            }
            //角色检测
            if (!this.RoleAuthorize())
            {
                filterContext.HttpContext.Response.Write("<script>top.location.href = '/Content/page/error.html?msg=" + "很抱歉！您的权限不足，访问被拒绝！" + "';</script>");
                return;
            }
        }
        private bool LoginAuthorize(AuthorizationContext filterContext)
        {
            var operatorProvider = OperatorProvider.Provider.GetCurrent();
            var userId = operatorProvider.UserId;
            var sessionId = operatorProvider.SessionId;
            //验证缓存用户sessionId
            return CacheFactory.Cache().GetCache<string>(userId) == sessionId;
        }
        private bool RoleAuthorize()
        {
            var operatorProvider = OperatorProvider.Provider.GetCurrent();
            var roleId = operatorProvider.RoleId;
            return new RoleAuthorizeApp().RoleValidate(roleId);
        }
    }
}