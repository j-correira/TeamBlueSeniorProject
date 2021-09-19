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
                  </div>
                </section>




              <!-- new bulma login -->
              <section class="section box">
                <div class="container">
                    <asp:Button ID="AddAssignment" runat="server" Text="Add Assignment" CssClass="button is-link" OnClick="AddAssignment_Click"></asp:Button>      
                    <asp:Button ID="ViewSubmittedAssignment" runat="server" Text="View Submitted Assignment" CssClass="button is-link" OnClick="ViewSubmittedAssignment_Click"></asp:Button>      
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

