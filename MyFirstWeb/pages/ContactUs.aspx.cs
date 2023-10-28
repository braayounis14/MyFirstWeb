using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Contact US";
        }

        private bool inCooldown = false;


        protected void Button1_Click (object sender, EventArgs e)
        {


            String Email = this.Txt_Email.Text;
            String Subject = this.Txt_Subject.Text;
            String Body = this.Txt_Body.Text;
         //   String file = this.Txt_file.Text;

            


            String st = "insert into [Messages] ([MessageDate],[Email],[Subject],[Body],[Read]) values (#" + DateTime.Now + "#,'"+Email+"','"+Subject+"','"+Body+"',"+false+")";
            DBFunction.ChangeTable(st,"ContactUs.accdb");
            this.lbl_Stuts.Text = "Your Message has been Sent Successfully";

            this.Txt_Email.Text = "";
            this.Txt_Subject.Text = "";
            this.Txt_Body.Text = "";


       

        }
  }
}