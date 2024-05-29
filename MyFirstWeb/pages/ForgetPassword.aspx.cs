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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtAnswer.Visible = false;
            this.Btn_Submit.Visible = false;
        }

        protected void Btn_Check_Click1(object sender, EventArgs e)
        {
            User userObj = new User();
            userObj.UserEmail = this.txtEmail.Text;
            string Question = userObj.QuestionRecovery();
            if (Question.Length > 0)
            {
                this.txtEmail.Visible = false;
                this.txtAnswer.Visible = true;
                this.Btn_Check.Visible = false;
                this.Btn_Submit.Visible = true;
                this.lblAnswer.Text = Question;
            }
            else
                this.lblAnswer.Text = "NOT REGISTERED EMAIL!";
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            User userObj = new User();
            userObj.UserEmail = this.txtEmail.Text;
            userObj.UserPasswordAnswer = this.txtAnswer.Text;
            string userPass = userObj.PassRecovery();

            if (userPass.Length == 0)
            
                this.lblAnswer.Text = "wrong data or not registered !!!";
            else

                    this.lblAnswer.Text = "your password is:<b> " + userPass + " <br/> ";
        }


    }
}