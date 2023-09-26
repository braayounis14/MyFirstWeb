<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstWeb.pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



        <div>


            <div>

            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </div>

            <div>   

                 <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>


            </div>


            <div>   

 <asp:Label ID="Label3" runat="server" Text="Birthday"></asp:Label>
 <asp:TextBox ID="TextBox3" type="date" runat="server"></asp:TextBox>


            </div>


            <div>   
                <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>state</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>

            </div>

            <div>   
                <asp:Label ID="Label5" runat="server" Text="Password quastion"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

            </div>
              <div>   
      <asp:Label ID="Label6" runat="server" Text="Password quastion Answer"></asp:Label>
                  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

  </div>

        </div>


    </form>
</body>
</html>
