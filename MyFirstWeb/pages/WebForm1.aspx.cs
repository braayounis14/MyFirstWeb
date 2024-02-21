using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "dsa@g.sda";
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            Session["Im"] = st;
            Response.Redirect("ProductsAllDetails.aspx");
        }
    }
}