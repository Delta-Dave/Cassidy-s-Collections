<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="Cassidy.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link rel="stylesheet" href="products.css?v=<?=time();?>"/>
</head>
<body>
    <form id="form1" runat="server">

    <nav>
        <a href="LandingPage.aspx" style="float:left;">Home</a>
        <img src=".\Images\navlogo.png" alt="logo1" style="padding-left:43%;"/>
        <a href="Login.aspx" style="float:right;"><asp:Label ID="LoginStatus" runat="server"></asp:Label></a>
    </nav>

    <div>
    
        <h1>Best Sellers  </h1>
    
    </div>

    <div class="products">
        <div class="product">
            <asp:Image ID="Image1" runat="server"  /> <br />
            <asp:Label ID="Name1" runat="server" Text="Label" Font-Bold="True"></asp:Label> <br />
            <asp:Label ID="Desc1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
        <div class="product">
            <asp:Image ID="Image2" runat="server"  /> <br />
            <asp:Label ID="Name2" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Desc2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
        <div class="product">
            <asp:Image ID="Image3" runat="server" /><br />
            <asp:Label ID="Name3" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Desc3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
        <div class="product">
            <asp:Image ID="Image4" runat="server" /><br />
            <asp:Label ID="Name4" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Desc4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button4" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
        <div class="product">
            <asp:Image ID="Image5" runat="server" /><br />
            <asp:Label ID="Name5" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Desc5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button5" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
        <div class="product">
            <asp:Image ID="Image6" runat="server" /><br />
            <asp:Label ID="Name6" runat="server" Text="Label" Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Desc6" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button6" runat="server" Text="Add to Cart" OnClick="Add_to_Cart" />
        </div>
    </div>
       
        <p>
        </p>
       
    </form>
</body>
</html>
