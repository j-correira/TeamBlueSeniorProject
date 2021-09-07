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
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.DataBind();
            }
        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from " + DDL1.SelectedItem.Text;
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (DDL1.SelectedItem.Text == "CourseTable")
            {
                GdCourse.Visible = true;
                GdStudent.Visible = false;
                GdTutor.Visible = false;
                GdCourse.DataSource = dt;
                GdCourse.DataBind();


            }
            else if (DDL1.SelectedItem.Text == "student1")
            {
                GdCourse.Visible = false;
                GdStudent.Visible = true;
                GdTutor.Visible = false;
                GdStudent.DataSource = dt;
                GdStudent.DataBind();
            }
            else
            {
                GdCourse.Visible = false;
                GdStudent.Visible = false;
                GdTutor.Visible = true;
                GdTutor.DataSource = dt;
                GdTutor.DataBind();
            }



            sqlconn.Close();
        }

        protected void GdCourse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdCourse.EditIndex = -1;
        }

        protected void GdCourse_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdCourse.Rows[e.RowIndex];
            int Cid = (int)GdCourse.DataKeys[e.RowIndex].Values[0];
            string cname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Duration = (row.Cells[3].Controls[0] as TextBox).Text;
            string Fees = (row.Cells[4].Controls[0] as TextBox).Text;

            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "UPDATE CourseTable SET Cname=@Cname,Duration=@Duration,Cfees=@Cfees WHERE Cid=@Cid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cid", Cid);
            sqlcomm.Parameters.AddWithValue("@Cname", cname);
            sqlcomm.Parameters.AddWithValue("@Duration", Duration);
            sqlcomm.Parameters.AddWithValue("@Cfees", Fees);

            sqlcomm.ExecuteNonQuery();


            sqlconn.Close();
        }

        protected void GdCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdCourse.EditIndex = e.NewEditIndex;
        }

        protected void GdCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int Cid = (int)GdCourse.DataKeys[e.RowIndex].Values[0];

            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "DELETE from CourseTable WHERE Cid=@Cid ";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cid", Cid);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();


        }

        protected void GdStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdStudent.EditIndex = -1;
        }


        protected void GdStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdStudent.EditIndex = e.NewEditIndex;
        }

        protected void GdStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Stid = (int)GdStudent.DataKeys[e.RowIndex].Values[0];

            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "DELETE from student1 WHERE Stid=@Stid ";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Stid", Stid);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdStudent.Rows[e.RowIndex];
            int Stid = (int)GdStudent.DataKeys[e.RowIndex].Values[0];
            string Stfname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Stlname = (row.Cells[3].Controls[0] as TextBox).Text;
            string Stfathername = (row.Cells[4].Controls[0] as TextBox).Text;
            string StfatherPhone = (row.Cells[5].Controls[0] as TextBox).Text;
            string StEmail = (row.Cells[6].Controls[0] as TextBox).Text;
            string Stphone = (row.Cells[7].Controls[0] as TextBox).Text;
            string CourseJoin = (row.Cells[8].Controls[0] as TextBox).Text;
            string CourseFees = (row.Cells[9].Controls[0] as TextBox).Text;
            string Firstinstallment = (row.Cells[10].Controls[0] as TextBox).Text;
            string FeesDues = (row.Cells[11].Controls[0] as TextBox).Text;

            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "UPDATE student1 SET Stfname=@Stfname,Stlname=@Stlname,Stfathername=@Stfathername,StfatherPhone=@StfatherPhone,StEmail=@StEmail,Stphone=@Stphone," +
                "CourseJoin=@CourseJoin,CourseFees=@CourseFees,Firstinstallment=@Firstinstallment,FeesDues=@FeesDues WHERE Stid=@Stid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Stid", Stid);
            sqlcomm.Parameters.AddWithValue("@Stfname", Stfname);
            sqlcomm.Parameters.AddWithValue("@Stlname", Stlname);
            sqlcomm.Parameters.AddWithValue("@Stfathername", Stfathername);
            sqlcomm.Parameters.AddWithValue("@StfatherPhone", StfatherPhone);
            sqlcomm.Parameters.AddWithValue("@StEmail", StEmail);
            sqlcomm.Parameters.AddWithValue("@Stphone", Stphone);
            sqlcomm.Parameters.AddWithValue("@CourseJoin", CourseJoin);
            sqlcomm.Parameters.AddWithValue("@CourseFees", CourseFees);
            sqlcomm.Parameters.AddWithValue("@Firstinstallment", Firstinstallment);
            sqlcomm.Parameters.AddWithValue("@FeesDues", FeesDues);

            sqlcomm.ExecuteNonQuery();


            sqlconn.Close();
        }

        protected void GdTutor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdTutor.EditIndex = -1;
        }

        protected void GdTutor_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdTutor.Rows[e.RowIndex];
            int id = (int)GdTutor.DataKeys[e.RowIndex].Values[0];
            string Tname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Temail = (row.Cells[3].Controls[0] as TextBox).Text;
            string Tphone = (row.Cells[4].Controls[0] as TextBox).Text;
            string Tcourse = (row.Cells[5].Controls[0] as TextBox).Text;
            string Tqualification = (row.Cells[6].Controls[0] as TextBox).Text;



            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "UPDATE Tutor SET Tname=@Tname,Temail=@Temail,Tphone=@Tphone,Tcourse=@Tcourse,Tqualification=@Tqualification WHERE id=@id";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@id", id);
            sqlcomm.Parameters.AddWithValue("@Tname", Tname);
            sqlcomm.Parameters.AddWithValue("@Temail", Temail);
            sqlcomm.Parameters.AddWithValue("@Tphone", Tphone);
            sqlcomm.Parameters.AddWithValue("@Tcourse", Tcourse);
            sqlcomm.Parameters.AddWithValue("@Tqualification", Tqualification);

            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            GdTutor.DataBind();
        }

        protected void GdTutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GdTutor.DataKeys[e.RowIndex].Values[0];

            string mainconn = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "DELETE from Tutor WHERE id=@id ";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@id", id);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();

            GdTutor.DataBind();


        }

        protected void GdTutor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdTutor.EditIndex = e.NewEditIndex;
        }

        protected void GdTutor_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GdTutor.EditIndex)
            {
                (e.Row.Cells[0].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to edit this row?');";
            }
        }
    }
}