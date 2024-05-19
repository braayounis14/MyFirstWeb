<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SiteAdminPage.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="MyFirstWeb.pages.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      

    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@2.8.2/dist/alpine.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/56446077d3.js" crossorigin="anonymous"></script>
            


     <div class="dash-content">
         <div class="overview">
             <div class="title">
                 <i class="uil uil-tachometer-fast-alt"></i>
                 <span class="text">Dashboard</span>
             </div>
             <div class="boxes">
                 <div class="box box1">
                     <i class="uil uil-thumbs-up"></i>
                     <span class="text">Total Likes</span>
                     <span id="Like" runat="server" class="number">50,120</span>
                 </div>
                 <div class="box box2">
                     <i class="uil uil-comments"></i>
                     <span class="text">Comments</span>
                     <span id="Comment" runat="server" class="number">50,120</span>
                 </div>
                 <div class="box box3">
                     <i class="uil uil-user"></i>
                     <span class="text">Total Members</span>
                     <span id="Member" runat="server" class="number">50,120</span>
                 </div>
             </div>
         </div>



                   <div class="activity" style="margin-top:20px">
          <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5" style="background-color:var(--panel-color)!important">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="">

              <tbody>


                  <asp:GridView ID="GridView1" GridLines="Both" Style="margin-top: -30px;" class="table" runat="server" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" DataKeyNames="Image">

                      <Columns>


                          <asp:TemplateField ItemStyle-CssClass="sss">
                              <HeaderTemplate>
                                  <tr>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="p-2 px-3 text-uppercase">ProductName</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Details</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Price</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Image Link</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Image</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Edit</div>
                                      </th>
                                      <th scope="col" class="border-0 bg-light">
                                          <div class="py-2 text-uppercase">Delete</div>
                                      </th>
                                  </tr>
                              </HeaderTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="ProductName" SortExpression="ProductName"></asp:BoundField>
                          <asp:BoundField DataField="Details" SortExpression="Details"></asp:BoundField>
                          <asp:BoundField DataField="Price" SortExpression="Price"></asp:BoundField>

                          <asp:BoundField DataField="Image" SortExpression="Image"></asp:BoundField>
                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:Panel ID="Panel1" Style="border-top: none;" runat="server">
                                      <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' alt="" class="img-fluid rounded shadow-sm" Style="box-shadow: unset !important;  width: 100px; max-width: 100%;height: auto;" runat="server" />
                                  </asp:Panel>
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:CommandField ShowEditButton="True"></asp:CommandField>
                          <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                      </Columns>
                  </asp:GridView>


              </tbody>
            </table>

          </div>
          <!-- End -->
        </div>
      </div>

</div>



</div>









    <asp:AccessDataSource ID="AccessDataSource1" runat="server" ConflictDetection="CompareAllValues" DataFile="~/App_Data/DB.accdb" DeleteCommand="DELETE FROM [CPU] WHERE [Image] = ? AND [Price] = ? AND (([ProductName] = ?) OR ([ProductName] IS NULL AND ? IS NULL)) AND (([Details] = ?) OR ([Details] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [CPU] ([Price], [ProductName], [Details], [Image]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CPU]" UpdateCommand="UPDATE [CPU] SET [Price] = ?, [ProductName] = ?, [Details] = ? WHERE [Image] = ? AND [Price] = ? AND (([ProductName] = ?) OR ([ProductName] IS NULL AND ? IS NULL)) AND (([Details] = ?) OR ([Details] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Image" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Price" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Details" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Details" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Price" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Details" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Price" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Details" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Image" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Price" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Details" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Details" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:AccessDataSource>





        <style>

            .p-5{
                padding:2rem!important;
            }
            .row {
                margin-left:unset;
                margin-right:unset;
            }

          .table td, .table th {
            border-top:none;
             color:var(--black-light-color);
        }
          .bg-light {
              background-color:var(--background-color)!important;
          }

          .line1 {
              overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
          }


          @media (min-width: 1199px){
.line {
   width: 450px;
}
.line2 {
   width: 400px;
}
.img-fluid {
    width: 150px;
}
}

                    @media (min-width: 1px){
.line {
   width: 420px;
}
.line2 {
   width: 400px;
}
.img-fluid {
    width: 100px;
}
}

                    td.sss {
    display: none;
}
    </style>













    <script>

        function data() {
  function getThemeFromLocalStorage() {
    // if user already changed the theme, use it
    if (window.localStorage.getItem('dark')) {
      return JSON.parse(window.localStorage.getItem('dark'))
    }

    // else return their preferences
    return (
      !!window.matchMedia &&
      window.matchMedia('(prefers-color-scheme: dark)').matches
    )
  }

  function setThemeToLocalStorage(value) {
    window.localStorage.setItem('dark', value)
  }

  return {
    dark: getThemeFromLocalStorage(),
    toggleTheme() {
      this.dark = !this.dark
      setThemeToLocalStorage(this.dark)
    },
    isSideMenuOpen: false,
    toggleSideMenu() {
      this.isSideMenuOpen = !this.isSideMenuOpen
    },
    closeSideMenu() {
      this.isSideMenuOpen = false
    },
    isNotificationsMenuOpen: false,
    toggleNotificationsMenu() {
      this.isNotificationsMenuOpen = !this.isNotificationsMenuOpen
    },
    closeNotificationsMenu() {
      this.isNotificationsMenuOpen = false
    },
    isProfileMenuOpen: false,
    toggleProfileMenu() {
      this.isProfileMenuOpen = !this.isProfileMenuOpen
    },
    closeProfileMenu() {
      this.isProfileMenuOpen = false
    },
    isPagesMenuOpen: false,
    togglePagesMenu() {
      this.isPagesMenuOpen = !this.isPagesMenuOpen
    },
    // Modal
    isModalOpen: false,
    trapCleanup: null,
    openModal() {
      this.isModalOpen = true
      this.trapCleanup = focusTrap(document.querySelector('#modal'))
    },
    closeModal() {
      this.isModalOpen = false
      this.trapCleanup()
    },
  }
}


    </script>
</asp:Content>
