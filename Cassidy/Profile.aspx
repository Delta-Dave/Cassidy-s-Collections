<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Cassidy.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="UserID" runat="server" Text="Please Never See this"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Name" runat="server" Text="First and Last Name goes here"></asp:Label>
        <br />
        <asp:Label ID="Username" runat="server" Text="Username here"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Date" runat="server" Text="Here's a date"></asp:Label>
        
    </div>
    </form>
</body>
</html>
