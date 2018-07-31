using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADManager_TopMenu : System.Web.UI.UserControl
{
    static string uname;
    static int id;
    static int roleid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        { 
        try
        {
            uname = Session["UName"].ToString();
            id = int.Parse(Session["UserId"].ToString());
            roleid = int.Parse(Session["RoleId"].ToString());
            if (roleid.Equals(1))
            {
                if (uname.Equals("") && id.Equals(""))
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    lblUserName.Text = uname;
                }
            }
            else { Response.Redirect("Login.aspx"); }




        }
        catch(Exception ex)
        {
            Response.Redirect("Login.aspx");
        }
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Session["UName"]="";
        //Session["UserId"] = "";
        //Session["RoleId"]="";
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}