<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="MyFirstWeb.pages.Privacy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Horizontal Scroll</title>
<style>
    body {
        overflow-x: hidden; /* Hide horizontal scrollbar */
    }

    .container {
        width: 2000px; /* Set a width larger than the viewport */
        white-space: nowrap; /* Prevent wrapping */
        cursor: grab; /* Change cursor to grab */
    }
</style>

<div class="container" oncontextmenu="return false">
    <div style="width: 100px; height: 100px; background-color: red; display: inline-block;"></div>
    <div style="width: 100px; height: 100px; background-color: blue; display: inline-block;"></div>
    <div style="width: 100px; height: 100px; background-color: green; display: inline-block;"></div>
    <!-- Add more items as needed -->
</div>
<script>
    const SCROLL_AMOUNT = 100; // Adjust this value to change the scrolling speed

    document.addEventListener("keydown", function (event) {
        if (event.key === "ArrowDown") {
            window.scrollBy({
                top: SCROLL_AMOUNT,
                behavior: 'smooth'
            });
        } else if (event.key === "ArrowUp") {
            window.scrollBy({
                top: -SCROLL_AMOUNT,
                behavior: 'smooth'
            });
        } else if (event.key === "ArrowLeft") {
            window.scrollBy({
                left: -SCROLL_AMOUNT,
                behavior: 'smooth'
            });
        } else if (event.key === "ArrowRight") {
            window.scrollBy({
                left: SCROLL_AMOUNT,
                behavior: 'smooth'
            });
        }
    });


</script>


</asp:Content>
