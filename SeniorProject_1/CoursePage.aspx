<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="SeniorProject_1.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is the Course Page</h1>
    <div style="background-color:azure; text-align:center">
    <center>
    <table border="1">
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
        </center>
       </div>
</asp:Content>
