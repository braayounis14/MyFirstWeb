using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Check_Click(object sender, EventArgs e)
        {
            string msgtxt = "";
            User userObj = new User();
            string newpassword = this.txtPswNew.Text;
            userObj.UserPassword = this.txtPsw.Text;
            userObj.UserEmail = Session["Email"].ToString();
          
            
            if (userObj.PassCheck())
            {
                if (userObj.UpdatePassword(newpassword))
                    msgtxt = "your password has been changed succefully";
                else
                    msgtxt = "your password has not been changed, there is";
                this.lblAnswer.Visible = true;
                lblAnswer.Text = msgtxt + "";
            }
            else
            {
                msgtxt = "Your Current Password is Inncorrect";
                this.lblAnswer.Visible = true;
                lblAnswer.Text = msgtxt + "";
            }

        }
    }
}