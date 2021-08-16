<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="SeniorProject_1.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="background-color:#dfe6e9;">
    <h1 class="title is-4" style="padding: 20px;">Adding new Course</h1>
    </div>


    <div style="background-color:azure; text-align:center">



    <center>


    <div class="box" style="width:80%; margin-top: 30px;">
    <table class="table is-striped">
        <tr>
            <td>Course name:</td>
            <td><asp:TextBox ID="TxtCourseName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Course duration:</td>
            <td>
                <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Course fees:</td>
            <td>
                <asp:TextBox ID="TxtFees" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            
            <td>
                <asp:Button ID="ButCourse" runat="server" Text="Insert New Course" OnClick="ButCourse_Click" /></td>
            <td>
                <asp:Label ID="LabMsg" runat="server" Text=" " ForeColor="Green"></asp:Label></td>
        </tr>
    </table>
        </div>




        </center>
       </div>
</asp:Content>
