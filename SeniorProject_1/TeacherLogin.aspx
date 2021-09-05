<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherLogin.aspx.cs" Inherits="SeniorProject_1.TeacherLogin" %>

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


                <section class="hero is-link" style="margin-bottom:35px">
                  <div class="hero-body">
                    <p class="title">
                      Teacher Login Portal
                    </p>
                    <p class="subtitle">
                      <i></i>
                    </p>
                  </div>
                </section>



              <!-- new bulma login -->
              <section class="section box">
                <div class="container">
                    <p class="subtitle">Please login with your Teacher Username & Pasword</p>
                    <div class="field" >
                       <asp:TextBox ID="TeacherUsername_TXT" runat="server" CssClass="input is-info" placeholder="Username"></asp:TextBox>
                    </div>

                    <div class="field"> 
                        <asp:TextBox ID="TeacherPassword_TXT" runat="server" CssClass="input is-info" placeholder="Password" input type="password"></asp:TextBox>
                    </div>

                    <div class="field">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button is-link" OnClick="Button1_Click"/>
                        <br />
                        <br />
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
