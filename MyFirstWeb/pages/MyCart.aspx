<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="MyFirstWeb.pages.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    sdadsaadsadsadsadsadsads
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart] where ([Email]=?)" DeleteCommand="DELETE FROM [Cart] WHERE [code] = ?">
    <DeleteParameters>
        <asp:Parameter Name="code" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
</asp:AccessDataSource>

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code,Email,datebuy" 
            DataSourceID="AccessDataSource1" OnDataBound="GridView1_DataBound" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Info" HeaderText="Info" SortExpression="Info" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# DataBinder.Eval   (Container.DataItem,"image","{0}") %>' Width="246px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="datebuy" HeaderText="datebuy" ReadOnly="True" SortExpression="datebuy" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="label" runat="server" Text="Label"></asp:Label>

    <asp:Button ID="BtnCheckOut" runat="server" Text="Check Out" Visible="False" OnClick="BtnCheckOut_Click" />
</asp:Content>
