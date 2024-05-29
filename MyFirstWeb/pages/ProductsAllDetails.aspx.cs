using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string category = "";
            category = categoryChoosed(Session["Im"].ToString());
            //   string sql = "select * from [GPU] where ([image]='" + (Session["Im"].ToString()) + "')";
            string sql = "select * from [" + category + "] where ([image]='" + Session["Im"].ToString() + "')";
            DataTable dt = DBFunction.SelectFromTable(sql, "DB.accdb");
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    ProductImg.Attributes["src"] = dt.Rows[0][3].ToString();
                    this.Label2.Text = dt.Rows[0][0].ToString();
                    this.Label4.Text = dt.Rows[0][1].ToString();
                    this.Label3.Text = dt.Rows[0][2].ToString();
                    this.price.InnerText = "Price:" + dt.Rows[0][0].ToString() + "₪";
                    this.info.InnerText = dt.Rows[0][2].ToString();
                    string details = dt.Rows[0][2].ToString();
                    details = Regex.Replace(details, @"\.(\D)", "<li>$1");
                    this.info2.InnerHtml = "  <li>" + details + " ";
                    this.title.InnerText = dt.Rows[0][1].ToString();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string st = "insert into [Cart]([Email],[Price],[Info],[ProductName],[Quantity],[DateBuy],[Image]) " +
 "values('" + (Session["Email"].ToString()) + "'," + int.Parse(this.Label2.Text) + ",'" + this.Label3.Text + "','"
 + this.Label4.Text + "'," + int.Parse(this.TextBox1.Text) + ",#" + DateTime.Now + "#,'" + Session["Im"].ToString() + "')";

            DBFunction.ChangeTable(st, "DB.accdb");
            Response.Redirect("Products.aspx");
        }
        private string categoryChoosed (string Image)
         {
           
            string[] categories = new string[]
            { "Case", "CPU", "CPUCooler", "GPU", "Memory", "Monitor", "Motherboard", "OperatingSystem", "PowerSupply", "Storage" };

            for (int i=0; i < categories.Length; i++) {   
            string st = "select * from [" + categories[i] + "] where [Image]='" + Image + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            if (dt.Rows.Count > 0)
                return categories[i].ToString();  
            
        }
            return "";

        }
    }
}
