using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_UpdateContactAction : System.Web.UI.Page
{
    static int sid;
    SqlConnection objConnection;
    SqlCommand objCommand;
    SqlDataReader objReader;
    string connStr, searchCmd;
    string btn;
    protected void Page_Load(object sender, EventArgs e)
    {
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
                    searchCmd = "Select * from Contact where CNo='" + sid + "'";

                    objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objReader = objCommand.ExecuteReader();
                    if (objReader.Read())
                    {
                        txtName.Text = objReader.GetValue(1).ToString();
                        txtAddressLine1.Text = objReader.GetValue(2).ToString();
                        txtAddressLine2.Text = objReader.GetValue(3).ToString();
                        txtCity.Text = objReader.GetValue(4).ToString();
                        txtState.Text = objReader.GetValue(5).ToString();
                        txtPinCode.Text = objReader.GetValue(6).ToString();
                        txtMobileNo.Text = objReader.GetValue(7).ToString();
                        txtEmailId.Text = objReader.GetValue(8).ToString();

                    }
                    objConnection.Close();
                }
                else if (btn.Equals("Delete"))
                {
                    objConnection = new SqlConnection(connStr);
                    searchCmd = "Delete from Contact where CNo='" + sid + "'";

                    objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    objCommand.ExecuteNonQuery();
                    Response.Redirect("UpateContactUs.aspx");
                    objConnection.Close();
                }
                else
                {
                    Response.Redirect("UpateContactUs.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("UpateContactUs.aspx");
        }

    }

   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        try
        {
            objConnection = new SqlConnection(connStr);

            string inscmd = "Update Contact set CName='" + txtName.Text + "',ALine1='" + txtAddressLine1.Text + "',ALine2='" + txtAddressLine2.Text + "',CCity='" + txtCity.Text + "',CState='" + txtState.Text + "',CPin='" + txtPinCode.Text + "',CPhone='" + txtMobileNo.Text + "',CEmailId='" + txtEmailId.Text + "' where CNo='" + sid + "'";

            objCommand = new SqlCommand(inscmd, objConnection);

            objConnection.Open();

            objCommand.ExecuteNonQuery();

            objCommand.Dispose();

            objConnection.Close();

            lblMessage.Text = "Record Saved !!!";

            txtName.Text = "";
            txtAddressLine1.Text = "";
            txtAddressLine2.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtPinCode.Text = "";
            txtMobileNo.Text = "";
            txtEmailId.Text = "";
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
        finally {
            Response.Redirect("UpdateContactUs.aspx");
        }
    }
}