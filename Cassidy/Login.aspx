<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cassidy.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp; User Name:&nbsp;
        <asp:TextBox ID="UserNameTB" runat="server"></asp:TextBox>
        <br />
&nbsp;Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTB" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" />
    
    </div>
        <asp:Label ID="UserID" runat="server" Text="User ID: "></asp:Label>
    </form>
</body>
</html>
