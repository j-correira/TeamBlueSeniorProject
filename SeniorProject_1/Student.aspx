<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SeniorProject_1.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is the Student Page</title>
  

    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>We will display the following information to students:</h1>

        </div>

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DDDDDD" BorderStyle="Dashed" BorderWidth="2px" Caption="Student Info" DataKeyNames="ID" DataSourceID="NEIT_SQL_1" Font-Bold="True" Height="389px" Width="909px">
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

    </form>
</body>
</html>
