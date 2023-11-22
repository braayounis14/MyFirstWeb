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

            Session["price"]=this.lblPrice.Text;
            this.lblEmail.Text = Session["Email"].ToString();
            this.label.Text = DateTime.Now.ToString();

        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            string sql = "select * from [Cart] where ([Email]='"+Session["Email"].ToString()+"'";
            DataTable dt = DBFunction.SelectFromTable(sql, "DB.accdb");
            if (dt.Rows.Count>0 ) {
            this.BtnCheckOut.Visible = true;
                GridViewRow footer = GridView1.FooterRow;
                int sum = 0;
                foreach  (GridViewRow row in GridView1.Rows ) 
                {
                    sum = sum + (int.Parse(row.Cells[0].Text)) * (int.Parse(row.Cells[4].Text));
                    this.lblPrice.Text = sum.ToString();
                }
                footer.Cells[5].Text = "total price:"+sum.ToString()+"$";
                footer.Cells[0].Visible = false;
                footer.Cells[1].Visible = false;
                footer.Cells[2].Visible = false;
                footer.Cells[3].Visible = false;
                footer.Cells[4].Visible = false;
                footer.Cells[0].ColumnSpan = 6;
                footer.Cells[5].HorizontalAlign = HorizontalAlign.Center;
           
            }


            else
            {
                BtnCheckOut.Visible = false;    
            }


        }

        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Buy.aspx");
        }
    }
}
