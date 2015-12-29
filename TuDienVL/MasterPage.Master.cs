using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuDienVL
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
               
            }
            ScriptManager1.RegisterAsyncPostBackControl(btnSearch);

        }

        //The child page will used this property to reference the button on the master page
        public Button ButtonSearch
        {
            get
            {
                return btnSearch;
            }
        }
        public String SearchTerm
        {
            get
            {
                return tbSearch.Text;
            }
            set
            {
                tbSearch.Text = value;
            }
        }
        public ContentPlaceHolder UserPanel
        {
            get
            {
                return Body;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (Body.FindControl("upMain") != null )
            {
                ((UpdatePanel)Body.FindControl("upMain")).Update();
            }

        }


    }
}