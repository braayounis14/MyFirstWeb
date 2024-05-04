<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="MyFirstWeb.pages.Privacy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="../styles/Chat.css" rel="stylesheet" />

    <script>
        var chat = document.getElementById('chat');
        chat.scrollTop = chat.scrollHeight - chat.clientHeight;


    </script>

    <style>

        .chat {
            width: 54rem;
            height: 48rem;
        }

        .messages {
            height: 48rem;
        }
    </style>

<div class="dash-content" style="padding: 120px">







     <br />
     <br />
     <br />
    =====================================================================================
     <br />
     <br />
     <br />




       <div class="center" >
                 
      <div class="contacts">
    <i class="fas fa-bars fa-2x"></i>
    <h2>
      Contacts
    </h2>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="AccessDataSource2" DataKeyField="Key" OnItemCommand="DataList2_ItemCommand">
        <ItemTemplate>

            
           
            <asp:LinkButton ID="LinkButton1" runat="server">
    <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
       <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="Label1" />
      </div>
      <div class="message">
        <asp:Label Text='<%# Eval("Body") %>' runat="server" ID="Label2" />
      </div>
    </div>


</asp:LinkButton>
              


        </ItemTemplate>
    </asp:DataList>
           </div>


            <div class="chat">

                <div class="contact bar">
                    <div class="pic stark"></div>
                    <div class="name">
                        Tony Stark
      
                    </div>
                    <div class="seen">
                        Email:<asp:Label Text='<%# Eval("Email") %>' runat="server" ID="lblEmail" />
                        <br />
                        Today at 12:56
                    </div>
                </div>
                   
            
        <asp:DataList ID="DataList1" runat="server" class="messages" DataSourceID="AccessDataSource1" DataKeyField="Key" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>

              

            
      <div class="time">
        <asp:Label Text='<%# Eval("MessageDate") %>' runat="server" ID="lbl_massageTime" />
      </div>

      <div class="<%# Eval("Email").ToString() == "admin@admin.com" ? "message stark" : "message parker" %>">
        <asp:Label Text='<%# Eval("Body") %>' runat="server" ID="Label2" />
      </div>

    



        </ItemTemplate>
    </asp:DataList>
                
    <div class="input">
      <i class="fas fa-camera"></i><i class="far fa-laugh-beam"></i> <asp:TextBox ID="txt_send" runat="server" placeholder="Type your message here!" type="text"></asp:TextBox><asp:LinkButton ID="BtnSend" runat="server" OnClick="BtnSend_Click"><i class="fa-solid fa-paper-plane"></i></asp:LinkButton>
    </div>

 </div>

     </div>


    </div>
         <br />
     <br />
         <br />
     <br />
     <br />
         <br />
     <br />
     <br />
     <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Messages] ORDER BY MessageDate DESC"></asp:AccessDataSource>


    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [UserMessages] ORDER BY MessageDate DESC"></asp:AccessDataSource>
</asp:Content>
