using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SeniorProject_1
{
    public partial class CoursePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[CourseTable] (Cname,Duration,Cfees) values(@Cname,@Duration,@CFees)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            
            // inserts to team blue database using paramaters passed in
            sqlcomm.Parameters.AddWithValue("@Cname", TxtCourseName.Text);
            sqlcomm.Parameters.AddWithValue("@Duration", TxtDuration.Text);
            sqlcomm.Parameters.AddWithValue("@CFees",TxtFees.Text);
            sqlcomm.ExecuteNonQuery();
            LabMsg.Text = "The course " + TxtCourseName.Text + " has been saved!!!";
            TxtCourseName.Text = "";
            TxtDuration.Text = "";
            TxtFees.Text = "";
            
            sqlconn.Close();
        }
    }
}