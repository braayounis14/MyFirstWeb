using System;
using System.IO;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class AddProduct2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected async void BtnAdd_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                var fileBytes = FileUpload1.FileBytes;
                string fileName = FileUpload1.FileName;

                try
                {
                    var uploader = new ImgbbUploader();
                    var uploadResult = await uploader.UploadImage(fileBytes, fileName);

                    if (uploadResult.Success)
                    {
                        lblMsg.Text = $"Image uploaded successfully! URL: {uploadResult.Data.Url}";
                        // Store the URL in your database if needed


                        string category = this.DropDownList1.SelectedValue;
                        string st = $"insert into [{category}]";
                        string Details = this.txtDetails.Text.Replace("'", "''");
                        string Name = this.txtName.Text.Replace("'", "''");

                        st = st + "([Price],[ProductName],[Details],[Image]) values (" + this.txtPrice.Text + ",'" + Name + "','" + Details + "','" + uploadResult.Data.Url + "')";


                        DBFunction.ChangeTable(st, "DB.accdb");
                        this.txtPrice.Text = "";
                        this.txtName.Text = "";
                        this.txtDetails.Text = "";
                    }
                    else
                    {
                        lblMsg.Text = "Image upload failed.";
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = $"An error occurred: {ex.Message}";
                }
            }
            else
            {
                lblMsg.Text = "Please select a file to upload.";
            }
        }
    }
}
