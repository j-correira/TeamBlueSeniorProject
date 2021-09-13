using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SeniorProject_1
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = StudentUsername_TXT.Text;
            string p = StudentPassword_TXT.Text;


            SqlConnection conn = new SqlConnection("Data Source=sql.neit.edu,4500;Initial Catalog=se425_teamblue;Persist Security Info=True;User ID=teamblue;Password=neit2021");
            conn.Open();

            SqlCommand command = new SqlCommand("Select StudentID from [student1] where username=@u AND password=@p", conn);




            //data table to hold query results

            /*
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            sda.Fill(dt);

            Session["studentID"] = dt;
            */


            command.Parameters.AddWithValue("@u", u);
            command.Parameters.AddWithValue("@p", p);

            object result = command.ExecuteScalar();
            if (result != null)
            {
                string studentID = result.ToString();

                Session["studentID"] = studentID;
                Response.Redirect("Student.aspx");
            }
            else{}



            // int result = command.ExecuteNonQuery();
            /*
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    //pass student id to student homepage via session variable
                    //sda.Fill(dt);

                   // reader.Read();
                    //Session["studentID"] = Convert.ToString(reader[0]);

                    Response.Redirect("Student.aspx");

                }
                else
                {
                    Labmsg.Text = "Failure... 😢 Not logged in";
                }
            }
            */

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}