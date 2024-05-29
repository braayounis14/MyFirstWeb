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

            string st1 = "insert into [Users] ([MemberJoinedDate],[ID],[FullName],[Email],[Birthday],[Password],[State],[Gender],[PassQuastion],[PassAnswer]) " +
            "values (#" + DateTime.Now +"#,'" + ID+"','"+FullName+"','"+Email+"','"+Birthday+ "','" +Password+ "','" +State+ "','"+Gender+ "','"+PassQuastion+"','"+PassAnswer+"')";

            User user;
            user = new User();
            user.UserEmail = Email;
            if (user.IsExistUser()) {
               
                Response.Redirect("Login.aspx");
            }
            else
                    {
                DBFunction.ChangeTable(st1, ("DB.accdb"));
                Session["email"] = Email;
                AllCode.InnerHtml = "    <div id='card' class=\"animated fadeIn\">\r\n  <div id='upper-side'>\r\n    <?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n      <!-- Generator: Adobe Illustrator 17.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->\r\n      <!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\r\n      <svg version=\"1.1\" id=\"checkmark\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" xml:space=\"preserve\">\r\n        <path d=\"M131.583,92.152l-0.026-0.041c-0.713-1.118-2.197-1.447-3.316-0.734l-31.782,20.257l-4.74-12.65\r\n\tc-0.483-1.29-1.882-1.958-3.124-1.493l-0.045,0.017c-1.242,0.465-1.857,1.888-1.374,3.178l5.763,15.382\r\n\tc0.131,0.351,0.334,0.65,0.579,0.898c0.028,0.029,0.06,0.052,0.089,0.08c0.08,0.073,0.159,0.147,0.246,0.209\r\n\tc0.071,0.051,0.147,0.091,0.222,0.133c0.058,0.033,0.115,0.069,0.175,0.097c0.081,0.037,0.165,0.063,0.249,0.091\r\n\tc0.065,0.022,0.128,0.047,0.195,0.063c0.079,0.019,0.159,0.026,0.239,0.037c0.074,0.01,0.147,0.024,0.221,0.027\r\n\tc0.097,0.004,0.194-0.006,0.292-0.014c0.055-0.005,0.109-0.003,0.163-0.012c0.323-0.048,0.641-0.16,0.933-0.346l34.305-21.865\r\n\tC131.967,94.755,132.296,93.271,131.583,92.152z\" />\r\n        <circle fill=\"none\" stroke=\"#ffffff\" stroke-width=\"5\" stroke-miterlimit=\"10\" cx=\"109.486\" cy=\"104.353\" r=\"32.53\" />\r\n      </svg>\r\n      <h3 id='status'>\r\n      Success\r\n    </h3>\r\n  </div>\r\n  <div id='lower-side'>\r\n    <p id='message'>\r\n      Congratulations, your account has been successfully created.\r\n    </p>\r\n    <a href=\"Home1.aspx\" id=\"contBtn\">Continue</a>\r\n  </div>\r\n</div>\r\n     <div class=\"notification\">\r\n            <div class=\"notification__body\">\r\n                <img\r\n                    src=\"../Images/check-circle.svg\"\r\n                    alt=\"Success\"\r\n                    class=\"notification__icon\"\r\n                >\r\n                Your account has been created! &#128640; \r\n            </div>\r\n            <div class=\"notification__progress\"></div>\r\n        </div>";
                AllCode.Style.Value = AllCode.Style.Value + " background-color:azure;";
                ClientScript.RegisterStartupScript(this.GetType(), "redirect", "setTimeout(function(){ window.location.href = 'home1.aspx'; }, 5000);", true);
            }  
        }

     
    }
}