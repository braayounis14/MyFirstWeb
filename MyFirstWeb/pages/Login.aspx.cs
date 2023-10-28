using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace MyFirstWeb.pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {


            String Email = this.user_txt.Text;
            String Password = this.psw_txt.Text;



            Session["email"] = Email;
            if (Email == "admin@admin.com" && Password == "admin1212!")
                Response.Redirect("https://www.codingnepalweb.com/demos/admin-dashboard-panel-html-css-javascript/");

            String st = "select * from [USERS] where [Email]='"+Email+"' and [Password]='"+Password+"'";
            DataTable dt = DBFunction.SelectFromTable(st, "Clients.accdb");
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Home2.aspx");
            }
            else
            {
                this.Label1.Text = "<h5>Don't have an account?<a href=\"SignUp.aspx\"><span>Sign up</span></a> </h5>\r\n";
            }
                


        }




    }




}
