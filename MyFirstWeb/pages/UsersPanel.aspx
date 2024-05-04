<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SiteAdminPage.Master" AutoEventWireup="true" CodeBehind="UsersPanel.aspx.cs" Inherits="MyFirstWeb.pages.UsersPanel" %>
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


                  <asp:GridView ID="GridView1" GridLines="None" style="margin-top:-30px;" class="table" runat="server" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
                      
                      <Columns>


                                                 <asp:TemplateField ItemStyle-CssClass="sss">
                                  <HeaderTemplate>
                <tr>


                    <th scope="col" class="border-0 bg-light">
                        <div class="p-2 px-3 text-uppercase">ID</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">FullName</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Email</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Birthday</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Password</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">State</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Gender</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">PassQuastion</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">PassAnswer</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">JoinedDate</div>
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
                          <asp:BoundField DataField="ID"  ReadOnly="True" SortExpression="ID"></asp:BoundField>
                          <asp:BoundField DataField="FullName" ReadOnly="True" SortExpression="FullName"></asp:BoundField>
                          <asp:BoundField DataField="Email"  SortExpression="Email"></asp:BoundField>
                          <asp:BoundField DataField="Birthday"  SortExpression="Birthday"></asp:BoundField>
                          <asp:BoundField DataField="Password" SortExpression="Password"></asp:BoundField>
                          <asp:BoundField DataField="State"  SortExpression="State"></asp:BoundField>
                          <asp:BoundField DataField="Gender" SortExpression="Gender"></asp:BoundField>
                          <asp:BoundField DataField="PassQuastion"  SortExpression="PassQuastion"></asp:BoundField>
                          <asp:BoundField DataField="PassAnswer" SortExpression="PassAnswer"></asp:BoundField>
                          <asp:BoundField DataField="MemberJoinedDate" SortExpression="MemberJoinedDate"></asp:BoundField>
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



    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [USERS]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [USERS] WHERE [ID] = ? AND [FullName] = ? AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Birthday] = ?) OR ([Birthday] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND (([State] = ?) OR ([State] IS NULL AND ? IS NULL)) AND (([Gender] = ?) OR ([Gender] IS NULL AND ? IS NULL)) AND (([PassQuastion] = ?) OR ([PassQuastion] IS NULL AND ? IS NULL)) AND (([PassAnswer] = ?) OR ([PassAnswer] IS NULL AND ? IS NULL)) AND (([MemberJoinedDate] = ?) OR ([MemberJoinedDate] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [USERS] ([ID], [FullName], [Email], [Birthday], [Password], [State], [Gender], [PassQuastion], [PassAnswer], [MemberJoinedDate]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [USERS] SET [Email] = ?, [Birthday] = ?, [Password] = ?, [State] = ?, [Gender] = ?, [PassQuastion] = ?, [PassAnswer] = ?, [MemberJoinedDate] = ? WHERE [ID] = ? AND [FullName] = ? AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Birthday] = ?) OR ([Birthday] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND (([State] = ?) OR ([State] IS NULL AND ? IS NULL)) AND (([Gender] = ?) OR ([Gender] IS NULL AND ? IS NULL)) AND (([PassQuastion] = ?) OR ([PassQuastion] IS NULL AND ? IS NULL)) AND (([PassAnswer] = ?) OR ([PassAnswer] IS NULL AND ? IS NULL)) AND (([MemberJoinedDate] = ?) OR ([MemberJoinedDate] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_State" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_State" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_MemberJoinedDate" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_MemberJoinedDate" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="State" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="MemberJoinedDate" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="State" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="MemberJoinedDate" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ID" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Birthday" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_State" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_State" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassQuastion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassAnswer" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_MemberJoinedDate" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_MemberJoinedDate" Type="String"></asp:Parameter>
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
