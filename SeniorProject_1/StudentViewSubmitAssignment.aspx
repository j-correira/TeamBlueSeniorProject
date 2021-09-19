<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentViewSubmitAssignment.aspx.cs" Inherits="SeniorProject_1.StudentViewSubmitAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Assignments</title>
    
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
    <form id="form1" runat="server">
        <div class="container">
            <p>This is the assignment for Week 1</p>
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

        <div>
            <p>This is the submission area:</p> <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Height="38px" Width="299px" /><br /><br />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" CssClass="button is-link" /> 
            <asp:Button ID="butCancel" runat="server" Text="Cancel" CausesValidation="false" OnClick="butCancel_Click" />
            <br />
            <asp:Label id="lblSuccess" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
