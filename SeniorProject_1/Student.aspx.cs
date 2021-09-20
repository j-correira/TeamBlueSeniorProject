using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeniorProject_1
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=sql.neit.edu,4500;Initial Catalog=se425_teamblue;Persist Security Info=True;User ID=teamblue;Password=neit2021");
            conn.Open();
    
            //session variable
            string stID = (String)System.Web.HttpContext.Current.Session["studentID"];


            //get student info
            SqlCommand command = new SqlCommand("Select Stfname from [student1] where Stid = " + stID, conn);
            object id = command.ExecuteScalar();

            SqlCommand lastName_COMM = new SqlCommand("Select Stlname from [student1] where Stid = " + stID, conn);
            object lastName = lastName_COMM.ExecuteScalar();

            SqlCommand email_COMM = new SqlCommand("Select StEmail from [student1] where Stid = " + stID, conn);
            object email = email_COMM.ExecuteScalar();

            SqlCommand username_COMM = new SqlCommand("Select username from [student1] where Stid = " + stID, conn);
            object username = username_COMM.ExecuteScalar();

            SqlCommand fees_COMM = new SqlCommand("Select FeesDues from [student1] where Stid = " + stID, conn);
            object fees = fees_COMM.ExecuteScalar();

            string student_Fname = id.ToString();
            string student_Lname = lastName.ToString();
            string student_email = email.ToString();
            string student_username = username.ToString();
            string student_fees = fees.ToString();

            name_LBL.Text = student_Fname + " " + student_Lname;
            email_LBL.Text = student_email;
            username_LBL.Text = student_username;
            fees_LBL.Text += student_fees;

            stID_LBL.Text += student_Fname;



            //all student info
            SqlCommand command2 = new SqlCommand("Select Stfname, Stlname, FeesDues from [student1] where Stid = " + stID, conn);
            //object all = command2.ExecuteScalar();

            SqlDataAdapter sda = new SqlDataAdapter(command2);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            //all classes student is signed up for
            SqlCommand command3 = new SqlCommand("Select className, classCredits, TeacherID from [class] where StudentID = " + stID, conn);
            //object classes = command3.ExecuteScalar();

            SqlDataAdapter sda3 = new SqlDataAdapter(command3);
            DataSet ds3 = new DataSet();
            sda3.Fill(ds3);
            //classes_GV.DataSource = ds3;
            //classes_GV.DataBind();






        }

        protected void btnViewClasses_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }

        protected void ViewAssignment_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewSubmitAssignment.aspx");
        }

        protected void logout_BTN_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon(); // log out method
            Response.Redirect("Login.aspx");
        }
    }
}