using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Like.InnerText = "123";

            String st = "select * from [USERS]";
            DataTable dt = DBFunction.SelectFromTable(st, "Clients.accdb");

            Member.InnerText = dt.Rows.Count + "";






            String Names = "select FullName from [USERS]";
            DataTable dtNames = DBFunction.SelectFromTable(Names, "Clients.accdb");

            DataNames1.InnerHtml = ""; // Clear the existing content

            DataNames1.InnerHtml += "<span class=\"data-title\">Name</span>"; // Add the title

            DataNames1.InnerHtml += "<div runat=\"server\" id=\"DataNames1\" class=\"data names\">"; // Open the div tag

            foreach (DataRow row in dtNames.Rows)
            {
                string fullName = row["FullName"].ToString();
                DataNames1.InnerHtml += $"<span class=\"data-list\">{fullName}</span>";
            }

            DataNames1.InnerHtml += "</div>"; // Close the div tag

            // Email =>


            String emailSt = "select Email from [USERS]";
            DataTable dtEmail = DBFunction.SelectFromTable(emailSt, "Clients.accdb");

            DataEmail.InnerHtml = ""; // Clear the existing content

            DataEmail.InnerHtml += "<span  class=\"data-title\">Email</span>"; // Add the title

            DataEmail.InnerHtml += "<div runat=\"server\" id=\"DataEmail\" class=\"data email\">"; // Open the div tag

            foreach (DataRow row in dtEmail.Rows)
            {
                string Email = row["Email"].ToString();
                DataEmail.InnerHtml += $"<span class=\"data-list\">{Email}</span>";
            }

            DataEmail.InnerHtml += "</div>"; // Close the div tag


            // JoinedDate =>

            String JoinedDateSt = "select MemberJoinedDate from [USERS]";
            DataTable dtJoinedDate = DBFunction.SelectFromTable(JoinedDateSt, "Clients.accdb");

            DataJoinedDate.InnerHtml = ""; // Clear the existing content

            DataJoinedDate.InnerHtml += "<span class=\"data-title\">Member Joined Date</span>"; // Add the title

            DataJoinedDate.InnerHtml += "<div runat=\"server\" id=\"DataJoinedDate\" class=\"data joined\">"; // Open the div tag

            foreach (DataRow row in dtJoinedDate.Rows)
            {
                string JoinedDate = row["MemberJoinedDate"].ToString();
                DataJoinedDate.InnerHtml += $"<span class=\"data-list\">{JoinedDate}</span>";
            }

            DataJoinedDate.InnerHtml += "</div>"; // Close the div tag

            // Gender =>

            String GenderSt = "select Gender from [USERS]";
            DataTable dtGender = DBFunction.SelectFromTable(GenderSt, "Clients.accdb");

            DataGender.InnerHtml = ""; // Clear the existing content

            DataGender.InnerHtml += "<span class=\"data-title\">Gender</span>"; // Add the title

            DataGender.InnerHtml += "<div runat=\"server\" id=\"DataGender\" class=\"data type\">"; // Open the div tag

            foreach (DataRow row in dtGender.Rows)
            {
                string FinalGender = row["Gender"].ToString();
                DataGender.InnerHtml += $"<span class=\"data-list\">{FinalGender}</span>";
            }

            DataGender.InnerHtml += "</div>"; // Close the div tag


            // State =>

            String StateSt = "select State from [USERS]";
            DataTable dtState = DBFunction.SelectFromTable(StateSt, "Clients.accdb");

            DataState.InnerHtml = ""; // Clear the existing content

            DataState.InnerHtml += "<span style=\"margin-left:15px\" class=\"data-title\">State</span>"; // Add the title

            DataState.InnerHtml += "<div runat=\"server\" id=\"DataState\" class=\"data status\">"; // Open the div tag

            foreach (DataRow row in dtState.Rows)
            {
                string State = row["State"].ToString();
                DataState.InnerHtml += $"<span class=\"data-list\">{State}</span>";
            }

            DataState.InnerHtml += "</div>"; // Close the div tag



        }
    }
}