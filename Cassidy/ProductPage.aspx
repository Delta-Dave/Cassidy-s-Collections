<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="Cassidy.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Best Sellers</h1>
        <p>
        </p>
    <link rel="stylesheet" href="products.css"/>
    </div>
       <asp:Table id="Table1" runat="server"
        CellPadding="10"
        HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Image ID="Image1" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Image ID="Image2" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Image ID="Image3" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Image ID="Image4" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="Image5" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="Image6" runat="server" Height="223px" Width="239px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Name1" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name2" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name3" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name4" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name5" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Name6" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
           
        </asp:TableRow>
           <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Desc1" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Desc2" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Desc3" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Desc4" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Desc5" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Desc6" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
           
        </asp:TableRow>
    </asp:Table>
       
        <p>
        </p>
       
    </form>
</body>
</html>
