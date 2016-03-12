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
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "addModal", "$('#addModal').modal();", true);
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String URL = Ultility.BuildQueryStringURL("/HomePage.aspx", Master.SearchTerm);
            Response.Redirect(URL);
        }


        protected void btn_add(object sender, EventArgs e)
        {
            String Word;
            String Defintion;
            String Example;
            String UserName;

            Word = tbWord.Text.ToString().Trim();
            Defintion = tbDefinition.Text.ToString().Trim();
            Example = tbExample.Text.ToString().Trim();
            UserName = User.Identity.Name.ToString();
            if (Ultility.SaveWord(Word, Defintion, Example, UserName))
            {
                lbErrorMessage.Text = "Bạn đã thành công đăng kí từ này.";

            }
            else
            {
                lbErrorMessage.Text = "Từ nay chua được đăng kí.";
            }
        }
    }
}