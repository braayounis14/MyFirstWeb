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



            
            if (Email == "admin@admin.com" && Password == "admin1212")
            {
                Session["email"] = Email;
                Response.Redirect("AdminDashboard.aspx");
            }
              

            String st = "select * from [USERS] where [Email]='"+Email+"' and [Password]='"+Password+"'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            if (dt.Rows.Count > 0)
            {
                Session["email"] = Email;
                Response.Redirect("Home1.aspx");
            }
            else
            {
                this.Label1.Text = "<h5>Forget Your Password?<a href=\"ForgetPassword.aspx\"><span>Forget Password</span></a> </h5>\r\n";
            }
                


        }




    }




}
