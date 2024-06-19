using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class AddProduct2 : System.Web.UI.Page
    {
        private const string ImgbbApiKey = "55cb66d245f67cccd1a7ef9b349bcf82";

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
                    var uploadResult = await UploadImageToImgbb(fileBytes, fileName);

                    if (uploadResult.Success)
                    {
                        lblMsg.Text = $"Image uploaded successfully! URL: {uploadResult.Data.Url}";



                        string category = this.DropDownList1.SelectedValue;
                        string st = $"insert into [{category}]";
                        string Details = this.txtDetails.Text.Replace("'", "''");
                        string Name = this.txtName.Text.Replace("'", "''");

                        st = st + "([Price],[ProductName],[Details],[Image]) values (" + this.txtPrice.Text + ",'" + Name + "','" + Details + "','" + uploadResult.Data.Url + "')";


                        DBFunction.ChangeTable(st, "DB.accdb");
                        this.txtPrice.Text = "";
                        this.txtName.Text = "";
                        this.txtDetails.Text = "";
                        // Store the URL in your database if needed
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

        private async Task<ImgbbResponse> UploadImageToImgbb(byte[] fileBytes, string fileName)
        {
            using (var httpClient = new HttpClient())
            {
                using (var content = new MultipartFormDataContent())
                {
                    content.Add(new StringContent(ImgbbApiKey), "key");
                    content.Add(new ByteArrayContent(fileBytes), "image", fileName);

                    HttpResponseMessage response = await httpClient.PostAsync("https://api.imgbb.com/1/upload", content);
                    string responseBody = await response.Content.ReadAsStringAsync();

                    var serializer = new JavaScriptSerializer();
                    return serializer.Deserialize<ImgbbResponse>(responseBody);
                }
            }
        }
    }

    public class ImgbbResponse
    {
        public ImgbbData Data { get; set; }
        public bool Success { get; set; }
        public int Status { get; set; }
    }

    public class ImgbbData
    {
        public string Id { get; set; }
        public string Url { get; set; }
        public string DisplayUrl { get; set; }
        public string DeleteUrl { get; set; }
    }
}
