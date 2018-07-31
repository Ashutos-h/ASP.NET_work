using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_UpdateSliderAction : System.Web.UI.Page
{
    static int sid;
    SqlConnection objConnection;
    SqlCommand objCommand;
    SqlDataReader objReader;
    string connStr,searchCmd;
    string filename;
    string btn;
    protected void Page_Load(object sender, EventArgs e)
    {
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        try
        { 
        if(!Page.IsPostBack)
        {
                sid = int.Parse(Request.QueryString["sid"].ToString());
                btn = Request.QueryString["btnName"].ToString();
                if(btn.Equals("Update"))
                { 
                objConnection = new SqlConnection(connStr);
                searchCmd = "Select * from Slider where SId='" + sid + "'";

                objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objReader = objCommand.ExecuteReader();
                    if(objReader.Read())
                    {
                        txtImageUrl.Text= objReader.GetValue(1).ToString();
                        txtHeadingContent.Text = objReader.GetValue(2).ToString();
                        txtSpanContent.Text = objReader.GetValue(3).ToString();
                    }
                    objConnection.Close();
                }
                else if(btn.Equals("Delete"))
                {
                    objConnection = new SqlConnection(connStr);
                    searchCmd = "Delete from Slider where SId='" + sid + "'";

                    objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objCommand.ExecuteNonQuery();
                    Response.Redirect("UpdateSlider.aspx");
                    objConnection.Close();
                }
                else
                {
                    Response.Redirect("UpateSlider.aspx");
                }
            }
        }catch(Exception ex)
        {
            Response.Redirect("UpdateSlider.aspx");
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
    //arhan please add update code here....
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        try
        {
            objConnection = new SqlConnection(connStr);

            string inscmd = "Update Slider set ImageUrl='" + txtImageUrl.Text + "',HContent='" + txtHeadingContent.Text + "',SContent='" + txtSpanContent.Text + "' where SId='"+sid+"'";

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
    }
}