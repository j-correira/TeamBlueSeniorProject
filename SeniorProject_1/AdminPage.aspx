﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="SeniorProject_1.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div style="background-color:#dfe6e9;">
    <h1 class="title is-4" style="padding: 20px;">Admin Views</h1>
    </div>

    <div class="box" style="width:80%; margin-top: 30px;">

        <h1 class="title is-5">Select a view and click submit</h1>

        <asp:DropDownList ID="DDL1" runat="server">
            <asp:ListItem>CourseTable</asp:ListItem>
            <asp:ListItem>student1</asp:ListItem>
            <asp:ListItem>Tutor</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Butsubmit" runat="server" Text="Submit" OnClick="Butsubmit_Click" />

        <br />
        <br />

    <asp:GridView ID="GdCourse" runat="server" DataKeyNames="Cid" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" OnRowCancelingEdit="GdCourse_RowCancelingEdit" OnRowDeleting="GdCourse_RowDeleting" OnRowEditing="GdCourse_RowEditing" OnRowUpdating="GdCourse_RowUpdating" GridLines="None" CssClass="table is-striped"></asp:GridView>

    <asp:GridView ID="GdStudent" runat="server" DataKeyNames="Stid" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" OnRowCancelingEdit="GdStudent_RowCancelingEdit" OnRowDeleting="GdStudent_RowDeleting" OnRowEditing="GdStudent_RowEditing" OnRowUpdating="GdStudent_RowUpdating" GridLines="None" CssClass="table is-striped"></asp:GridView>

    <asp:GridView ID="GdTutor" runat="server" DataKeyNames="id" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" OnRowCancelingEdit="GdTutor_RowCancelingEdit" OnRowDeleting="GdTutor_RowDeleting" OnRowEditing="GdTutor_RowEditing" OnRowUpdating="GdTutor_RowUpdating" GridLines="None" CssClass="table is-striped"></asp:GridView>
    </div>

</asp:Content>
