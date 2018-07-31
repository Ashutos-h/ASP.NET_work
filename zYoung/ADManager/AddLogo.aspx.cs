using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

public partial class AddLogo : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
    SqlCommand objCommand;
    SqlConnection objConnection;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filename = "";
            lblMessage.Text = "";

            TextReadTrue();
        }

    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        if (btnNew.Text == "New")
        {
            lblMessage.Text = "";
            btnNew.Text = "Save";
            TextReadFalse();
        }
        else
        {
            try {
            objConnection = new SqlConnection(connStr);

            string inscmd = "Insert into Logo (ImageUrl,ITagLine) values('" + txtImgUrl.Text + "','" + txtTagLine.Text + "')";

            objCommand = new SqlCommand(inscmd, objConnection);

            objConnection.Open();

            objCommand.ExecuteNonQuery();

            objCommand.Dispose();

            objConnection.Close();

            lblMessage.Text = "Record Saved !!!";

            txtImgUrl.Text = "";
            txtTagLine.Text = "";
            }
            catch (SqlException ex)
            {
                lblMessage.Text = "Error in Connection" + ex.Message.ToString();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error" + ex.Message.ToString();
            }

            finally
            {
                btnNew.Text = "New";
                TextReadTrue();
            }


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

            txtImgUrl.Text = fupload;
        }
    }
    public void TextReadTrue()
    {
        
        txtTagLine.ReadOnly = true;
        txtImgUrl.ReadOnly = true;
        btnUpload.Enabled = false;
        imageUpload.Enabled = false;
    }
    public void TextReadFalse()
    {
        btnUpload.Enabled = true;
        imageUpload.Enabled = true;
        txtTagLine.ReadOnly = false;
        txtImgUrl.ReadOnly = true;
    }

  
}