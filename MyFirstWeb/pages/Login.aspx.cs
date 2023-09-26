using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string targetPageUrl = "home.aspx"; // Change this to the URL of the page you want to navigate to

            string username = user_txt.Text;
            string password = psw_txt.Text;

            if (username.Length != 0 && password.Length >= 8) // Changed || to &&
            {
                if (username == "admin" && password == "password")
                {
                    // The user's credentials are valid
                    // Redirect the user to the main page of the application
                    Response.Redirect(targetPageUrl);
                }
                else
                {
                    // The user's credentials are invalid
                    // Display an error message
                    Response.Redirect("test.aspx");
                }
            }
            else
            {
                // Short password
                string script = "alert('Password should be at least 8 characters long.');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerMessage", script, true);


            }
        }

        
    }




}
