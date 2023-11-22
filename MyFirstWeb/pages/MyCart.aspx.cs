using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["price"]=this.lblPrice.Text;
            this.lblEmail.Text = Session["Email"].ToString();
            this.label.Text = DateTime.Now.ToString();

        }
    }
}