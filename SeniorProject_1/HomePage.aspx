<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SeniorProject_1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 100px;
            width: 245px;
        }



        .section{
            width: 300px;
            border-radius:20px;
                
        }

        .container {
            min-height: 100%;
        }

    </style>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>


                <section class="hero is-warning" style="margin-bottom:35px">
                  <div class="hero-body">
                    <p class="title">
                      Admin Login Portal
                    </p>
                    <p class="subtitle">
                      <i>For administrative use only</i>
                    </p>
                  </div>
                </section>

                <!-- 
                <div style="background-color:azure; " class="auto-style1">
                <table border="1">

                    <tr>
                        <td>Admin user ID</td>
                        <td><asp:TextBox ID="TxtAdminId__OLD" runat="server" CssClass="input is-info" type="email" placeholder="Admin ID"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><asp:TextBox ID="TxtPwdAmin__OLD" runat="server" CssClass="input is-info"></asp:TextBox></td>

                    </tr>

                    <tr>
                        <td><asp:Button ID="ButLogin__OLD" runat="server" Text="Login" OnClick="ButLogin_Click" CssClass="input is-info"/></td>
                        <td><asp:Label id="Labmsg__OLD" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                    </tr>

                </table>

                    </div>
                    -->


              <!-- new bulma login -->
              <section class="section box">
                <div class="container">
                    <p class="subtitle">Please login with your Admin ID & Pasword</p>
                    <div class="field" >
                       <!-- <input class="input" type="email" placeholder="Email"> -->
                       <asp:TextBox ID="TxtAdminId" runat="server" CssClass="input is-info" placeholder="Admin ID"></asp:TextBox>
                    </div>

                    <div class="field">
                        <!-- <input class="input" type="password" placeholder="Password"> -->
                        <asp:TextBox ID="TxtPwdAmin" runat="server" CssClass="input is-info" placeholder="Password" input type="password"></asp:TextBox>
                    </div>

                    <div class="field">
                        <asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click" CssClass="button is-warning"/>
                        <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="ButCancel_Click" CssClass="button is-warning"/>
                        <asp:Label id="Labmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                </div>
              </section>

            </center>

            
    <!-- footer -->
    <footer class="footer" style=" width: 100%; bottom:0px; margin-top: 85px;">
  <div class="content has-text-centered">
    <p>
      <strong>Team Blue</strong> • Student Management System - 2021 • <a href="https://github.com/j-correira/TeamBlueSeniorProject"><b>View on github</b></a>
    </p>
  </div>
</footer>




        </div>
    </form>
</body>
</html>
