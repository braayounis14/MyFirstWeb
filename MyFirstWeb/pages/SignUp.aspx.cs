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

            String ID = this.TxtID.Text;
            String FullName = this.user_txt.Text;
            String Email = this.email_txt.Text;
            String Birthday = this.txtDate.Text;
            String Password = this.psw.Text;
            String State = this.DpCountry.Text;
            String Gender = this.DpGender.Text;
            String PassQuastion = this.DPPassQuastion.Text;
            String PassAnswer = this.PassQuastionAnswer.Text;

            string st1 = "insert into [Users] ([MemberJoinedDate],[ID],[FullName],[Email],[Birthday],[Password],[State],[Gender],[PassQuastion],[PassAnswer]) values (#" + DateTime.Now +"#,'" + ID+"','"+FullName+"','"+Email+"','"+Birthday+ "','" +Password+ "','" +State+ "','"+Gender+ "','"+PassQuastion+"','"+PassAnswer+"')";

            User user;
            user = new User();
            user.UserEmail = Email;
            if (user.IsExistUser())
                Response.Redirect("Login.aspx");
            else
                    {
                DBFunction.ChangeTable(st1, ("DB.accdb"));
                        Response.Redirect("home1.aspx");
                    }

            
        }

     
    }
}