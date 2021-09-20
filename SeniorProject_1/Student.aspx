<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SeniorProject_1.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        


        .section{
            width: 85%;
            border-radius:20px;
                
        }

        .container {
            min-height: 100%;
        }

        .auto-style1 {
            word-break: break-word;
            color: #4a4a4a;
            font-size: 1.25rem;
            font-weight: 400;
            line-height: 1.25;
            text-decoration: underline;
        }

    </style>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>


                <section class="hero is-info" style="margin-bottom:35px">
                  <div class="hero-body">
                    <p class="title">
                      Student - Home
                    </p>
                    <p class="subtitle"><asp:Label ID="stID_LBL" runat="server" Text="Welcome, "></asp:Label></p>

                      <asp:Button ID="logout_BTN" runat="server" Text="Log Out" CssClass="button is-warning is-outlined" OnClick="logout_BTN_Click"></asp:Button>

                  </div>
                </section>




              <!-- new bulma login -->
              <section class="section box">
                <div class="container">


                    
                    

                <div class="columns">

                    <div class="column">    
                        
                        <p class="title" style="text-align: left;">
                            <u>Student Info</u>
                        </p>

                        <br />

                        
    <table class="table is-bordered is-striped is-hoverable is-fullwidth" style="width: 65%;float: left;">

      <tbody>

        <tr>
          <td><p class="subtitle is-5" style="text-align: left;">
            <i class="fas fa-user"></i> <asp:Label ID="name_LBL" runat="server" Text=""></asp:Label>
        </p></td>
        </tr>

        <tr>
          <td><p class="subtitle is-5" style="text-align: left;">
            <i class="far fa-envelope"></i> <asp:Label ID="email_LBL" runat="server" Text=""></asp:Label>
        </p></td>
        </tr>

        <tr>
          <td><p class="subtitle is-5" style="text-align: left;">
            <i class="far fa-id-card"></i> <asp:Label ID="username_LBL" runat="server" Text=""></asp:Label>
        </p></td>
        </tr>

        <tr>
          <td><p class="subtitle is-5" style="text-align: left;">
            <i class="fas fa-dollar-sign"></i> <asp:Label ID="fees_LBL" runat="server" Text="Fees Due: "></asp:Label>
        </p></td>
        </tr>

      </tbody>
    </table>
  
                    </div> <!-- / column -->

                        <div class="column">    
                            
                            <p class="title" style="text-align: left;">
                            <u>Classes</u>
                        </p>


                            <!-- english -->
                            <div class="card classCard">
                              <div class="card-content classCardHeader" style="background-color: #3e8ed0; height: 140px;"">
                                <p class="title is-2" style="color:white; text-align: left;">
                                 <u>EN421</u>
                                </p>
                                <p class="subtitle is-3" style="color:white; text-align: left;">
                                  Technical Communication
                                </p>
                              </div>
                              <footer class="card-footer">
                                <p class="card-footer-item">
                                  <span>
<asp:Button ID="ViewAssignment_BTN" runat="server" Text="View Assignments" OnClick="ViewAssignment_BTN_Click" CssClass="button is-info"></asp:Button>
                                  </span>
                                </p>
                                <p class="card-footer-item">
                                  <span>
                <button class="button is-info" onclick="location.href='';" disabled>Contact Instructor</button>
                                  </span>
                                </p>
                              </footer>
                            </div>
                    </div> <!-- / column -->



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

