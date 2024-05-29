using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  
        }


        public int InfoByEmailSession()
        {
            // it checks if the user is exist at the Database, and returns true if exist and false if not exist /

            string st = "select Price, Quantity  from [Cart] where [Email]='" + Session["email"].ToString() + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            int Sum = 0;
            int Price = 0;
            int Quantity = 1;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (dt.Rows.Count > 0)
                {
                    dt.Rows[0][0].ToString();
                    Price = int.Parse(dt.Rows[row.RowIndex][0].ToString());
                    Quantity = int.Parse(dt.Rows[row.RowIndex][1].ToString());
                    Sum += (Price * Quantity);
                }
            }

            return Sum;
        }



        protected void GridView1_DataBound(object sender, EventArgs e)
        {

            int OrderPrice = InfoByEmailSession();
            double OrderTax = OrderPrice * 0.17;
            this.Order_Price.InnerText = $" {OrderPrice - OrderTax:C}";
            if (OrderPrice <= 600 && OrderPrice != 0)
            {
                this.Shipping_Price.InnerText = $" {50:C}";
                this.Order_Total.InnerText = $" {OrderPrice + 50:C}";
                this.Tax_Price.InnerText = $" {OrderTax:C}";
                Session["Price"] = OrderPrice + 50;
            }
            else

            {
                this.Shipping_Price.InnerText = $" {0:C}";
                this.Order_Total.InnerText = $" {OrderPrice:C}";
                this.Tax_Price.InnerText = $" {OrderTax:C}";
                Session["Price"] = OrderPrice;
            }


        }
        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Buy.aspx");
        }


    }
}
