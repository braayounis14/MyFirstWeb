using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyFirstWeb.pages
{
    public partial class RestPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtConfirm.Visible= false;
            txtPassword.Visible= false; 
            Btn_Submit.Visible= false;
        }

        protected void Btn_Check_Click1(object sender, EventArgs e)
        {
            string AuthCode = this.txtauth.Text;
            string token = Request.QueryString["token"];
            string query = "SELECT * FROM RestPassword where ([resetToken] = '" + token + "')";
            DataTable dt = DBFunction.SelectFromTable(query, "DB.accdb");
            string realAuth = dt.Rows[0][3].ToString();

            if (AuthCode.Equals(realAuth))
            {
                this.txtPassword.Visible = true;
                this.txtConfirm.Visible = true;
                this.Btn_Submit.Visible = true;
                this.Btn_Check.Visible = false;
                this.txtauth.Visible = false;
            }
            else
            {

            }
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {

            // Retrieve the token from the URL
            string token = Request.QueryString["token"];

            // Validate the token (pseudo-code)
            if (IsValidToken(token))
            {
                // Token is valid, update the user's password
                string newPassword = txtPassword.Text;
                UpdatePassword(token, newPassword);

                // Notify the user
                SendConfirmationEmail(token);

                // Display success message
                lblStatus.Text = "Your password has been successfully reset.";
                lblStatus.Visible = true;
            }
            else
            {
                // Token is invalid or expired, display an error message
                lblStatus.Text = "Invalid or expired token.";
                lblStatus.Visible = true;
            }

        }



        private bool IsValidToken(string token)

        {
            // Retrieve the token and its expiration time from your database
            // For demonstration purposes, let's assume you have a method to retrieve this information
            string storedToken = GetStoredTokenFromDatabase(token, out DateTime expirationTime);

            // Check if the token exists and is not null
            if (storedToken != null)
            {
                // Check if the token matches the stored token
                if (token.Equals(storedToken, StringComparison.Ordinal))
                {
                    // Check if the token has not expired
                    string now = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
                    DateTime nowDate = DateTime.Parse(now);
                    if (nowDate <= expirationTime)
                    {
                        // Token is valid
                        return true;
                    }


                }
            }

            // Token is invalid or expired
            return false;
        }



        private void UpdatePassword(string token, string newPassword)
        {
            // Implement password update logic here
            string email = "";
            email = GetUserEmailFromToken(token);
            User userObj = new User();
            userObj.UserEmail = email;
            userObj.UpdatePassword(newPassword);


        }



        // Method to send confirmation email to the user
        private void SendConfirmationEmail(string token)
        {
            // Implement email sending logic here

            // Retrieve the user's email address associated with the token from the database
            string userEmail = GetUserEmailFromToken(token);

            if (!string.IsNullOrEmpty(userEmail))
            {
                // Compose the email message
                string subject = "Password Reset Confirmation";
                string body = "Your password has been successfully reset.";

                // Configure SMTP client (using Gmail SMTP server as an example)
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential("newegghelpteam.il@gmail.com", "ufdhczmsizipvvpk");

                // Create the email message
                MailMessage mailMessage = new MailMessage("newegghelpteam.il@gmail.com", userEmail);
                mailMessage.Subject = subject;
                mailMessage.Body = body;

                try
                {
                    // Send the email
                    smtpClient.Send(mailMessage);
                    Console.WriteLine("Confirmation email sent successfully!");
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Failed to send confirmation email: " + ex.Message);
                }
            }
            else
            {
                Console.WriteLine("No email found for the provided token.");
            }

        }


        private string GetStoredTokenFromDatabase(string token, out DateTime expirationTime)
        {
            // Implement the logic to retrieve the token and its expiration time from your database
            // Typically, you would query a database table where reset tokens are stored along with their expiration times
            // You can use Entity Framework, ADO.NET, or any other data access technology to perform database operations
            // Return the stored token and its expiration time

            string query = "SELECT * FROM RestPassword where ([resetToken] = '" + token + "')";
            DataTable dt = DBFunction.SelectFromTable(query, "DB.accdb");

            // Check if any rows were returned
            if (dt.Rows.Count > 0)
            {
                // Retrieve the token and expiration time from the first row of the DataTable
                string storedToken = dt.Rows[0][0].ToString();
                expirationTime = Convert.ToDateTime(dt.Rows[0][2]);

                // Return the stored token
                return storedToken;
            }

            // Token not found in the database
            expirationTime = DateTime.MinValue;
            return null;


        }

        private string GetUserEmailFromToken(string token)
        {
            // Implement the logic to retrieve the user's email address associated with the token from your database
            // Return the user's email address if the token is valid; otherwise, return null
            string email = "";

            string st = "SELECT email FROM [RestPassword] where ([resetToken]='" + token + "')";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            email = dt.Rows[0][0].ToString(); // Example email address
            return email;
        }



    }
}