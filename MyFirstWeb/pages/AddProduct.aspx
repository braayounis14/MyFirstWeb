<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SiteAdminPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="MyFirstWeb.pages.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="../styles/templatemo-style.css" rel="stylesheet" />


     <div class="dash-content">

    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Add Product</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
                
                  <div class="form-group mb-3">
                    <label for="name">Product Name
                    </label>
        <asp:TextBox ID="txtName"  type="text" class="form-control validate" required="true" runat="server"></asp:TextBox>
                   
                  </div>
                  <div class="form-group mb-3">
                    <label for="description">Description</label>
<asp:TextBox ID="txtDetails" required="true" class="form-control validate" runat="server" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>
                      
                  </div>
                  <div class="form-group mb-3">
                    <label for="category">Category</label>

            <asp:DropDownList required="true" class="custom-select tm-select-accounts" ID="DropDownList1" runat="server">
    <asp:ListItem Text="Select a Category" Value="0" Disabled="true" style="color: #0000FF; font-weight: bold;"></asp:ListItem>
                 <asp:ListItem Text="CPU category" Value="CPU"></asp:ListItem>
                 <asp:ListItem Text="CPU Cooler category" Value="CPUCooler"></asp:ListItem>
                 <asp:ListItem Text="Motherboard category" Value="Motherboard"></asp:ListItem>
                 <asp:ListItem Text="Memory category" Value="Memory"></asp:ListItem>
                 <asp:ListItem Text="Storage category" Value="Storage"></asp:ListItem>
                 <asp:ListItem Text="GPU category" Value="GPU"></asp:ListItem>
                 <asp:ListItem Text="Case category" Value="Case"></asp:ListItem>
                 <asp:ListItem Text="Power Supply category" Value="PowerSupply"></asp:ListItem>
                 <asp:ListItem Text="Operating System category" Value="OperatingSystem"></asp:ListItem>
                 <asp:ListItem Text="Monitor category" Value="Monitor"></asp:ListItem>
            </asp:DropDownList>

                  </div>
                  <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label for="expire_date">Price
                          </label>
                          <asp:TextBox ID="txtPrice" required="true" type="text" class="form-control validate hasDatepicker" data-large-mode="true" runat="server"></asp:TextBox>
                
                        </div>
                  </div>
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">

                  <i class="fas fa-cloud-upload-alt tm-upload-icon" onclick="document.getElementById('fileInput').click();"></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                
              
                <asp:FileUpload type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE" onclick="document.getElementById('fileInput').click();" ID="FileUpload1" runat="server" />
                </div>
              </div>
              <div class="col-12">
                  <asp:Button ID="BtnAdd" type="submit" runat="server" class="btn btn-primary btn-block text-uppercase" Text="Add Product Now" OnClick="BtnAdd_Click" />
               
                  <asp:Label ID="lblMsg" runat="server" style="color:var(--black-light-color)" Text=""></asp:Label>
              </div>

            </div>
          </div>
        </div>
      </div>


          </div>





</asp:Content>
