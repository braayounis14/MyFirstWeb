<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SiteAdminPage.Master" AutoEventWireup="true" CodeBehind="UsersPanel.aspx.cs" Inherits="MyFirstWeb.pages.UsersPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <style>
       a {


            color:red;
        }

    </style>
         <div class="dash-content">

             <asp:GridView ID="GridView1" runat="server" Style="color: var(--text-color)" AutoGenerateColumns="False" DataKeyNames="ID,FullName" DataSourceID="AccessDataSource1">
                 <Columns>

                     <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
                     <asp:BoundField DataField="FullName" HeaderText="FullName" ReadOnly="True" SortExpression="FullName"></asp:BoundField>
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                     <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday"></asp:BoundField>
                     <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                     <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                     <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"></asp:BoundField>
                     <asp:BoundField DataField="PassQuastion" HeaderText="PassQuastion" SortExpression="PassQuastion"></asp:BoundField>
                     <asp:BoundField DataField="PassAnswer" HeaderText="PassAnswer" SortExpression="PassAnswer"></asp:BoundField>
                     <asp:BoundField DataField="MemberJoinedDate" HeaderText="MemberJoinedDate" SortExpression="MemberJoinedDate"></asp:BoundField>
                     <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                 </Columns>
             </asp:GridView>





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

        .dashboard .dash-content {
    padding-top: 50px;
}

.dash-content .title {
    display: flex;
    align-items: center;
    margin: 60px 0 30px 0;
}

    .dash-content .title i {
        position: relative;
        height: 35px;
        width: 35px;
        background-color: var(--primary-color);
        border-radius: 6px;
        color: var(--title-icon-color);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
    }

    .dash-content .title .text {
        font-size: 24px;
        font-weight: 500;
        color: var(--text-color);
        margin-left: 10px;
    }

.dash-content .boxes {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

    .dash-content .boxes .box {
        display: flex;
        flex-direction: column;
        align-items: center;
        border-radius: 12px;
        width: calc(100% / 3 - 15px);
        padding: 15px 20px;
        background-color: var(--box1-color);
        transition: var(--tran-05);
    }

    .dash-content .activity .activity-data {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
}


    </style>

</asp:Content>
