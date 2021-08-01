<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TEST.aspx.cs" Inherits="SeniorProject_1.TEST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Testing DB Connectivity</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Retrieve records from TEST-Person</h1>
        </div>




        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DDDDDD" BorderStyle="Dashed" BorderWidth="2px" Caption="All Users" DataKeyNames="ID" DataSourceID="NEIT_SQL_1" Font-Bold="True" Height="389px" Width="909px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Mname" HeaderText="Mname" SortExpression="Mname" />
                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="NEIT_SQL_1" runat="server" ConnectionString="<%$ ConnectionStrings:se425_teamblue-ConnectionString %>" SelectCommand="SELECT * FROM [TEST_Person]"></asp:SqlDataSource>
            <h1> Test login</h1>
        Username:
        <asp:TextBox ID="username_TXT" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="password_TXT" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="login_BTN" runat="server" OnClick="Button1_Click" Text="Attempt Login" />
        <br />
        <br />
        <asp:Label ID="loginResponse_TXT" runat="server" BackColor="#CCCCCC" Text="-"></asp:Label>




    </form>
</body>
</html>
