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
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String URL = Ultility.BuildQueryStringURL("/HomePage.aspx", Master.SearchTerm);
            Response.Redirect(URL);
        }
    }
}