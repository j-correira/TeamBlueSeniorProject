<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SeniorProject_1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 100px;
            width: 245px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Team Blue Management System</h1>
                <hr />
                <div style="background-color:azure; " class="auto-style1">
                <table border="1">
                    <tr>
                        <td>Admin user ID</td>
                        <td><asp:TextBox ID="TxtAdminId" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><asp:TextBox ID="TxtPwdAmin" runat="server"></asp:TextBox></td>

                    </tr>

                    <tr>
                        <td><asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click" /></td>
                        <td><asp:Label id="Labmsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                    </tr>

                </table>
                    </div>
            </center>
        </div>
    </form>
</body>
</html>
