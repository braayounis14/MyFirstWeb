using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class ClientContact : System.Web.UI.Page
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

        public string FindUserInfo(string key, string field)
        {
            string selectCommand = "SELECT * FROM [UserMessages] WHERE [Key] = '" + key + "' AND [Email] <> 'admin@admin.com'";
            DataTable dt = DBFunction.SelectFromTable(selectCommand, "DB.accdb");


            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][field].ToString();
            }

            return null; // Email not found
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

                string email = FindUserInfo(st, "Email");
                User userObj = new User();
                userObj.UserEmail = email;

                this.lblEmail.Text = email;
                this.lblSubject.Text = FindUserInfo(st, "Subject");
                this.lblDate.Text = FindMassageDate(st);
                if (!userObj.IsExistUser()) { 
                this.lblStatus1.InnerText = "Sender Email is not Registerd You Should Contact Him from Gmail!!";
                    this.txt_send.Enabled = false;
                    this.BtnSend.Enabled = false;
                }
                else {
                    this.lblStatus1.InnerText = "";
                    this.lblUserName.InnerText = userObj.GetInfoByEmail("FullName");
                    this.txt_send.Enabled = true;
                    this.BtnSend.Enabled = true;
                }
            }

            AccessDataSource1.SelectCommand = selectCommand;
            AccessDataSource1.DataBind();

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txt_send.Text))
            {
                // stop the function
                return;
            }

            string Email = "admin@admin.com";
            string Subject = Session["Subject"].ToString().Replace("'", "''");
            string Body = this.txt_send.Text.Replace("'", "''");

            if (Session["Key"] != null && Body != null)
            {
                String st = "insert into [UserMessages] ([MessageDate],[Email],[Subject],[Key],[Body],[Read]) values (#" + DateTime.Now + "#,'" + Email + "','" + Subject + "','" + Session["Key"] + "','" + Body + "'," + false + ")";
                DBFunction.ChangeTable(st, "DB.accdb");
            }
            this.txt_send.Text = "";

        }

        protected void DeleteChatBtn_Click(object sender, EventArgs e)
        {

            if (Session["Key"] != null && !string.IsNullOrEmpty(Session["Key"].ToString()))
            {
                string key = Session["Key"].ToString();
                string deleteQuery = "DELETE FROM [UserMessages] WHERE [Key] = '" + key + "'";
                DBFunction.ChangeTable(deleteQuery, "DB.accdb");
            }

        }

   }
}