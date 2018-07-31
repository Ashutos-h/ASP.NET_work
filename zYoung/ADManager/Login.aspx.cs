using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
            
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection objConnection;
        SqlCommand objCommand;
        SqlDataReader objReader;
        string connStr, searchCmd;
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        objConnection = new SqlConnection(connStr);
        searchCmd = "Select * from login where UName='" + txtEmail.Text + "'and Password='" + txtPassword.Text + "' and RoleId='1'";
        objCommand = new SqlCommand(searchCmd, objConnection);
        objConnection.Open();
        objReader = objCommand.ExecuteReader();
        if (objReader.Read())
        {
            Session["UserId"] = objReader.GetValue(0).ToString();
            Session["UName"] = objReader.GetValue(1).ToString();
            Session["RoleId"] = 1;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        objConnection.Close();

    }
}