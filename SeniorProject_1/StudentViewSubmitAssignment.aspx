<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentViewSubmitAssignment.aspx.cs" Inherits="SeniorProject_1.StudentViewSubmitAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Assignments</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>




    <style>
        td {padding: 10px;}
        table {border: none;}
        th {text-align:center}
        .loginBTNs {width: 200px;height: 65px;}

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
</head>
<body>
    <form id="form1" runat="server">



                <center>

                <section class="hero is-info" style="margin-bottom:35px">
                  <div class="hero-body">
                    <p class="title">
                      Assignments
                    </p>
                    <p class="subtitle">View, download and submit assignments</p>
                  </div>
                </section>

                




<section class="section box">
                <div class="container">

            <div class="columns">

                <div class="column">
                    

                    <p class="title" style="text-align: left;">
                            <u>Assignments</u>
                        </p>


                    <div class="accordion" id="accordionExample" style="width: 75%;float: left;">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Week 1
                          </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            <strong>Week 1 Assignments</strong>

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

                          </div>
                        </div>
                      </div>


                      <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Week 2
                          </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                                <strong>Week 2 Assignments</strong>

                          </div>
                        </div>
                      </div>




                      <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed"  type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Week 3
                          </button>
                        </h2>

                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            <strong>Week 3 Assignments</strong>

                          </div>
                        </div>


                      </div>
                    </div>


                    <div style="float: left;">

                    </div>
                </div>

                <div class="column">
                    <p class="title" style="text-align: left;">
                            <u>Submission Area</u>
                        </p>
                <p class="subtitle is-5">Please include last name in file submission (EX: Week1_LASTNAME.doc)</p>


                    <div style="float: left;">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="50px" Width="299px" CssClass="button is-link " />
                        <br />
                        <br />

                        <asp:Button ID="btnUpload" style="width: 145px;" runat="server" Text="Upload" OnClick="Upload" CssClass="button is-success" />
                        <asp:Button ID="butCancel" style="width: 145px;" runat="server" Text="Cancel" CausesValidation="false" OnClick="butCancel_Click" CssClass="button is-warning"/>
                        <br />

                        <asp:Label id="lblSuccess" runat="server"></asp:Label>
                    </div>
                </div>
            </div><!-- /columns -->

    </div>
</section>

</center>

    </form>


            <footer class="footer" style=" width: 100%; bottom:0px; margin-top: 85px;">
  <div class="content has-text-centered">
    <p>
      <strong>Team Blue</strong> • Student Management System - 2021 • <a href="https://github.com/j-correira/TeamBlueSeniorProject"><b>View on github</b></a>
    </p>
  </div>
</footer>


</body>
</html>
