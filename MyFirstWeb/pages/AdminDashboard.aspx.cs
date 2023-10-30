using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Like.InnerText = "123";

            String st = "select * from [USERS]";
            DataTable dt = DBFunction.SelectFromTable(st, "Clients.accdb");

            Member.InnerText = dt.Rows.Count+"";
         

        }
    }
}