using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SeniorProject_1
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = TeacherUsername_TXT.Text;
            string p = TeacherPassword_TXT.Text;


            SqlConnection conn = new SqlConnection("Data Source=sql.neit.edu,4500;Initial Catalog=se425_teamblue;Persist Security Info=True;User ID=teamblue;Password=neit2021");
            conn.Open();

            SqlCommand command = new SqlCommand("Select Stid from [student1] where username=@u AND password=@p", conn);

            command.Parameters.AddWithValue("@u", u);
            command.Parameters.AddWithValue("@p", p);

            // int result = command.ExecuteNonQuery();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    Labmsg.Text = "SUCCESS! 😎 Logged in - This will then redirect to 'Student: Home'";
                }
                else
                {
                    Labmsg.Text = "Failure... 😢 Not logged in";
                }
            }

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}