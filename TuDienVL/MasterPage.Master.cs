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
        }
        public ContentPlaceHolder UserPanel
        {
            get
            {
                return UserMangementPanel;
            }
        }
    }
}