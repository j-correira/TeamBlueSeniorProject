<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TutorPage.aspx.cs" Inherits="SeniorProject_1.TutorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






    <div style="background-color:#dfe6e9;">
    <h1 class="title is-4" style="padding: 20px;">Adding new Teacher</h1>
    </div>





    <div class="box" style="width:80%; margin-top: 30px;">
        <table class="table is-striped">
            <tr>
                <td>Teacher name: </td>
                <td>
                    <asp:TextBox ID="TxtTutorname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Teacher email: </td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone: </td>
                <td>
                    <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Course: </td>
                <td>
                    <asp:DropDownList ID="DDLCourse" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                        <asp:ListItem Value="0" Text="-- Select the course --"></asp:ListItem>
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:se425_teamblue-ConnectionString %>" SelectCommand="SELECT [Cname] FROM [CourseTable]"></asp:SqlDataSource>
                    </td>
            </tr>
            <tr>
                <td>Qualifications: : </td>
                <td>
                    <asp:TextBox ID="TxtQualifications" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>JoinDate: </td>
                <td>
                    <asp:Literal ID="LitJoinDate" runat="server"></asp:Literal>
                    </td>
            </tr>
            <tr>
            <td>Teacher Username</td>
                <td>
                    <asp:TextBox ID="TxtTUsername" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
            <td>Teacher Password</td>
                <td>
                    <asp:TextBox ID="TxtTPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="ButTutor" runat="server" Text="Insert" OnClick="ButTutor_Click" /></td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>

        </table>
    </div>
</asp:Content>
