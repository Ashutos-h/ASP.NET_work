<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="AddLogo.aspx.cs" Inherits="AddLogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Logo Details</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
     <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Add LOGO Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                            <label>TagLine</label>
                                            <asp:textbox ID="txtTagLine" runat="server" CssClass="form-control"  required></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Image Url</label>
                                            <asp:textbox ID="txtImgUrl" runat="server" CssClass="form-control" ></asp:textbox><br />
                                            <asp:FileUpload ID="imageUpload" runat="server" CssClass="form-control"/>
                                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CssClass="btn btn-info" />
                                        </div>
                                       
                                    
                                        
                                    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click"  CssClass ="btn btn-info" />
                                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                </div>
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
</asp:Content>

