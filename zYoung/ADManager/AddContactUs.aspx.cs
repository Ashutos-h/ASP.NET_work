using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ADManager_AddContactUs : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();

    SqlConnection objConnection;
    SqlCommand objCommand;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
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

                string inscmd = "Insert into Contact (Cname,ALine1,ALine2,CCity,CState,CPin,CPhone,CEmailid) values('" + txtName.Text + "','" + txtAddressLine1.Text + "','" + txtAddressLine2.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPinCode.Text + "','" + txtMobileNo.Text + "','" + txtEmailId.Text + "')";

                objCommand = new SqlCommand(inscmd, objConnection);

                objConnection.Open();

                objCommand.ExecuteNonQuery();

                objCommand.Dispose();

                objConnection.Close();

                lblMessage.Text = "Record Saved !!!";

                txtName.Text =" ";
                txtAddressLine1.Text = " ";
                txtAddressLine2.Text = " ";
                txtCity.Text = " ";
                txtState.Text = " ";
                txtPinCode.Text = " ";
                txtMobileNo.Text = " ";
                txtEmailId.Text = " ";

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
    public void TextReadTrue()
    {
        txtName.ReadOnly = true;
        txtAddressLine1.ReadOnly = true;
        txtAddressLine2.ReadOnly = true;
        txtCity.ReadOnly = true;
        txtState.ReadOnly = true;
        txtPinCode.ReadOnly = true;
        txtMobileNo.ReadOnly = true;
        txtEmailId.ReadOnly = true;

    }
    public void TextReadFalse()
    {
        txtName.ReadOnly = false;
        txtAddressLine1.ReadOnly = false;
        txtAddressLine2.ReadOnly = false;
        txtCity.ReadOnly = false;
        txtState.ReadOnly = false;
        txtPinCode.ReadOnly = false;
        txtMobileNo.ReadOnly = false;
        txtEmailId.ReadOnly = false;

    }
}