using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace MyFirstWeb.pages
{
    public partial class ForgetPassword2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        private bool IsValidUser(string email)
        {
            // Check if the email address exists in the database or any other user directory
            // Return true if the email address is valid, false otherwise
            User userObj = new User();
            userObj.UserEmail = email;
            return userObj.IsExistUser(); ;

        }
        protected void Btn_Check_Click1(object sender, EventArgs e)
        {
            // Retrieve the email address entered by the user
            string email = txtEmail.Text;

            // Perform user verification (pseudo-code)
            if (IsValidUser(email))
            {
                // User verification successful, proceed with sending password reset instructions
                SendPasswordResetInstructions(email);
                this.lblStatus.Text = "Password reset instructions sent successfully!";
                lblStatus.Visible = true;
            }
            else
            {
                // User verification failed, display an error message
                lblStatus.Text = "Invalid email address.";
                lblStatus.Visible = true;
            }
        }




        private void SendPasswordResetInstructions(string email)
        {
            // Generate a unique token for password reset (you can use a GUID for simplicity)
            string resetToken = Guid.NewGuid().ToString();

            // Set the expiration time for the token (e.g., 1 hour)
            DateTime expirationTime = DateTime.Now.AddHours(1);

            // Store the reset token and its expiration time in your database or cache
            // For demonstration purposes, let's assume you have a method to store this information
            string authCode = GenerateAuthCode(6);
            StoreTokenInDatabase(email, resetToken, expirationTime, authCode);

            // Construct the password reset link with the reset token
            string resetLink = $"{Request.Url.GetLeftPart(UriPartial.Authority)}/pages/resetpassword.aspx?token={resetToken}";

            // Compose the email message
            string subject = "Password Reset Instructions";
            string body = $"Dear User,\n\nYou have requested to reset your password. Please click on the following link to reset your password:\n\n{resetLink}\n\nThis link will expire in 1 hour.\n\n Also this is the authenticationCode that you will use:{authCode} \n\n If you did not initiate this request, please ignore this email.\n\nRegards,\nYour Website Team";

            // Configure SMTP client (using Gmail SMTP server)
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential("newegghelpteam.il@gmail.com", "ufdhczmsizipvvpk");

            // Create the email message
            MailMessage mailMessage = new MailMessage("newegghelpteam.il@gmail.com", email);
            mailMessage.Subject = subject;
            mailMessage.Body = body;

            try
            {
                // Send the email
                smtpClient.Send(mailMessage);
                Console.WriteLine("Password reset instructions sent successfully!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed to send password reset instructions: " + ex.Message);
            }
        }


        private void StoreTokenInDatabase(string email, string resetToken, DateTime expirationTime, string authCode)
        {



            string st1 = "insert into [RestPassword] ([expirationTime],[resetToken],[email],[AuthCode]) values (#" + expirationTime + "#,'" + resetToken + "','" + email + "','" + authCode + "')";
            DBFunction.ChangeTable(st1, ("DB.accdb"));
            // Implement the logic to store the token and its expiration time in your database
            // Typically, you would have a table to store reset tokens along with the associated email address and expiration time
            // You can use Entity Framework, ADO.NET, or any other data access technology to perform database operations
        }

        static string GenerateAuthCode(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            StringBuilder authCode = new StringBuilder();

            Random random = new Random();
            for (int i = 0; i < length; i++)
            {
                authCode.Append(chars[random.Next(chars.Length)]);
            }

            return authCode.ToString();
        }



    }
}