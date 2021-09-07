<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="SeniorProject_1.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div style="background-color:#dfe6e9;">
    <h1 class="title is-4" style="padding: 20px;">Adding new Student</h1>
    </div>


    <div class="box" style="width:80%; margin-top: 30px;">
        <table class="table is-striped">
            <tr>
                <td>Student First Name</td>
                <td>
                    <asp:TextBox ID="TxtStFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="TxtStFName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td>Student Last Name</td>
                <td>
                    <asp:TextBox ID="TxtStLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name cannot be blank" ControlToValidate="TxtStLName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td>Student Father Name (If dependent)</td>
                <td>
                    <asp:TextBox ID="TxtFatherName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Student Father Phone (If dependent)</td>
                <td>
                    <asp:TextBox ID="TxtFatherPhone" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
            <td>Student Email</td>
                <td>
                    <asp:TextBox ID="TxtStEmail" placeholder="Enter Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TxtStEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtStEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                </td>
            </tr>
            <tr>
            <td>Student Phone</td>
                <td>
                    <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone cannot be blank" ControlToValidate="TxtPhone" ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Phone number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
                </td>
            </tr>
             <tr>
            <td>Course Name</td>
                <td>
                    <asp:DropDownList ID="DDLCourseName" runat="server" AutoPostBack="true" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged">
                        <asp:ListItem Value="0">-- Select course -- </asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:se425_teamblue-ConnectionString %>" SelectCommand="SELECT [Cname] FROM [CourseTable]"></asp:SqlDataSource>
                 </td>
            </tr>
             <tr>
            <td>Course Fees</td>
                <td>
                    <asp:Label ID="LabCourseFees" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
            <td>Payplan - Installment</td>
                <td>
                    <asp:TextBox ID="TxtCourseInstallment" runat="server" AutoPostBack="true" OnTextChanged="TxtCourseInstallment_TextChanged"></asp:TextBox></td>
            </tr>
             <tr>
            <td>Fees Due</td>
                <td>
                    <asp:Label ID="LabDueFees" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
            <td>Join Date</td>
                <td>
                    <asp:Literal ID="LitJoinDate" runat="server"></asp:Literal> </td>
            </tr>
             <tr>
            <td>Student Username</td>
                <td>
                    <asp:TextBox ID="TxtSUsername" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
            <td>Student Password</td>
                <td>
                    <asp:TextBox ID="TxtSPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TxtSPassword" ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtSPassword" ControlToValidate="TxtSPasswordConfirm" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
            <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="TxtSPasswordConfirm" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButStudent" runat="server" Text="Add new Student" OnClick="ButStudent_Click" /></td>
                <td>
                    <asp:Button ID="butCancel" runat="server" Text="Cancel" CausesValidation="false" /></td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text=" " ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
