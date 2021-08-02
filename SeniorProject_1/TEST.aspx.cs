using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeniorProject_1
{
    public partial class TEST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string u = username_TXT.Text;
            string p = password_TXT.Text;

            //SqlConnection conn = new SqlConnection("Data Source=;Initial Catalog=;Persist Security Info=True;User ID=;Password=");
            SqlConnection conn = new SqlConnection("Data Source=sql.neit.edu,4500;Initial Catalog=se425_teamblue;Persist Security Info=True;User ID=teamblue;Password=neit2021");
            conn.Open();

            SqlCommand command = new SqlCommand("Select id from [TEST_Person] where username=@u AND password=@p", conn);

            command.Parameters.AddWithValue("@u", u);
            command.Parameters.AddWithValue("@p", p);

            // int result = command.ExecuteNonQuery();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    loginResponse_TXT.Text = "SUCCESS! 😎 Logged in";
                }
                else
                {
                    loginResponse_TXT.Text = "Failure... 😢 Not logged in";
                }
            }

            conn.Close();


        }
    }
}