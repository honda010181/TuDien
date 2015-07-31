using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace TuDienVL.User
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Master.UserPanel.Visible = true;
        }


        protected void btn_register(object sender, EventArgs e) 
        {
            //string() lbUserName = new string();
            string userName;
            userName = tbUserName.Text.ToString();

            Membership.FindUsersByName(userName);
            Roles.AddUserToRole(userName, "User");
        }
    }
}