<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Cassidy.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel= "stylesheet" href="stylesheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Your Profile</h1>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cameryn %>" SelectCommand="SELECT [OrderID] as [Order Number], [SaleAmount] as [Price] FROM [Orders] WHERE ([CustomerID] = @CustomerID)">

            <SelectParameters>
                <asp:SessionParameter Name="CustomerID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Order Number" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Order Number" HeaderText="Order Number" InsertVisible="False" ReadOnly="True" SortExpression="Order Number" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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

        <br />
        <asp:Button ID="LogOut" runat="server" OnClick="Button1_Click" Text="Log Out" />
    </form>
</body>
</html>
