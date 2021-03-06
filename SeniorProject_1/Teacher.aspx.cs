using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeniorProject_1
{
    public partial class Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=sql.neit.edu,4500;Initial Catalog=se425_teamblue;Persist Security Info=True;User ID=teamblue;Password=neit2021");
            conn.Open();

            //session variable
            string teacherID = (String)System.Web.HttpContext.Current.Session["teacherid"];
            //teacherID_LBL.Text += teacherID;

            //test getting student first name
            SqlCommand command = new SqlCommand("Select TName from [Tutor] where id = " + teacherID, conn);
            object id = command.ExecuteScalar();

            string teacher_Fname = id.ToString();
            teacherID_LBL.Text += teacher_Fname;

        }

        protected void AddAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAssignments.aspx");

        }

        protected void ViewSubmittedAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherViewSubmittedAssignments.aspx");
        }

        protected void logout_BTN_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon(); // log out method
            Response.Redirect("Login.aspx");
        }
    }
}