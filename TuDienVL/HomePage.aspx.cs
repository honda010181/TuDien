using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TuDienVL
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Associate the click event from master page with the event in the child page
            Master.ButtonSearch.Click += ButtonSearch_Click;
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = Ultility.Search(Master.SearchTerm.ToString());
            lvContent.DataSource = dt;
            lvContent.DataBind();
        }

    }
}