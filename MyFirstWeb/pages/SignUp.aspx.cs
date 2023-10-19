using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace MyFirstWeb.pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Btn_Click(object sender, EventArgs e)
        {
            String ID = this.txtDate.Text;
            String FullName = this.user_txt.Text;
            String Email = this.email_txt.Text;
            String Birthday = this.txtDate.Text;
            String Password = this.psw.Text;
            String State = this.DpCountry.Text;
            String Gender = this.DpGender.Text;
            String PassQuastion = this.DPPassQuastion.Text;
            String PassAnswr = this.PassQuastionAnswer.Text;

            string st = "insert into [Users] ([FirstName],[FirstName],[FirstName],[FirstName],[FirstName],[FirstName],[FirstName],[FirstName],";
            Response.Redirect("home.aspx");
        }

     
    }
}