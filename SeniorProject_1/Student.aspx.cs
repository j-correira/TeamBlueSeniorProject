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


            //test getting student first name
            SqlCommand command = new SqlCommand("Select Stfname from [student1] where StudentID = " + stID, conn);
            object id = command.ExecuteScalar();


            //all student info
            SqlCommand command2 = new SqlCommand("Select Stfname, Stlname, FeesDues from [student1] where StudentID = " + stID, conn);
            //object all = command2.ExecuteScalar();

            SqlDataAdapter sda = new SqlDataAdapter(command2);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            studentInfo_GV.DataSource = ds;
            studentInfo_GV.DataBind();


            //all classes student is signed up for
            SqlCommand command3 = new SqlCommand("Select className, classCredits, TeacherID from [class] where StudentID = " + stID, conn);
            //object classes = command3.ExecuteScalar();

            SqlDataAdapter sda3 = new SqlDataAdapter(command3);
            DataSet ds3 = new DataSet();
            sda3.Fill(ds3);
            classes_GV.DataSource = ds3;
            classes_GV.DataBind();



            string student_Fname = id.ToString();
            stID_LBL.Text += student_Fname;


        }

        protected void btnViewClasses_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }
    }
}