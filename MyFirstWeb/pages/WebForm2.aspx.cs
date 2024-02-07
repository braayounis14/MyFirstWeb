using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string inputDate = "29/02/2024";
            CultureInfo provider = new CultureInfo("en-US");
            if (DateTime.TryParseExact(inputDate, "dd/MM/yyyy", provider, DateTimeStyles.None, out DateTime date) &&
                IsValidDayMonth(date.Day, date.Month))
            {
                // Calculate dates after 3 and 7 days, considering leap years
                int day = date.Day;
                int month = date.Month;
                int year = date.Year;

                // Calculate dates after 3 and 7 days, considering leap years
                DateTime after3Days = new DateTime(year, month, day).AddDays(3);
                DateTime after7Days = new DateTime(year, month, day).AddDays(7);

               

                // Display results
                this.Label1.Text = after3Days.ToString("dd/MM/yyyy") + "";
                this.Label2.Text = after7Days.ToString("dd/MM/yyyy") + "";
           


            }


        }

        static bool IsValidDayMonth(int day, int month)
        {
            // Check if day and month values are within valid ranges
            return day >= 1 && day <= 31 && month >= 1 && month <= 12;
        }


    }
}