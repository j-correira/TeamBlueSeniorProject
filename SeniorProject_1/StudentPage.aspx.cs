using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// used to sent gmail  (we can expand this to other services)
// TODO: not sure how to use using @NEIT.edu
using System.Net;
using System.Net.Mail;



namespace SeniorProject_1
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LitJoinDate.Text = DateTime.Now.ToString();
        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[student1] (Stfname,Stlname,Stfathername,StfatherPhone,StEmail,Stphone,CourseJoin,CourseFees,Firstinstallment,FeesDues,JoinDate,username,password) " +
                "values(@Stfname,@Stlname,@Stfathername,@StfatherPhone,@StEmail,@Stphone,@CourseJoin,@CourseFees,@Firstinstallment,@FeesDues,@JoinDate,@username,@password)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();

            // inserts to team blue database using paramaters passed in
            sqlcomm.Parameters.AddWithValue("@Stfname", TxtStFName.Text);
            sqlcomm.Parameters.AddWithValue("@Stlname", TxtStLName.Text);
            sqlcomm.Parameters.AddWithValue("@Stfathername", TxtFatherName.Text);
            sqlcomm.Parameters.AddWithValue("@StfatherPhone", TxtFatherPhone.Text);
            sqlcomm.Parameters.AddWithValue("@StEmail", TxtStEmail.Text);
            sqlcomm.Parameters.AddWithValue("@Stphone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@CourseJoin", DDLCourseName.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@CourseFees", LabCourseFees.Text);
            sqlcomm.Parameters.AddWithValue("@Firstinstallment", TxtCourseInstallment.Text);
            sqlcomm.Parameters.AddWithValue("@FeesDues", LabDueFees.Text);
            sqlcomm.Parameters.AddWithValue("@JoinDate", LitJoinDate.Text);
            sqlcomm.Parameters.AddWithValue("@username", TxtSUsername.Text);
            sqlcomm.Parameters.AddWithValue("@password", TxtSPassword.Text);

            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The student " + TxtStFName.Text + " " + TxtStLName.Text + " has been saved!!! <br/> The fees has been sent to " + TxtStEmail.Text;

            MailMessage mm = new MailMessage("teamBlue425@gmail.com", TxtStEmail.Text);
            mm.Subject = "Team Blue registration: Receipt Details..!";
            mm.Body = "You just joined the class " + DDLCourseName.SelectedItem.Text + " Your current fees are: " + LabCourseFees.Text +
                " and the installement you have paid so far is " + TxtCourseInstallment.Text +
                "<br/> " +
                "The balance Fees are: " + LabDueFees.Text + "<br/>" +
                "Your credentials are: <br/>" +
                "Username: " + TxtSUsername.Text + "<br/>" +
                "Password: " + TxtSPassword.Text +
                "<br/><h3 style='color:red'>Note: You wont be able to register for next term until the balance amount is clear</h3>";
            mm.IsBodyHtml = true;

            //just plain GMAIL config here
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;

            // had to create new gmail account to test
            NetworkCredential nc = new NetworkCredential("teamBlue425@gmail.com", "teamBlue4252021");

            smtp.UseDefaultCredentials = false;
            smtp.Credentials = nc;
            smtp.EnableSsl = true;
            smtp.Send(mm);
            sqlconn.Close();
        }

        protected void DDLCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlquery = "select * from [dbo].[CourseTable] where Cname=@Cname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cname", DDLCourseName.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                LabCourseFees.Text = sdr["Cfees"].ToString();
            }

            sqlconn.Close();
        }

        protected void TxtCourseInstallment_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(LabCourseFees.Text) - Convert.ToInt32(TxtCourseInstallment.Text);
            LabDueFees.Text = balance.ToString();
        }
    }
}