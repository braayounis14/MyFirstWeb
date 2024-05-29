using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class UsersPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Sql = "select * from [USERS]";
            DataTable dt = DBFunction.SelectFromTable(Sql, "DB.accdb");
            this.Member.InnerText = ""+dt.Rows.Count;

        }



    }
}