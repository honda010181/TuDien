using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Configuration;
namespace TuDienVL.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Need to cast this to master page or include the directive in the aspx page
            Master.ButtonSearch.Click += ButtonSearch_Click;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "loginModal", "$('#loginModal').modal();", true);         
        }
        protected void btn_Login(object sender, EventArgs e)
        {
            string UserName;
            string Password;

            UserName = tbUserName.Text.ToString().Trim();
            Password = tbPassword.Text.ToString().Trim();

            //todo validate not epty string on control
            if (Membership.ValidateUser(UserName, Password))
            {
                FormsAuthentication.SetAuthCookie(UserName, false); //False option do not create persistent cookie
                Response.Redirect("Account.aspx");

            }
            else
            {
                lblMessage.Text = "Please check User Name or Password!";
                lblMessage.Visible = true;
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String URL = Ultility.BuildQueryStringURL("/HomePage.aspx", Master.SearchTerm);
            Response.Redirect(URL);
        }

        protected void btn_LoginWithFaceBook(object sender, EventArgs e)
        {
           // HyperLink1.NavigateUrl = "https://www.facebook.com/v2.4/dialog/oauth/?client_id=" + ConfigurationManager.AppSettings["FacebookAppId"] + "&redirect_uri=http://" + Request.ServerVariables["SERVER_NAME"] + ":" + Request.ServerVariables["SERVER_PORT"] + "/account/user.aspx&response_type=code&state=1";
            String URL = "https://www.facebook.com/v2.4/dialog/oauth/?client_id=" + ConfigurationManager.AppSettings["FacebookAppId"] + "&redirect_uri=http://" + Request.ServerVariables["SERVER_NAME"] + ":" + Request.ServerVariables["SERVER_PORT"] + "/user/account.aspx&response_type=code&state=1";
            Response.Redirect(URL);
        }

    }
}