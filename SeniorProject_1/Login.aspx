<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SeniorProject_1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>

    <!-- Bulma CDN for styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style>
        td {padding: 10px;}
        table {border: none;}
        th {text-align:center}
        .loginBTNs {width: 200px;height: 65px;}
    </style>

</head>
<body>
    <form id="form1" runat="server">
            <center>

                <!-- header -->
                <div id="nav" style="background-color:#48c78e; padding-bottom: 15px;">
                    <h1 class="title is-3" style="color:white; padding-top:20px;">Welcome!</h1>
                    <h2 class="subtitle is-6" style="color:white"><%= DateTime.Now %></h2>
                </div>
                  

                <div style="background-color:#dfe6e9;">
                    <h1 class="title is-4" style="padding: 20px;">Login Page</h1>
                </div>

                                <div id="Carousel" class="carousel slide" data-interval="9000" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="active item">
                        <div class="carousel-caption">
                            <h3>Welcome Students</h3>
                        </div>

        </div>

                <!-- testing button design 
                <div class="box" style="width:80%; margin-top: 30px;">

                    <h1 class="title is-5">Login in as:</h1>

                        <button class="button is-success is-large">
                            <span class="icon">
                                <i class="fas fa-user-graduate"></i>
                            </span>
                            <span>Student</span>
                        </button>

                        <br />
                        <br />

                        <button class="button is-info is-link  is-large">
                            <span class="icon">
                                <i class="fas fa-chalkboard-teacher"></i>
                            </span>
                            <span>Teacher</span>
                        </button>

                        <br />
                        <br />

                        <button class="button is-info is-warning  is-large">
                            <span class="icon"><i class="fas fa-user-cog"></i> </span>
                            <span>Admin</span>
                        </button>
                </div>
                -->


                <div class="box" style="width:40%; margin-top: 30px;">

                    <p class="title is-5">
                        <asp:LinkButton ID="StudentLogin_BTN" runat="server" Text="<i class='fas fa-user-graduate'></i> &nbsp; Student" CssClass="button is-info is-medium loginBTNs" OnClick="StudentLogin_BTN_Click"/>
                    </p>
                    <p class="title is-5">
                        <asp:LinkButton ID="TeacherLogin_BTN" runat="server" Text="<i class='fas fa-chalkboard-teacher'></i> &nbsp; Teacher" CssClass="button is-link is-medium loginBTNs" OnClick="TeacherLogin_BTN_Click"/>
                    </p>
                    <p class="title is-5">
                        <asp:LinkButton ID="Admin_Login_BTN" runat="server" Text="<i class='fas fa-user-cog'></i> &nbsp; Admin" CssClass="button is-medium is-success is-warning loginBTNs" OnClick="Admin_Login_BTN_Click"/>
                    </p>


                </div>







             </center>
    </form>






    <!-- footer -->
    <footer class="footer" style=" width: 100%; bottom:0px; margin-top: 85px;">
      <div class="content has-text-centered">
        <p>
          <strong>Team Blue</strong> • Student Management System - 2021 • <a href="https://github.com/j-correira/TeamBlueSeniorProject"><b>View on github</b>                             <span class="icon"><i class="fab fa-github"></i></span></a>
        </p>
      </div>
    </footer>

</body>
</html>
