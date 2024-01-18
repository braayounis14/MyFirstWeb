<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstWeb.pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Orders] where ([Email]=?)">
   
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
</asp:AccessDataSource>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code,Email" 
         DataSourceID="AccessDataSource1"  ShowFooter="True">
         <Columns>
             <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
             <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# DataBinder.Eval   (Container.DataItem,"image","{0}") %>' Width="246px" />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="BuyDate" HeaderText="BuyDate" ReadOnly="True" SortExpression="BuyDate" />
             <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
             <asp:BoundField DataField="Delivered" HeaderText="Delivered" SortExpression="Delivered" />
         </Columns>
     </asp:GridView>


    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="label" runat="server" Text="Label"></asp:Label>

    sdadsa
    <br />
    
    <br />

    <br /><br /><br /><br />
    sdadsa
    <i class="" src="https://cdn-icons-png.freepik.com/512/2432/2432574.png?ga=GA1.1.20119443.1705500421&"></i>

</asp:Content>
