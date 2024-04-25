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
       
              
        }

        protected void DataList1_ItemCommand (object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            Session["Im"] = st;
            Response.Redirect("Products1Details.aspx");
        }

        protected void ddlSortBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindData();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
        }


        protected void BindData()
        {
            string selectCommand = "SELECT * FROM [GPU]";
            string sortBy = ddlSortBy.SelectedValue;
            if (!string.IsNullOrEmpty(txtKeyword.Text))
            {
                string keyword = txtKeyword.Text;
                selectCommand += $" WHERE [ProductName] LIKE '%{keyword}%'";
            }

            

           else if (sortBy == "ASC" || sortBy == "DESC")
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