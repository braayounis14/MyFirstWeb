using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class Products1Details : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from [Products] where ([image]='" + (Session["Im"].ToString()) + "')";
            DataTable dt = DBFunction.SelectFromTable(sql, "DB.accdb");
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    this.image1.ImageUrl= dt.Rows[0][3].ToString();
                    this.Label2.Text = dt.Rows[0][0].ToString();
                    this.Label3.Text = dt.Rows[0][2].ToString();
                    this.Label4.Text = dt.Rows[0][1].ToString();



                }

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string st = "insert into [Cart]([Email],[Price],[Info],[ProductName],[Quantity],[DateBuy],[Image]) values('" + (Session["Email"].ToString()) + "'," + int.Parse(this.Label2.Text) + ",'" + this.Label3.Text + "','" + this.Label4.Text + "'," + int.Parse(this.TextBox1.Text) + ",#" + DateTime.Now + "#,'" + Session["Im"].ToString() + "')";
            DBFunction.ChangeTable(st, "DB.accdb");
            Response.Redirect("Products1.aspx");


        }
    }
}