using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class Products1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Check if the user has a preference for ddlView saved in a cookie
                HttpCookie cookie = Request.Cookies["ddlViewValue"];
                if (cookie != null)
                {
                    string ddlViewValue = cookie.Value;
                    ddlView.SelectedValue = ddlViewValue;
                }
            }
            int selectedValue;
            if (int.TryParse(ddlView.SelectedValue, out selectedValue))
                this.DataList1.RepeatColumns = selectedValue;
            else
                this.DataList1.RepeatColumns = 6;

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            Session["Im"] = st;
            Response.Redirect("ProductsAllDetails.aspx");
        }

        protected void ddlSortBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindData();
        }
        protected void ddlView_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Save the selected value of ddlView in a cookie
            HttpCookie cookie = new HttpCookie("ddlViewValue");
            cookie.Value = ddlView.SelectedValue;
            cookie.Expires = DateTime.Now.AddYears(1); // Cookie expires in 1 year
            Response.Cookies.Add(cookie);
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
        }
        protected void BindData()
        {
            string selectCommand = AccessDataSource1.SelectCommand;
            string sortBy = ddlSortBy.SelectedValue;
            if (!string.IsNullOrEmpty(txtKeyword.Text))
            {
                string keyword = txtKeyword.Text;
                selectCommand += $" WHERE [ProductName] LIKE '%{keyword}%'";
            }



            if (sortBy == "ASC" || sortBy == "DESC")
            {
                // Sort by price
                selectCommand += $" ORDER BY [Price] {sortBy}";
            }
            else if (sortBy == "ASC_Name" || sortBy == "DESC_Name")
            {
                // Sort by name
                selectCommand += $" ORDER BY [ProductName] {(sortBy.EndsWith("ASC_Name") ? "ASC" : "DESC")}";
            }

            AccessDataSource1.SelectCommand = selectCommand;
            AccessDataSource1.DataBind();
        }


    }
}