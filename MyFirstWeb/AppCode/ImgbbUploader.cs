using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

public class ImgbbUploader
{
    private const string ImgbbApiKey = "55cb66d245f67cccd1a7ef9b349bcf82";

    public async Task<ImgbbResponse> UploadImage(byte[] fileBytes, string fileName)
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
