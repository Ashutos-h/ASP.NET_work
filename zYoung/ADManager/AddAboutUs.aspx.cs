using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_AddAboutUs : System.Web.UI.Page
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
            try
            {
                objConnection = new SqlConnection(connStr);
                
               string inscmd = "Insert into About (ATitle,AContent,ImageUrl) values('" + txtAboutTitle.Text + "','" + txtAboutContent.Text + "','" + txtAboutImgUrl.Text + "')";

                objCommand = new SqlCommand(inscmd, objConnection);

                objConnection.Open();

                objCommand.ExecuteNonQuery();

                objCommand.Dispose();

                objConnection.Close();

                lblMessage.Text = "Record Saved !!!";

                txtAboutTitle.Text = "";
                txtAboutContent.Text = "";
                txtAboutImgUrl.Text = "";

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
    protected void uploadBtn_Click(object sender, EventArgs e)
    {
        fupload = "";

        if (imgUpload.HasFile)
        {
            filename = Path.GetFileName(imgUpload.PostedFile.FileName);

            imgUpload.PostedFile.SaveAs(Server.MapPath("../ADManager/Images/" + filename));

            fupload = "../ADManager/Images/" + filename.ToString();

            txtAboutImgUrl.Text = fupload;
        }
    }
    public void TextReadTrue()
    {
        txtAboutTitle.ReadOnly = true;
        txtAboutContent.ReadOnly = true;
        txtAboutImgUrl.ReadOnly = true;
        imgUpload.Enabled = false;
        uploadBtn.Enabled = false;
    }
    public void TextReadFalse()
    {
        txtAboutTitle.ReadOnly = false;
        txtAboutContent.ReadOnly = false;
        txtAboutImgUrl.ReadOnly = true;
        imgUpload.Enabled = true;
        uploadBtn.Enabled = true;

    }
    
}