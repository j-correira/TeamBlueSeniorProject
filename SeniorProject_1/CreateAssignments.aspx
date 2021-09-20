<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="CreateAssignments.aspx.cs" Inherits="SeniorProject_1.CreateAssignments" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload/Download Assigments</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style>
        td {padding: 10px;}
        table {border: none;}
        th {text-align:center}
        .loginBTNs {width: 200px;height: 65px;}
    </style>
</head>
<body>

    <center>

            <section class="hero is-link" style="">
        <div class="hero-body">
        <p class="title">
            Teacher - Create New Assignment
        </p>
        <p class="subtitle">Upload Assignment Document</p>
        </div>
    </section>






<form id="frm" runat="server">
    <div class="box" style="width:80%; margin-top: 50px;height: 380px;padding-top: 50px;">
        <table class="table is-striped">
            <tr>
                <td>Assignment name: </td>
                <td>
                    <asp:TextBox ID="TxtAssignname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Assignment week: </td>
                <td>
                    <asp:TextBox ID="TxtAssignWeek" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Attachment: </td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="38px" Width="299px" CssClass="button is-light" /><br /><br /></td>
            </tr>
                           
            
            <tr>
                <td><asp:Button ID="ButCreateAssignment" runat="server" Text="Insert" OnClick="ButCreateAssignment_Click" CssClass="button is-success" /></td>
                <td>
                    <asp:Button ID="butCancel" runat="server" Text="Go Back" CausesValidation="false" OnClick="butCancel_Click" CssClass="button is-warning" />
                    <br />
                    <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                
            </tr>

        </table>
    </div>
</form>

        </center>


        <footer class="footer" style=" width: 100%; bottom:0px; margin-top: 85px;">
  <div class="content has-text-centered">
    <p>
      <strong>Team Blue</strong> • Student Management System - 2021 • <a href="https://github.com/j-correira/TeamBlueSeniorProject"><b>View on github</b></a>
    </p>
  </div>
</footer>


    </body>
</html>

