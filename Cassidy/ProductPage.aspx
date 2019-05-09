<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="Cassidy.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID = "UserID" runat = "server"></asp:Label>

    <div class="products">
        <div class="product">
            <asp:Image ID="Image1" runat="server" ImageUrl="#" Width="200px" />
            <br />
            This is a Product Label

        </div>
            
    </div>
    </form>
</body>
</html>
