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
            String SearchTerm;
            String QueryString;
            QueryString = Page.ClientQueryString;

            //If the query string is not empty that means this page was navigated from another page
            if (QueryString.Equals("")== false )
            {
                SearchTerm = Request.QueryString.Get(0);
                //need a set method
                Master.SearchTerm = SearchTerm;
                Search();
            }

            //Associate the click event from master page with the event in the child page
            Master.ButtonSearch.Click += ButtonSearch_Click;
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Search();
        }

        protected void Search()
        {   
            DataTable dt = new DataTable();
            dt = Ultility.Search(Master.SearchTerm.ToString());
            lvContent.DataSource = dt;
            lvContent.DataBind();
        }



    }
}