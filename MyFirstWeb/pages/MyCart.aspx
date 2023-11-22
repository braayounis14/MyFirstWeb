<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="MyFirstWeb.pages.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    sdadsaadsadsadsadsadsads
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart]"></asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email,DateBuy,Code" DataSourceID="AccessDataSource1" OnDataBinding="GridView1_DataBinding">
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Info" HeaderText="Info" SortExpression="Info"></asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
            <asp:BoundField DataField="DateBuy" HeaderText="DateBuy" SortExpression="DateBuy" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity"></asp:BoundField>
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" InsertVisible="False" ReadOnly="True"></asp:BoundField>
            <asp:ImageField></asp:ImageField>

            <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>

    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="label" runat="server" Text="Label"></asp:Label>

    <asp:Button ID="BtnCheckOut" runat="server" Text="Check Out" Visible="False" OnClick="BtnCheckOut_Click" />
</asp:Content>
