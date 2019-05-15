<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cassidy.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="products.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<nav> <a href="LandingPage.html">Home</a><a href="ProductPage.aspx">Products</a> </nav>
		<h1>Login</h1>
    &nbsp; User Name:&nbsp;
        <asp:TextBox ID="UserNameTB" runat="server"></asp:TextBox>
        <br /><br />
&nbsp;Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTB" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" />
    
    </div>
        <asp:Label ID="UserID" runat="server" Text="User ID: "></asp:Label>
                <br />
        <asp:Button ID="LogOutBtn" runat="server" OnClick="Button1_Click" Text="Log Out" />
    </form>

</body>
</html>
