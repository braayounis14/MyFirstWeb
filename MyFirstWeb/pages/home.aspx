<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MyFirstWeb.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
    <script src="https://kit.fontawesome.com/56446077d3.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="../styles/style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>



<body>

    <form id="form1" runat="server">




        <div class="wrapper">

            <div class="top_navbar">
                <div class="icon_home">
                    <asp:ImageButton ID="Icon_Home" runat="server" Width="65px" Height="60px" ImageUrl="~/Images/GitHub-Mark.png" PostBackUrl="~/pages/home.aspx" />
                </div>

                <div class="top_menu">
                    <div class="logo">
                        <div>
                            logo
                        </div>
                        <i class="fa-brands fa-instagram"></i>
                    </div>

                    <ul>
                        <li><a href="#">
                            <i class="fas fa-search"></i>
                        </a></li>
                        <li><a href="#">
                            <i class="fas fa-bell"></i>
                        </a></li>
                        <li><a href="Login.aspx">
                            <i class="fas fa-user"></i>
                        </a></li>
                    </ul>
                </div>
            </div>



        </div>

    </form>

    <div></div>
</body>
</html>
