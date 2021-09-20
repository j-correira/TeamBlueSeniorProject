<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="SeniorProject_1.Teacher" %>

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

        .classCard {
            width: 77%;
        }

        .classCardHeader {
            background-color: #3e8ed0;
            height: 160px;
        }


        .card-content {
            background-color: transparent;
            padding: 1.5rem;
            background-color: #3e8ed0;
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
                      Teacher - Home
                    </p>
                    <p class="subtitle"><asp:Label ID="teacherID_LBL" runat="server" Text="Welcome, "></asp:Label></p>

                      <asp:Button ID="logout_BTN" runat="server" Text="Log Out" CssClass="button is-warning is-outlined" OnClick="logout_BTN_Click"></asp:Button>

                  </div>
                </section>




              <!-- new bulma login -->
              <section class="section box">
                <div class="container">

                    <p class="title">
                      <u>Classes</u>
                    </p>


                    <br />




                    <div class="columns">



                        <div class="column">                                  
                            <!-- english -->
                            <div class="card classCard">
                              <div class="card-content classCardHeader" style="background-color: #3e8ed0; height: 230px;"">
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
                                    <asp:Button ID="AddAssignment" runat="server" Text="Add Assignment" CssClass="button is-info" OnClick="AddAssignment_Click"></asp:Button>      
                                  </span>
                                </p>
                                <p class="card-footer-item">
                                  <span>
                                    <asp:Button ID="ViewSubmittedAssignment" runat="server" Text="View Submitted Assignment" CssClass="button is-info" OnClick="ViewSubmittedAssignment_Click"></asp:Button>      
                                  </span>
                                </p>
                              </footer>
                            </div>
                    </div> <!-- / column -->







                        <div class="column">                                  
                            <!-- english -->
                            <div class="card classCard">
                              <div class="card-content classCardHeader" style="background-color: #a2aee2; height: 230px;"">
                                <p class="title is-2" style="color:white; text-align: left;">
                                 <u>EN331</u>
                                </p>
                                <p class="subtitle is-3" style="color:white; text-align: left;">
                                  Research Writing
                                </p>
                              </div>
                              <footer class="card-footer">
                                <p class="card-footer-item">
                                  <span>
                                    <button class="button is-link" title="Disabled button" disabled>Add Assignment</button>      
                                  </span>
                                </p>
                                <p class="card-footer-item">
                                  <span>
                                    <button class="button is-link" title="Disabled button" disabled>View Submitted Assignments</button>      
                                  </span>
                                </p>
                              </footer>
                            </div>
                    </div> <!-- / column -->







                    </div> <!-- / columnS -->

                </div> <!-- / container -->
              </section> <!-- / section -->

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

