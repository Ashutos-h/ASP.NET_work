<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateSlider.aspx.cs" Inherits="ADManager_Default2" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Slider Update/Delete</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Slider Update/Delete
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>SNo</th>
                                <th>Image</th>
                                <th>Head Content</th>
                                <th>Span Content</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                string searchCmd = "Select * from Slider";
                                SqlConnection objConnection = new SqlConnection(connStr);
                                SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                                objConnection.Open();
                                SqlDataReader objReader = objCommand.ExecuteReader();
                                while(objReader.Read())
                                {
                                 %>
                            <tr class="odd gradeX">
                                <td><%Response.Write(objReader.GetValue(0).ToString()); %></td>
                                <td><img src="<%Response.Write(objReader.GetValue(1).ToString()); %>" class="thumbnail" style="height:100px" /></td>
                                <td><%Response.Write(objReader.GetValue(2).ToString()); %></td>
                                <td class="center"><%Response.Write(objReader.GetValue(3).ToString()); %></td>
                                <td class="center"><a href="#" class="btn btn-info" >Update</a>&nbsp;<a href="#" class="btn btn-danger" >Delete</a></td>
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

