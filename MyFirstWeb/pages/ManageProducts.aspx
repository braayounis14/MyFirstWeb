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
          <div class="activity">
          <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="">

              <tbody>


<asp:GridView ID="GridView1" GridLines="None" style=" margin-top:-30px;" class="table" runat="server" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" DataKeyNames="Email,DateBuy,Code">
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>
                <tr>
                    <th scope="col" class="border-0 bg-light">
                        <div class="p-2 px-3 text-uppercase">Product</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Price</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Quantity</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Test</div>
                    </th>

                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">LOL</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">a7m</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Remove</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Edit</div>
                    </th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Panel ID="Panel1" Style="border-top:none;" runat="server" >
                    <tr style="border-top:1px solid #dee2e6">
                        <th scope="row">
                            <div class="p-2">

                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' alt="" class="img-fluid rounded shadow-sm" style="box-shadow:unset !important;" runat="server" />
                                <div class="ml-3 d-inline-block align-middle">
                                    <h5 class="mb-0"><a href="#" class="text-dark d-inline-block line"><%# Eval("ProductName") %></a></h5>
                                    <span class="text-muted font-weight-normal font-italic">Category: Category</span>
                                </div>
                            </div>
                        </th>
                        <td class="align-middle"><strong><%# String.Format("{0:N0}", Convert.ToInt32(Eval("Price"))) %></strong></td>
                        <td class="align-middle"><strong><%# Eval("Quantity") %></strong></td>
                        <td class="align-middle"><strong><%# Eval("Quantity") %></strong></td>
                        <td class="align-middle"><strong><%# Eval("Quantity") %></strong></td>
                        <td class="align-middle"><strong><%# Eval("Quantity") %></strong></td>
                        <td class="align-middle">
                            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Code") %>' CssClass="text-dark">   <i class="fa fa-trash"></i> </asp:LinkButton>
                        </td>
                <td class="align-middle">
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" CommandArgument='<%# Eval("Code") %>' CssClass="text-dark"><i class="fa fa-edit"></i></asp:LinkButton>
                </td>

                    </tr>
                </asp:Panel>
            </ItemTemplate>


                        <EditItemTemplate>
                <!-- Add controls to edit your data here, like TextBoxes that are bound to data elements. -->



                            <div class="p-2">

                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' alt="" class="img-fluid rounded shadow-sm" Style="box-shadow: unset !important;" runat="server" />
                                <div class="ml-3 d-inline-block align-middle">
                                    <h5 class="mb-0">
                                        <asp:TextBox class="text-dark d-inline-block line" ID="TextBox1" runat="server" TextMode="MultiLine" Text='<%# Eval("ProductName") %>'></asp:TextBox></h5>
                                    <span class="text-muted font-weight-normal font-italic">Category: Category</span>
                                </div>
                            </div>
                                
                        <td class="align-middle"><strong><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox></strong></td>    
                        <td class="align-middle"><strong><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox></strong></td> 
                        <td class="align-middle"><strong><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox></strong></td>
                        <td class="align-middle"><strong><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox></strong></td>
                        <td class="align-middle"><strong><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox></strong></td>

                <td class="align-middle">
                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" CommandArgument='<%# Eval("Code") %>' Text="Update" CssClass="text-dark"></asp:LinkButton>
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="text-dark"></asp:LinkButton>
                </td>
            </EditItemTemplate>
        </asp:TemplateField>
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





    <asp:GridView ID="GridView2" runat="server" DataSourceID="AccessDataSource2">
        <Columns>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
            <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>

    



            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart] where ([Email]=?)" DeleteCommand="DELETE FROM [Cart] WHERE [code] = ?">
    <DeleteParameters>
        <asp:Parameter Name="code" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
</asp:AccessDataSource>


            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [USERS]" DeleteCommand="DELETE FROM [USERS] WHERE [ID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
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
.img-fluid {
    width: 150px;
}
}

                    @media (min-width: 1px){
.line {
   width: 420px;
}
.img-fluid {
    width: 100px;
}
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
