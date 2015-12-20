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

            //IsPostBack property can be used here to distinguish whether the page is being naviagted to from another page
            //or it's is a postback. If it is a postback that means the search button has been clicked, so checking the query is not needed.

 
            if (!IsPostBack)
            {
                //If the query string is not empty that means this page was navigated from another page
                if (QueryString.Equals("") == false)
                {
                    SearchTerm = Request.QueryString.Get(0);
                    Master.SearchTerm = SearchTerm;

                    //store the SearchTerm in a session then redirect ot itself without the query string
                    this.Session["SearchTerm"] = SearchTerm;
                    Response.Redirect("/HomePage.aspx");
                }
                else if (this.Session["SearchTerm"] != null)
                {
                    //Perform search here.
                    Search(this.Session["SearchTerm"].ToString());
                    this.Session["SearchTerm"] = null;
                }

            }
            else
            {
                //Associate the click event from master page with the event in the child page
                Master.ButtonSearch.Click += ButtonSearch_Click;
            }
 


        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Search(Master.SearchTerm.ToString());
        }

        protected void Search(String SearchTerm)
        {   
            DataTable dt = new DataTable();
            dt = Ultility.Search(SearchTerm);
            lvContent.DataSource = dt;
            lvContent.DataBind();

        }
        


    }
}