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
            catagory.InnerHtml = "";

            string DtProduct = "select * from [Products]";
            DataTable dtProduct = DBFunction.SelectFromTable(DtProduct, "DB.accdb");


            foreach (DataRow row in dtProduct.Rows)
            {
                string Image = row["Image"].ToString();
                string ProductName = row["ProductName"].ToString();
                string ProductDetails = row["Details"].ToString();

                catagory.InnerHtml += $"     <div>\r\n     <div class=\"card\">\r\n        <div class=\"im\">\r\n           <img class=\"img\" src=\"{Image}\" alt=\"Alternate Text\" />\r\n              <div class=\"save\">\r\n                 <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 683 683\" height=\"683\" width=\"683\" class=\"svg\">\r\n                 <g clip-path=\"url(#clip0_993_25)\">\r\n               <mask height=\"683\" width=\"683\" y=\"0\" x=\"0\" maskUnits=\"userSpaceOnUse\" style=\"mask-type:luminance\" id=\"mask\">\r\n              <path fill=\"white\" d=\"M0 -0.00012207H682.667V682.667H0V-0.00012207Z\"></path>\r\n          </mask>\r\n             <g mask=\"url(#mask0_993_25)\">\r\n                <path stroke-linejoin=\"round\" stroke-linecap=\"round\" stroke-miterlimit=\"10\" stroke-width=\"40\" stroke=\"#CED8DE\" d=\"M148.535 19.9999C137.179 19.9999 126.256 24.5092 118.223 32.5532C110.188 40.5866 105.689 51.4799 105.689 62.8439V633.382C105.689 649.556 118.757 662.667 134.931 662.667H135.039C143.715 662.667 151.961 659.218 158.067 653.09C186.451 624.728 270.212 540.966 304.809 506.434C314.449 496.741 327.623 491.289 341.335 491.289C355.045 491.289 368.22 496.741 377.859 506.434C412.563 541.074 496.752 625.242 524.816 653.348C530.813 659.314 538.845 662.667 547.308 662.667C563.697 662.667 576.979 649.395 576.979 633.019V62.8439C576.979 51.4799 572.48 40.5866 564.447 32.5532C556.412 24.5092 545.489 19.9999 534.133 19.9999H148.535Z\"></path>\r\n              </g>\r\n           </g>\r\n\r\n\r\n           <defs>\r\n              <clipPath id=\"clip0_993_25\">\r\n               <rect fill=\"white\" height=\"682.667\" width=\"682.667\"></rect>\r\n              </clipPath>\r\n           </defs>\r\n\r\n          </svg>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"text\">\r\n        <p class=\"h3\">{ProductName}</p>\r\n        <p class=\"p\">{ProductDetails}</p> \r\n\r\n        <div class=\"icon-box\">\r\n          <p class=\"span\">Add To Cart</p>\r\n        </div>\r\n\r\n      </div>\r\n    </div>\r\n       \r\n       \r\n       </div>\r\n       ";

            }
        }
    }
}