<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Cassidy.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
     <link rel="stylesheet" href="stylesheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <a href="LandingPage.aspx" style="float:left;">Home</a>
            <a href="ProductPage.aspx"style="float:left;">&nbsp Products</a>
            <a href="Profile.aspx" style="float:right;">Profile</a>
            <img src=".\Images\navlogo.png" alt="logo1" style="padding-left:38.5%;"/>
		</nav>
    <div>
    <h1>Shopping Cart</h1>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [ID], [ProductName] FROM [OrderItem] 
INNER JOIN Products ON OrderItem.ProductID = Products.ProductID
WHERE ([OrderID] = @OrderID)">
            <SelectParameters>
                <asp:SessionParameter Name="OrderID" SessionField="OrderID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductName" DataValueField="ID">
        </asp:DropDownList>
        <asp:Button ID="Removebtn" runat="server" Text="Remove" OnClick="Removebtn_Click" />
        <br />
        <asp:Button ID="CompleteOrderbtn" runat="server" Text="Complete Order" OnClick="CompleteOrderbtn_Click" />
    </form>
</body>
</html>
