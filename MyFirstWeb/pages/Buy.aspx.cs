using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Text = Session["email"].ToString();
            this.lblPrice.Text = Session["price"].ToString();
        }


        public void Prices()
        {

            int OrderPrice = int.Parse(Session["price"].ToString());
            if (OrderPrice < 650 && OrderPrice != 0)
            {
                this.lblDilvery.Text = $" {50:C}";

                OrderPrice = OrderPrice - 50;
                double OrderTax = OrderPrice * 0.17;
                this.lblOrderSubtotal.Text = $" {OrderPrice - OrderTax:C}";
                this.lblPrice.Text = $" {OrderPrice + 50:C}";
            }
            else

            {
                this.lblDilvery.Text = $" {0:C}";
                double OrderTax = OrderPrice * 0.17;
                this.lblOrderSubtotal.Text = $" {OrderPrice - OrderTax:C}";
                this.lblPrice.Text = $" {OrderPrice:C}";
            }


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Bank x = new Bank();
            string visanum = this.txtCardNum.Text;
            string cvv = this.txtCardCvc.Text;
            string id = this.txtCardHolderID.Text;
            int mon = int.Parse(this.txtDate.Text.Substring(0, 2));
            int year = int.Parse(this.txtDate.Text.Substring(3, 2));
            int tot = int.Parse(this.lblPrice.Text);
            if (x.ValidVisaDetails(id, visanum, cvv, mon, year))
                if (x.IsExpireDate(mon, year))
                    if (x.CheckVisaFunds(visanum, tot))
                    {
                        if (x.Buy(visanum, tot))
                            this.lblStauts.Text = "           <div runat=\"server\" style=\"font-family: 'Poppins', sans-serif;\" id=\"notfi\" class=\"notification\" visible=\"false\">\r\n            <div style=\"font-family: 'Poppins', sans-serif;\" class=\"notification__body\">\r\n                <img\r\n                    src=\"../Images/check-circle.svg\"\r\n                    alt=\"Success\"\r\n                    class=\"notification__icon\"\r\n                />\r\n                payment successed! &#128640; \r\n            </div>\r\n            <div class=\"notification__progress\"></div>\r\n        </div>";
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            if (row != null)
                            {
                                string str = "select[image] from [Cart] where ([Code]=" + int.Parse(row.Cells[6].Text) + "and [Email]='" + row.Cells[0].Text + "')";
                                DataTable dt = DBFunction.SelectFromTable(str, "DB.accdb");
                                if (dt.Rows.Count > 0)
                                {


                                    string productName = row.Cells[7].Text;
                                    string productInfo = row.Cells[2].Text;

                                    DateTime now = DateTime.Now;
                                    string formattedDate = now.ToString("MM/dd/yyyy HH:mm:ss");

                                    string st = "insert into [Orders] ([Email],[Code],[Quantity],[Price],[BuyDate],[Image],[ProductName],[ProductInfo],[DeliveryStatus])" +
                                                "values('" + row.Cells[0].Text + "'," + int.Parse(row.Cells[6].Text) + "," + int.Parse(row.Cells[5].Text) + "," + int.Parse(row.Cells[1].Text) + ",#" + formattedDate + "#,'" +
                                                dt.Rows[0][0].ToString() + "','" + productName + "','" + productInfo + "'," + "'Placed" + "')";
                                    DBFunction.ChangeTable(st, "DB.accdb");




                                    string sql;
                                    sql = "Delete * from [Cart] where ([Email] = '" + this.Label1.Text + "' and [Code]=" + row.Cells[6].Text + ")";

                                    DBFunction.ChangeTable(sql, "DB.accdb");
                                        
                                    ClientScript.RegisterStartupScript(this.GetType(), "redirect", "setTimeout(function(){ window.location.href = 'home1.aspx'; }, 5000);", true);
                                }

                            }

                        }
                    }
                    else
                        this.lblStauts.Text = "           <div runat=\"server\" style=\"font-family: 'Poppins', sans-serif; background-color:#FF0000;\" id=\"notfi\" class=\"notification\" visible=\"false\">\r\n            <div style=\"font-family: 'Poppins', sans-serif;\" class=\"notification__body\">\r\n                <img\r\n                    src=\"../Images/decline.png\"\r\n                    alt=\"Reject\"\r\n                    class=\"notification__icon\"\r\n                />\r\n               payment not confirmed ; \r\n            </div>\r\n            <div class=\"notification__progress\"></div>\r\n        </div>";
                else
                    this.lblStauts.Text = "           <div runat=\"server\" style=\"font-family: 'Poppins', sans-serif;  background-color:#FF0000;\" id=\"Div1\" class=\"notification\" visible=\"false\">\r\n            <div style=\"font-family: 'Poppins', sans-serif;\" class=\"notification__body\">\r\n                <img\r\n                    src=\"../Images/decline.png\"\r\n                    alt=\"Reject\"\r\n                    class=\"notification__icon\"\r\n                />\r\n               credit card date is expired \r\n            </div>\r\n            <div class=\"notification__progress\"></div>\r\n        </div>";
            else
                this.lblStauts.Text = "           <div runat=\"server\" style=\"font-family: 'Poppins', sans-serif;  background-color:#FF0000;\" id=\"Div2\" class=\"notification\" visible=\"false\">\r\n            <div style=\"font-family: 'Poppins', sans-serif;\" class=\"notification__body\">\r\n                <img\r\n                    src=\"../Images/decline.png\"\r\n                    alt=\"Reject\"\r\n                    class=\"notification__icon\"\r\n                />\r\n               Payment Not Completed \r\n            </div>\r\n            <div class=\"notification__progress\"></div>\r\n        </div>";
        }



    }
}