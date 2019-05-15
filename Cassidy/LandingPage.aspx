<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Cassidy.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Cassidy's Collections</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="stylesheet1.css" />
</head>
<body>
    <nav>
        <a href="ProductPage.aspx">Products</a>
        <a href="Login.aspx"><asp:Label ID="LoginStatus" runat="server"></asp:Label></a>
    </nav>
    <h1> Cassidy's Collections</h1>
    <img src=".\Images\logo1.png" alt="logo1" style="float:left; height: 53px; width: 65px;" />
    <p style="float:right">
        Hello! Welcome to Cassidy's Collections Website. My name is Cassidy Reaves,
        CEO and creator of Cassidy's Collections. If you would like to contact me, please refer to the information below
    </p>
    <asp:Table id="Table1" runat="server"
               CellPadding="10"
               HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Name1" runat="server"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <img src=".\Images\landingpage.jpg" alt="landingpage" height="300" width="300" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name3" runat="server"></asp:Label>
            </asp:TableCell>

        </asp:TableRow>
    </asp:Table>
    <h3>Facebook</h3>
    <p>Cassidy's Collection</p>
    <h3>Email</h3>
    <p>cassidycollections@gmail.com</p>

</body>
</html>
