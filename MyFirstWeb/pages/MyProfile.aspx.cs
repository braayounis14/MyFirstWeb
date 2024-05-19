using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["Email"] = "dsa@g.dsa";
                this.txt_PassAnswer.Text = InfoByEmailSession("PassAnswer");
                this.Txt_FullName.Text = InfoByEmailSession("FullName");
                this.Txt_Email.Text = InfoByEmailSession("Email");
                this.DpCountry.SelectedIndex = FindIndex(this.DpCountry, InfoByEmailSession("State"));
                this.DpPassQuestion.SelectedIndex = FindIndex(this.DpPassQuestion, InfoByEmailSession("PassQuastion"));

            }

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {


            User userObj = new User();
            userObj.UserEmail = Session["Email"].ToString();

             if (userObj.UpdateInfo(this.Txt_FullName.Text, this.Txt_Email.Text, this.DpCountry.SelectedValue.ToString(), this.DpPassQuestion.SelectedValue.ToString(), this.txt_PassAnswer.Text))
            {
                this.notfi.Visible = true;
            }


        }

 

        public int FindIndex(DropDownList dropDownList,string value)
        {
               ListItem item = dropDownList.Items.Cast<ListItem>().FirstOrDefault(x => x.Text == value);
               return item != null ? dropDownList.Items.IndexOf(item) : -1;
        }

        public string InfoByEmailSession(string table)
         {
            // it checks if the user is exist at the Database, and returns true if exist and false if not exist /

            string st = "select " + table + " from [USERS] where [Email]='" + Session["email"].ToString() + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            if (dt.Rows.Count > 0)
                return dt.Rows[0][0].ToString();
            return "";

        }

        protected void Btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home1.aspx");
        }
    }
}