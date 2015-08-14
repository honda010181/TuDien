using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
namespace TuDienVL.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                Response.Redirect("Account.aspx");
            }
            else
            { 

            }
        }


    }
}