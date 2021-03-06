﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Basic_Bank.WebForm1" Theme="Dark"%>

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
                <h1 class="Head">Home Page</h1><br />     
                <asp:Button CssClass="Btn" ID="Button3" runat="server" OnClick="Button3_Click" Text="View all Customers"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="Btn" ID="Button1" runat="server" Text="Start Transaction" OnClick="Button1_Click"/>
                <br />
                <br />     
                <asp:Label style="font-size: 20px" ID="Label2" CssClass="Lab" runat="server" Text="Designed by Sai Vamsi Reddy Kinkiri"></asp:Label>
                <br />
                <br /> 
                <asp:Label CssClass="Lab" ID="Label1" runat="server" Text="Select the Customer (Sender) : " Visible="false"></asp:Label>
                &nbsp;
                <asp:DropDownList CssClass="Drop" ID="DropDownList1" runat="server" 
                     AutoPostBack="true" Visible="false"></asp:DropDownList><br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString='<%$ ConnectionStrings:ITRConnectionString %>' 
                    SelectCommand="SELECT * FROM [Customers] WHERE ([Name] = @Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Name" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView CssClass="Grid" ID="GridView1" DataSourceID="SqlDataSource1" runat="server"></asp:GridView><br /><br />
                <asp:Button CssClass="Btn" ID="Button2" Visible="false" runat="server" Text="Transfer Money" OnClick="Button2_Click"/>
             </center>
            </div>
    </form>
</body>
</html>
