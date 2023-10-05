using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace MyFirstWeb.pages
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        
        }

        protected void SignUp_Btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
         
        }


    }
}