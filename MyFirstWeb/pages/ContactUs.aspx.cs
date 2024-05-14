using System;
using System.Collections.Generic;
using System.Data;
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

        


        protected void Button1_Click (object sender, EventArgs e)
        {


            String Email = this.Txt_Email.Text;
            String Subject = this.Txt_Subject.Text.Replace("'", "''");
            String Body = this.Txt_Body.Text.Replace("'", "''");
            //   String file = this.Txt_file.Text;




            String st = "insert into [Messages] ([MessageDate],[Email],[Subject],[Body],[Read]) values (#" + DateTime.Now + "#,'"+Email+"','"+Subject+"','"+Body+"',"+false+")";
            DBFunction.ChangeTable(st,"DB.accdb");


            // Find the auto-generated GUID based on other criteria
            string selectGuidQuery = "SELECT [Key] FROM [Messages] WHERE [MessageDate] = #" + DateTime.Now + "# AND [Email] = '" + Email + "' AND [Subject] = '" + Subject + "' AND [Body] = '" + Body + "'";
            DataTable dt = DBFunction.SelectFromTable(selectGuidQuery, "DB.accdb");

            string Key = "Unfined";
            // Assuming the key column is named "Key" in your database
            if (dt.Rows.Count > 0)
            {
                // Assuming the key column is named "Key" in your database
                Key = dt.Rows[0]["Key"].ToString();
              
            }
            else
            {
            
                // Handle the case where no rows were found
                Console.WriteLine("No rows found.");
            }


            st = "insert into [UserMessages] ([MessageDate],[Email],[Subject],[Body],[Read],[key]) values (#" + DateTime.Now + "#,'" + Email + "','" + Subject + "','" + Body + "'," + false + ",'" + Key + "')";
            DBFunction.ChangeTable(st, "DB.accdb");

            this.lbl_Stuts.Text = "Your Message has been Sent Successfully";

            this.Txt_Email.Text = "";
            this.Txt_Subject.Text = "";
            this.Txt_Body.Text = "";


       

        }
  }
}