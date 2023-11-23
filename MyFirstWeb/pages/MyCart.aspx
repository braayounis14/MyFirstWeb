<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="MyFirstWeb.pages.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    sdadsaadsadsadsadsadsads
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart] where ([Email]=?)">
        <SelectParameters>
            <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
        </SelectParameters>
    </asp:AccessDataSource>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1"></asp:GridView>

    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="label" runat="server" Text="Label"></asp:Label>

    <asp:Button ID="BtnCheckOut" runat="server" Text="Check Out" Visible="False" OnClick="BtnCheckOut_Click" />
</asp:Content>
