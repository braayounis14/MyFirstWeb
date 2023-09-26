<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="MyFirstWeb.pages.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


       <input type="email" id="email" pattern=".+@beststartupever\.com" title="Please enter a valid email address (e.g., user@beststartupever.com)" />
            <asp:TextBox ID="Email1" pattern=".+@beststartupever\.com" runat="server"> </asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />

        </div>
    </form>
</body>
</html>
