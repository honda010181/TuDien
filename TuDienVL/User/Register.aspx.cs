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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Master.UserPanel.Visible = true;
           Master.ButtonSearch.Click += ButtonSearch_Click;
           ScriptManager.RegisterStartupScript(Page, Page.GetType(), "registerModal", "$('#registerModal').modal();", true);
        }


        protected void Page_PreRender(object sender, EventArgs e)
        {
            //Master.ButtonSearch.Click += test;
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String URL = Ultility.BuildQueryStringURL("/HomePage.aspx", Master.SearchTerm);

            Response.Redirect(URL);
        }


        protected void btn_register(object sender, EventArgs e) 
        {
            try
            {
                //string() lbUserName = new string();
                string userName;
                string passWord;
                string email;
                DataSet ds = new DataSet();
                MembershipUserCollection ExistingUser = new MembershipUserCollection();
                MembershipUserCollection ExistingUser11 = new MembershipUserCollection();
                MembershipUserCollection getallusers = new MembershipUserCollection();
                userName = tbUserName.Text.ToString().Trim();
                passWord = tbPassword.Text.ToString().Trim();
                email = tbEmail.Text.ToString().Trim();
                lbErrorMessage.Visible = false;
                ExistingUser = Membership.FindUsersByEmail(email);

                if (ExistingUser.Count != 0)
                {
                    lbErrorMessage.Text = "Email already exists";
                    lbErrorMessage.Visible = true;
                    return;

                }
                ExistingUser11 = Membership.FindUsersByName(userName);

                if (ExistingUser11.Count != 0)
                {
                    lbErrorMessage.Text = "User name already exists";
                    lbErrorMessage.Visible = true;
                    return;

                }

                Membership.CreateUser(userName, passWord, email);

                Roles.AddUserToRole(userName, "User");
 
                Response.Redirect("Welcome.aspx");
                //todo should redirect at this point to a result page and tell them to click here to log in
            }
            catch(Exception ex)
            {
                lbErrorMessage.Text = "Xin lỗi chúng tôi không thể đăng kí bạn vào lúc này. Xin liên hệ admin tại honda010181@yahoo.com ";
                lbErrorMessage.Visible = true;
                return;
            }


        }
    }
}