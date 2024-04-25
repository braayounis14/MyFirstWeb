<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyFirstWeb.pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="../styles/AdminClientes.css" rel="stylesheet" />
      
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <div class="px-4 px-lg-0">
  <!-- For demo purpose -->
  <div style="margin-top:70px" class="container text-white py-5 text-center">
    <h1 class="display-4">Your shopping cart</h1>
  </div>
  <!-- End -->
        <style>

            body {
               background:white!important;
            }

        </style>

                

            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
<asp:GridView ID="GridView1" GridLines="None" style="margin-top:-30px;" class="table" runat="server" DataKeyNames="ID,FullName" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" >
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>

                <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                    <th class="px-4 py-3">Client</th>
                    <th class="px-4 py-3">ID</th>
                    <th class="px-4 py-3">Status</th>
                    <th class="px-4 py-3">Email</th>
                    <th class="px-4 py-3">Birthday</th>
                    <th class="px-4 py-3">State</th>
                    <th class="px-4 py-3">Gender</th>
                    <th class="px-4 py-3">PassQuastion</th>
                    <th class="px-4 py-3">PassAnswer</th>
                    <th class="px-4 py-3">MemberJoinedDate</th>
                    <th class="px-4 py-3">Actions</th>
                </tr>


            </HeaderTemplate>
            <ItemTemplate>
                <asp:Panel ID="Panel1" class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800" runat="server" >
                    <tr class="text-gray-700 dark:text-gray-400">
                      <td class="px-4 py-3">
                        <div class="flex items-center text-sm">
                          <!-- Avatar with inset shadow -->
                          <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                            <img class="object-cover w-full h-full rounded-full" src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=200&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjE3Nzg0fQ" alt="" loading="lazy">
                            <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                          </div>
                          <div>
                            <p class="font-semibold" style="margin-bottom:auto"><%# Eval("FullName") %></p>
                          </div>
                        </div>
                      </td>


                        <td class="px-4 py-3 text-sm"><%# Eval("ID") %>
                        </td>


                        <td class="px-4 py-3 text-xs">
                            <span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full dark:bg-green-700 dark:text-green-100">Approved
                            </span>
                        </td>


                        <td class="px-4 py-3 text-sm"><%# Eval("Email") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("Birthday") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("State") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("Gender") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("PassQuastion") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("PassAnswer") %>
                        </td>
                        <td class="px-4 py-3 text-sm"><%# Eval("MemberJoinedDate") %>
                        </td>


                        <td class="px-4 py-3 ">
                            <div class="flex items-center space-x-4 text-sm">
                                <button class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray" aria-label="Edit">
                                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z"></path>
                                    </svg>
                                </button>
                                <button class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray" aria-label="Delete">
                                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
                                    </svg>
                                </button>
                            </div>
                        </td>

                    </tr>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


            

          <!-- End -->


        </div>

</div>
  
</div>



    <style>


        body {
  background: #eecda3;
  background: -webkit-linear-gradient(to right, #eecda3, #ef629f);
  background: linear-gradient(to right, #eecda3, #ef629f);
  min-height: 100vh;
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









        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Users]" DeleteCommand="DELETE FROM [Cart] WHERE [code] = ?">
    <DeleteParameters>
        <asp:Parameter Name="code" Type="String" />
    </DeleteParameters>

</asp:AccessDataSource>
   


</asp:Content>
