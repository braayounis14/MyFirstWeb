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
           // HtmlGenericControl currentCardDiv = (HtmlGenericControl)FindControl("current-card");
            //string divValue = currentCardDiv.InnerText;

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
                {
                    if (x.CheckVisaFunds(visanum, tot))
                    {
                        if (x.Buy(visanum, tot))
                            this.Label2.Text = "Payment Successed";
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            if (row != null)
                            {
                                string str = "select [Image] from [Cart] where ([Code]=" + int.Parse(row.Cells[6].Text) + "and [Email]='" + row.Cells[0].Text + "')";
                                DataTable dt = DBFunction.SelectFromTable(str, "DB.accdb");

                                if (dt.Rows.Count > 0)

                                {

                                    string st = "insert into [Order] ([Email],[Code],[Quantity],[Price],[BuyDate],[Image],[Delivered])" + "values('" + row.Cells[0].Text + "'," + int.Parse(row.Cells[6].Text) + "," + int.Parse(row.Cells[5].Text) + "," + int.Parse(row.Cells[1].Text) + ",#" + DateTime.Now + "#,'" + dt.Rows[0][0].ToString() + "'," + false + ")";
                                    DBFunction.ChangeTable(st, "DB.accdb");

                                    string sql;
                                    sql = "Delete * from [Cart] where ([Email]='" + this.Label1.Text + "'and [Code]=" + row.Cells[6].Text + ")";
                                    DBFunction.ChangeTable(sql, "DB.accdb");
                                }

                            }

                        }

                    }

                    else
                        this.Label2.Text = "No Confirm";
                }
                else
                    this.Label2.Text = "date not valid";
            else
                this.Label2.Text = "Wrong Data";



        }
    }
}