﻿using System;
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
    public partial class StudentViewSubmitAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();

                }
            }
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Name, Data, ContentType from tblFiles where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void Upload(object sender, EventArgs e)
        {

            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

            if (filename.Length > 0)
            {
                string extension = System.IO.Path.GetExtension(filename);

                // valid file formats accepted for now
                string[] validExtensions = { ".doc", ".docx", ".txt", ".pdf" };

                if (validExtensions.Any(extension.Contains))
                {

                    // Get the size in bytes of the file to upload.
                    int fileSize = FileUpload1.PostedFile.ContentLength;

                    if (fileSize < 2000000)
                    {
                        string contentType = FileUpload1.PostedFile.ContentType;
                        using (Stream fs = FileUpload1.PostedFile.InputStream)
                        {
                            using (BinaryReader br = new BinaryReader(fs))
                            {
                                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                                string constr = ConfigurationManager.ConnectionStrings["se425_teamblue-ConnectionString"].ConnectionString;
                                using (SqlConnection con = new SqlConnection(constr))
                                {
                                    string query = "insert into tblFilesSubmitted values (@Name, @ContentType, @Data)";
                                    using (SqlCommand cmd = new SqlCommand(query))
                                    {
                                        cmd.Connection = con;
                                        cmd.Parameters.AddWithValue("@Name", filename);
                                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                                        cmd.Parameters.AddWithValue("@Data", bytes);
                                        con.Open();
                                        cmd.ExecuteNonQuery();
                                        con.Close();

                                    }
                                }
                            }
                        }
                        // use to clear the FileUpload to avoid previuos file insertion
                        FileUpload1.PostedFile.InputStream.Dispose();
                        lblSuccess.Text = "Thanks. Your file has been" + "<br />" + "uploaded successfully.";
                        lblSuccess.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        lblSuccess.Text = "Your file was not uploaded because " + "<br />" +
                                             "it exceeds the 2 MB size limit.";
                        lblSuccess.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblSuccess.Text = "Your file was not uploaded because " + "<br />" +
                                         "it does not have a .doc, .docx, .pdf or " + "<br />" + ".txt extension.";
                    lblSuccess.ForeColor = System.Drawing.Color.Red;
                }


            }
            else
            {
                lblSuccess.Text = "Please select a file to upload";
                lblSuccess.ForeColor = System.Drawing.Color.Red;
            }


        }

        protected void butCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }
    }
}