using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeniorProject_1
{
    public partial class CreateAssignments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                BindGrid();

            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Id, Name from tblFiles";
                    cmd.Connection = con;
                    con.Open();
                    //GridView1.DataSource = cmd.ExecuteReader();
                    //GridView1.DataBind();
                    con.Close();

                }
            }
        }

        protected void ButCreateAssignment_Click(object sender, EventArgs e)
        {

            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);

            if (filename.Length > 0)
            {
                string extension = System.IO.Path.GetExtension(filename);

                // valid file formats accepted for now
                string[] validExtensions = { ".doc", ".docx", ".txt", ".pdf" };

                if (validExtensions.Any(extension.Contains))
                {

                    // Get the size in bytes of the file to upload.
                    int fileSize = FileUpload2.PostedFile.ContentLength;

                    if (fileSize < 2000000)
                    {
                        string contentType = FileUpload2.PostedFile.ContentType;
                        using (Stream fs = FileUpload2.PostedFile.InputStream)
                        {
                            using (BinaryReader br = new BinaryReader(fs))
                            {
                                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                                string constr = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
                                using (SqlConnection con = new SqlConnection(constr))
                                {
                                    string query = "insert into tblCreateAssignment values (@Name, @WeekNumber, @Data, @ContentType, @fileName)";
                                    using (SqlCommand cmd = new SqlCommand(query))
                                    {
                                        cmd.Connection = con;
                                        cmd.Parameters.AddWithValue("@Name", TxtAssignname.Text);
                                        cmd.Parameters.AddWithValue("@WeekNumber", TxtAssignWeek.Text);
                                        cmd.Parameters.AddWithValue("@Data", bytes);
                                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                                        cmd.Parameters.AddWithValue("@fileName", filename);
                                        con.Open();
                                        cmd.ExecuteNonQuery();
                                        con.Close();

                                    }
                                }
                            }
                        }
                        // use to clear the FileUpload to avoid previuos file insertion
                        FileUpload2.PostedFile.InputStream.Dispose();
                        lblSuccess.Text = "";

                        // calling again to re-populate datagrid after new record insert
                        BindGrid();
                    }
                    else
                    {
                        lblSuccess.Text = "Your file was not uploaded because " +
                                             "it exceeds the 2 MB size limit.";
                        lblSuccess.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblSuccess.Text = "Your file was not uploaded because " +
                                         "it does not have a .doc, .docx, .pdf or .txt extension.";
                    lblSuccess.ForeColor = System.Drawing.Color.Red;
                }


            }
            else
            {
                lblSuccess.Text = "Please select a file to upload";
                lblSuccess.ForeColor = System.Drawing.Color.Red;
            }

            //Response.Redirect(Request.Url.AbsoluteUri);

        }
        
    }
}