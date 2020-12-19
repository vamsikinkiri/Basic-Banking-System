<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Basic_Bank.WebForm4" Theme="Dark"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 class="Head">Customer View Page</h1><br /><br />
                <asp:GridView ID="GridView1" DataSourceID="SqlDataSource1" runat="server"></asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString='<%$ ConnectionStrings:ITRConnectionString %>'
                    SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                <br /><br />
                <asp:Button CssClass="Btn" ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"></asp:Button>
            </center>
            
        </div>
    </form>
</body>
</html>
