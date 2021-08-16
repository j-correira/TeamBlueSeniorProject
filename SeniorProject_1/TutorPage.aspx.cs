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
    public partial class TutorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LitJoinDate.Text = DateTime.Now.ToString();
        }

        protected void ButTutor_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Tutor] (Tname,Temail,Tphone,Tcourse,Tqualification,JoinDate) values(@Tname,@Temail,@Tphone,@Tcourse,@Tqualification,@JoinDate)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();

            // inserts to team blue database using paramaters passed in
            sqlcomm.Parameters.AddWithValue("@Tname", TxtTutorname.Text);
            sqlcomm.Parameters.AddWithValue("@Temail", TxtEmail.Text);
            sqlcomm.Parameters.AddWithValue("@Tphone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@Tcourse", DDLCourse.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Tqualification", TxtQualifications.Text);
            sqlcomm.Parameters.AddWithValue("@JoinDate", LitJoinDate.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The teacher " + TxtTutorname.Text + " has been saved!!!";
            TxtTutorname.Text = "";
            TxtEmail.Text = "";
            TxtPhone.Text = "";
            TxtQualifications.Text = "";


            sqlconn.Close();
        }
    }
}