<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherViewSubmittedAssignments.aspx.cs" Inherits="SeniorProject_1.TeacherViewSubmittedAssignments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <p>This is the submitted assignments for Week 1</p>
            <asp:GridView ID="GridView1" runat="server"   
                AutoGenerateColumns="false" class="table is-striped">  
                    <Columns>  
                        <asp:BoundField DataField="Name" HeaderText="File Name" />  
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                                <ItemTemplate>  
                                    <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                                        CommandArgument='<%# Eval("Id") %>'>
                                    </asp:LinkButton>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                    </Columns>  
            </asp:GridView> 
            <br />
        </div>
    </form>
</body>
</html>
