using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class DeleteAcount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtConfirm.Visible = false;
            this.Btn_Submit.Visible = false;
        }

        protected void Btn_Check_Click1(object sender, EventArgs e)
        {
            User userObj = new User();
            userObj.UserEmail = Session["email"].ToString();
            userObj.UserPassword = this.txtPassword.Text;

            if (userObj.PassCheck())
            {
                this.txtPassword.Visible = false;
                this.txtConfirm.Visible = true;
                this.Btn_Check.Visible = false;
                this.Btn_Submit.Visible = true;
                this.lblAnswer.Text = "Type:DeleteMyAcount";
            }
            else
                this.lblAnswer.Text = "Wrong Password!";
        }


        protected void Btn_Submit_Click(object sender, EventArgs e)
        {

            if (this.txtConfirm.Text == "DeleteMyAcount") {
            User userObj = new User();
            userObj.UserPassword = this.txtPassword.Text;
            userObj.UserEmail = Session["email"].ToString();
            string sqlStr = "Delete from [USERS] where [Password]='" + userObj.UserPassword + "'and [Email]='" + userObj.UserEmail + "'";
            DBFunction.ChangeTable(sqlStr, "DB.accdb");
            this.lblAnswer.Text = "Your Acount Deleted Sucssesfully";

        }
            else
                this.lblAnswer.Text = "Type To Confirm Acount Delete";
        }


    }
}