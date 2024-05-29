<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ContactSupport.aspx.cs" Inherits="MyFirstWeb.pages.ContactSupport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

           <script src="https://kit.fontawesome.com/56446077d3.js" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <link href="../styles/Chat.css" rel="stylesheet" />
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




   <script>
       var chat = document.getElementById('chat');
       chat.scrollTop = chat.scrollHeight - chat.clientHeight;
   </script>

   <style>
       .chat {
           width: 54rem;
           height: 48rem;
       }
       .center {
   margin-top: 175px;
   padding-bottom: 20px;
   height: calc(100vh - 100px);
   display: flex;
   justify-content: center;
   align-items: flex-start;
   left: calc(41% + 12rem);
       }

       body {
           background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.7)), url(../images/c5527f47-def9-433c-9cce-23f286dbfea2_front.jpg);
       }
       .input {
               background: white;
       }




       
        .chat {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    width: 54rem;  /* Adjust as needed */
    height: 45rem; /* Adjust as needed */
    z-index: 2;
    box-sizing: border-box;
    border-radius: 1rem;
    background: white;
    box-shadow: 0 0 8rem 0 rgba(0, 0, 0, 0.1), 0rem 2rem 4rem -3rem rgba(0, 0, 0, 0.5);
}

.messages {
    padding: 1rem;
    background: #F7F7F7;
    flex-grow: 1; /* Allows the messages to take up available space */
    overflow-y: auto; /* Enables vertical scrolling */
    box-shadow: inset 0 2rem 2rem -2rem rgba(0, 0, 0, 0.05), inset 0 -2rem 2rem -2rem rgba(0, 0, 0, 0.05);
}

.messages .message {
    box-sizing: border-box;
    padding: 0.5rem 1rem;
    margin: 1rem;
    background: #FFF;
    border-radius: 1.125rem 1.125rem 1.125rem 0;
    min-height: 2.25rem;
    width: fit-content;
    max-width: 66%;
    box-shadow: 0 0 2rem rgba(0, 0, 0, 0.075), 0rem 1rem 1rem -1rem rgba(0, 0, 0, 0.1);
}

.messages .message.parker {
    margin: 1rem 1rem 1rem auto;
    border-radius: 1.125rem 1.125rem 0 1.125rem;
    background: #333;
    color: white;
}

.input {
    display: flex;
    align-items: center;
    padding: 0 0.5rem 0 1.5rem;
}


   </style>






    <section style="height: 110vh;">

  

       <div class="center">

           <div class="contacts">
               <i class="fas fa-bars fa-2x"></i>
               <h2>Contacts
               </h2>
               <asp:DataList ID="DataList2" runat="server" DataSourceID="AccessDataSource2" DataKeyField="Key" OnItemCommand="DataList2_ItemCommand">
                   <ItemTemplate>

                       <asp:LinkButton ID="LinkButton1" runat="server">
                           <div class="contact">
                               <div class="pic">
                                   <asp:Image ID="Image1" Width="64px" Height="64px" style="border-radius: 50%; " ImageUrl='https://lh3.googleusercontent.com/a/ACg8ocKZbWPOdHmjWfk4JEYzOeuEoOgYnExgYuzsFrdFSWvnoptnSKY=s360-c-no' alt="" runat="server" />

                               </div>
                               <div class="badge">
                                   14
                               </div>
                               <div class="name">
                                   <asp:Label Text='newegghelpteam.il@gmail.com' runat="server" ID="Label1" />
                               </div>
                               <div class="message">
                                   <asp:Label Text='<%# Eval("Subject") %>' runat="server" ID="Label2" />
                               </div>
                           </div>
                       </asp:LinkButton>

                   </ItemTemplate>
               </asp:DataList>
           </div>


           <div class="chat">

               <div class="contact bar">
                   <div class="pic">
                       <img id="ContentPlaceHolder1_DataList2_Image1_0" alt="" src="https://lh3.googleusercontent.com/a/ACg8ocKZbWPOdHmjWfk4JEYzOeuEoOgYnExgYuzsFrdFSWvnoptnSKY=s360-c-no" style="height: 64px; width: 64px; border-radius: 50%;">
                   </div>
                   <div id="lblUserName" runat="server" class="name">
                    
     
                   </div>
                   <div class="seen">
                       Email:<asp:Label Text='' runat="server" ID="lblEmail" />
                       <br />
                       Subject:<asp:Label Text='' runat="server" ID="lblSubject" />
                       <br />
                       Today at:<asp:Label Text='' runat="server" ID="lblDate" />
                       <br /> 
                       <p style="color:red;    font-size: large;" runat="server" ID="lblStatus1"></p>
                   </div>
               </div>


    <div class="messages">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="Key" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="<%# Eval("Email").ToString() == "admin@admin.com" ? "message stark" : "message parker" %>">
                    <asp:Label Text='<%# Eval("Body") %>' runat="server" ID="Label2" />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>


             
               <div class="input">
                   <i class="fas fa-camera"></i><i class="far fa-laugh-beam"></i>
                   <asp:TextBox ID="txt_send" class="input"  required="true" runat="server" placeholder="Type your message here!" type="text"></asp:TextBox><asp:LinkButton ID="BtnSend" runat="server" OnClick="BtnSend_Click"><i class="fa-solid fa-paper-plane"></i></asp:LinkButton>
               </div>



           </div>
       </div>

  
         </section>  

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var chat = document.querySelector('.messages');
            chat.scrollTop = chat.scrollHeight;
        });
    </script>


    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [UserMessages] WHERE ([Key] = ?) ORDER BY [MessageDate] DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="key" Name="Key" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:AccessDataSource>

    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Messages] WHERE ([Email] = ?) ORDER BY [MessageDate]">
        <SelectParameters>
            <asp:SessionParameter SessionField="email" Name="Email" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:AccessDataSource>


</asp:Content>
