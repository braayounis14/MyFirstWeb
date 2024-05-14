using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //     BtnAdd.Visible = false;
            BtnCheck.Visible = false;

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string fileName = "";
            if (this.FileUpload1.PostedFile.ContentLength != 0)
            {
                if (this.FileUpload1.PostedFile.ContentLength > 10485576)
                    lblMsg.Text = "too large this file is not allowed";
                else
                {
                    string destDir = Server.MapPath("~/images");
                    fileName = Path.GetFileName(this.FileUpload1.PostedFile.FileName);
                    string destPath = Path.Combine(destDir, fileName);
                    this.FileUpload1.PostedFile.SaveAs(destPath);
                    lblMsg.Text = "thanks for submitting your file";

                    string category = this.DropDownList1.SelectedValue;
                    string st = $"insert into [{category}]";
                    string Details = this.txtDetails.Text.Replace("'", "''");
                    string Name = this.txtName.Text.Replace("'", "''");

                    st = st+ "([Price],[ProductName],[Details],[Image]) values (" + this.txtPrice.Text + ",'" + Name + "','" + Details + "','~/images/" + fileName + "')";
                   
                    DBFunction.ChangeTable(st, "DB.accdb");
                    this.txtPrice.Text = "";
                    this.txtName.Text = "";
                    this.txtDetails.Text = "";

                }


            }
            else
                lblMsg.Text = "this file is empty";
           // this.Image1.ImageUrl = "~/images/Screenshot 2023-12-06 120541.png";
        }
    }
}