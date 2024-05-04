using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MyFirstWeb.pages
{
    public partial class Privacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            string selectCommand = "SELECT * FROM [UserMessages]";
    

            selectCommand += $" WHERE [Key] = '" + st + "'";

            AccessDataSource1.SelectCommand = selectCommand;
            AccessDataSource1.DataBind();
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList2.DataKeys[e.Item.ItemIndex].ToString();
           
            Session["Key"] = st;
            string selectCommand = "SELECT * FROM [UserMessages]";
            selectCommand += " WHERE [Key] = '" + st + "'";

            DataTable dt = DBFunction.SelectFromTable(selectCommand, "DB.accdb");
            if (dt.Rows.Count > 0)
            {
                Session["Subject"] = dt.Rows[0][1].ToString();
                this.lblEmail.Text= dt.Rows[0][0].ToString();
            }
            this.DataList1.Visible = true;
            AccessDataSource1.SelectCommand = selectCommand;
            AccessDataSource1.DataBind();

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
           string Body= this.txt_send.Text;
           string Email= "admin@admin.com";
           string Subject = "";

            if (Session["Key"] != null && Body != null) {
            String st = "insert into [UserMessages] ([MessageDate],[Email],[Subject],[Key],[Body],[Read]) values (#" + DateTime.Now + "#,'" + Email + "','" + Subject + "','" + Session["Key"] + "','" + Body + "'," + false + ")";
            DBFunction.ChangeTable(st, "DB.accdb");
            }
            this.txt_send.Text = "";

       

    }
    }
}