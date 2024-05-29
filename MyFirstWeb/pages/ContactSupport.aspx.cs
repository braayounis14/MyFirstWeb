using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class ContactSupport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            string selectCommand = "SELECT * FROM [UserMessages]";

            selectCommand += $" WHERE [Key] = '" + st + "' ";

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
                this.lblEmail.Text = Session["email"].ToString();
                this.lblSubject.Text = Session["Subject"].ToString();
                this.lblDate.Text = FindMassageDate(st);
                this.lblUserName.InnerText = "newegghelpteam.il@gmail.com";
            }

            AccessDataSource1.SelectCommand = selectCommand;
            AccessDataSource1.DataBind();

        }


        public string FindMassageDate(string key)
        {
            string selectCommand = "SELECT MessageDate FROM [UserMessages] WHERE [Key] = '" + key + "' ORDER BY MessageDate DESC";
            DataTable dt = DBFunction.SelectFromTable(selectCommand, "DB.accdb");


            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["MessageDate"].ToString();
            }

            return null; // Email not found
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txt_send.Text))
            {
                // stop the function
                return;
            }

            string Email = Session["email"].ToString();
            string Subject = Session["Subject"].ToString().Replace("'", "''");
            string Body = this.txt_send.Text.Replace("'", "''");

            if (Session["Key"] != null && Body != null)
            {
                string st = "insert into [UserMessages] ([MessageDate],[Email],[Subject],[Key],[Body],[Read]) values" +
                    " (#" + DateTime.Now + "#,'" + Email + "','" + Subject + "','" + Session["Key"] + "','" + Body + "'," + false + ")";
                DBFunction.ChangeTable(st, "DB.accdb");
            }
            this.txt_send.Text = "";

        }


    }
}