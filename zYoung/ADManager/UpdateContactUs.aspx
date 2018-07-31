<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateContactUs.aspx.cs" Inherits="ADManager_UpdateContactUs" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Contact Update/Delete</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Contact Update/Delete
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Compnay Name</th>
                                <th>Address Line</th>
                                <th>City</th>
                                <th>Phone</th>
                                <th>Email Id</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                string searchCmd = "Select * from Contact";
                                SqlConnection objConnection = new SqlConnection(connStr);
                                SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                                objConnection.Open();
                                SqlDataReader objReader = objCommand.ExecuteReader();
                                while(objReader.Read())
                                {
                                 %>
                            <tr class="odd gradeX">
                                <td><%Response.Write(objReader.GetValue(1).ToString()); %></td>
                                
                                <td class="center"><%Response.Write(objReader.GetValue(2).ToString()); %></td>
                                <td><%Response.Write(objReader.GetValue(4).ToString()); %></td>
                                <td><%Response.Write(objReader.GetValue(7).ToString()); %></td>
                                <td><%Response.Write(objReader.GetValue(8).ToString()); %></td>
                                <td class="center">
                                    <a href="UpdateContactAction.aspx?sid=<%Response.Write(objReader.GetValue(0)); %>&btnName=Update" class="btn btn-info" >Update</a>&nbsp;
                                    <a href="UpdateContactAction.aspx?sid=<%Response.Write(objReader.GetValue(0)); %>&btnName=Delete" class="btn btn-danger" >Delete</a></td>
                            </tr>
                            <%
                                }
                                objReader.Close();
                                 %>
                        </tbody>
                    </table>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</asp:Content>

