<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Cassidy.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Cassidy's Collections</title>
    <meta charset="utf-8" />
    <link rel="icon" 
      type="image/png" 
      href=".\Images\favicon.png" />
    <link rel="stylesheet" href="stylesheet1.css" />
</head>
<body>
    <nav>
        <a href="ProductPage.aspx" style="float:left;">Products</a>
        <img src=".\Images\navlogo.png" alt="logo1" style="padding-left:41%;"/>
        <a href="Login.aspx" style="float: right;"><asp:Label ID="LoginStatus" runat="server"></asp:Label></a>
    </nav>
    <h1>Cassidy's Collections</h1>
    <p style="float:left">
        Hello! Welcome to Cassidy's Collections Website. My name is Cassidy Reaves,
        CEO and creator of Cassidy's Collections. If you would like to contact me, please refer to the information below
    </p>
    <br />
    <img src=".\Images\landingpage.jpg" alt="landingpage" style="width:33%;margin-left: 33%;margin-right: 33%"/>

    <br />
    <div style="display:inline-flex;">
        <h3 style="margin-right:5px; margin-top:80px" >Facebook: </h3>
        <a href="https://www.facebook.com/cassidyscollections/" style="padding-top: 19px;margin-right:30px; margin-top:70px">Cassidy's Collection</a>
        <h3 style="margin-right:5px;margin-top:80px">Email: </h3>
        <a href="mailto:cassidycollections@gmail.com?subject=From%20Website" style="padding-top: 19px; margin-top:70px">cassidycollections@gmail.com</a>
    </div>  
</body>
</html>
