using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_AddSlider : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();

    SqlConnection objConnection;
    SqlCommand objCommand;
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

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (btnSubmit.Text == "New")
        {
            lblMessage.Text = "";
            btnSubmit.Text = "Save";
            TextReadFalse();
        }
        else
        {
            

            try
            {
                objConnection = new SqlConnection(connStr);

                string inscmd = "Insert into Slider (ImageUrl,HContent,SContent) values('" + txtImageUrl.Text + "','" + txtHeadingContent.Text + "','" + txtSpanContent.Text + "')";

                objCommand = new SqlCommand(inscmd, objConnection);

                objConnection.Open();

                objCommand.ExecuteNonQuery();

                objCommand.Dispose();

                objConnection.Close();

                lblMessage.Text = "Record Saved !!!";

                txtImageUrl.Text = "";
                txtHeadingContent.Text = "";
                txtSpanContent.Text = "";
                //btnSubmit.Text = "New";
                //TextReadTrue();
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
                btnSubmit.Text = "New";
                TextReadTrue();
            }
        }
    }

    string fupload;
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        fupload = "";

        if (imgUpload.HasFile)
        {
            filename = Path.GetFileName(imgUpload.PostedFile.FileName);

            imgUpload.PostedFile.SaveAs(Server.MapPath("../ADManager/Images/" + filename));

            fupload = "../ADManager/Images/" + filename.ToString();

            txtImageUrl.Text = fupload;
        }
    }

    public void TextReadTrue()
    {
        btnUpload.Enabled = false;
        imgUpload.Enabled = false;
        txtHeadingContent.ReadOnly = true;
        txtSpanContent.ReadOnly = true;
    }

    public void TextReadFalse()
    {
        btnUpload.Enabled = true;
        imgUpload.Enabled = true;
        txtHeadingContent.ReadOnly = false;
        txtSpanContent.ReadOnly = false;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        btnSubmit.Text = "New";
        TextReadTrue();
        txtImageUrl.Text = "";
        txtHeadingContent.Text = "";
        txtSpanContent.Text = "";
        lblMessage.Text = "";

    }
}