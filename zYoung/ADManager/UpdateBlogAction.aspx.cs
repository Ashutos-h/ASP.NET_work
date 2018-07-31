using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_UpdateBlogAction : System.Web.UI.Page
{
    static int sid;
    SqlConnection objConnection;
    SqlCommand objCommand;
    SqlDataReader objReader;
    string connStr, searchCmd;
    string filename;
    string btn;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtBName.ReadOnly = true;
        txtBName.CssClass = "form-control";
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        try
        {
            if (!Page.IsPostBack)
            {
                sid = int.Parse(Request.QueryString["sid"].ToString());
                btn = Request.QueryString["btnName"].ToString();
                if (btn.Equals("Update"))
                {
                    objConnection = new SqlConnection(connStr);
                    searchCmd = "Select * from Blogs where BlogId='" + sid + "'";

                    objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objReader = objCommand.ExecuteReader();
                    if (objReader.Read())
                    {
                        txtBlogTitle.Text = objReader.GetValue(1).ToString();
                        txtBContent.Text = objReader.GetValue(2).ToString();
                        txtBlogImgUrl.Text = objReader.GetValue(3).ToString();
                        txtBName.Text= objReader.GetValue(5).ToString();
                    }
                    objConnection.Close();
                }
                else if (btn.Equals("Delete"))
                {
                    objConnection = new SqlConnection(connStr);
                    searchCmd = "Delete from Blogs where BlogId='" + sid + "'";

                    objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objCommand.ExecuteNonQuery();
                    Response.Redirect("UpdateSlider.aspx");
                    objConnection.Close();
                }
                else
                {
                    Response.Redirect("UpateBlog.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("UpdateBlog.aspx");
        }
    }
    string fupload;
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        fupload = "";

        if (imageUpload.HasFile)
        {
            filename = Path.GetFileName(imageUpload.PostedFile.FileName);

            imageUpload.PostedFile.SaveAs(Server.MapPath("../ADManager/Images/" + filename));

            fupload = "../ADManager/Images/" + filename.ToString();

           txtBlogImgUrl.Text = fupload;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        try
        {
            objConnection = new SqlConnection(connStr);

            string inscmd = "Update Blogs set BTitle='" + txtBlogTitle.Text + "',BContent='" + txtBContent.Text + "',ImageUrl='" + txtBlogImgUrl.Text + "',BName='" + txtBName.Text + "' where BlogId='" + sid + "'";

            objCommand = new SqlCommand(inscmd, objConnection);

            objConnection.Open();

            objCommand.ExecuteNonQuery();

            objCommand.Dispose();

            objConnection.Close();

            lblMessage.Text = "Record Saved !!!";
            Response.Write("UpdateBlog.aspx");
            txtBlogTitle.Text = "";
            txtBContent.Text = "";
            txtBlogImgUrl.Text = "";
            txtBName.Text = "";
     
        }
        catch (SqlException ex)
        {
            lblMessage.Text = "Error in Connection" + ex.Message.ToString();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error" + ex.Message.ToString();
        }
    }
}