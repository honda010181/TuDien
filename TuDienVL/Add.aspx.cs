using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuDienVL
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Need to cast this to master page or include the directive in the aspx page
            if (Request.IsAuthenticated == false)
            {
                Response.Redirect("/User/Login.aspx");
            }
            Master.ButtonSearch.Click += ButtonSearch_Click;
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String URL = Ultility.BuildQueryStringURL("/HomePage.aspx", Master.SearchTerm);
            Response.Redirect(URL);
        }


        protected void btn_add(object sender, EventArgs e)
        { 
        
        }
    }
}