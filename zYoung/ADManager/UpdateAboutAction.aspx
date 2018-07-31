<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateAboutAction.aspx.cs" Inherits="ADManager_UpdateAboutAction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add About Us Details</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Add About Us Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>About Title</label>
                                <asp:TextBox ID="txtAboutTitle" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>About Content</label>
                                <asp:TextBox ID="txtAboutContent" runat="server" CssClass="form-control" TextMode="MultiLine" Height="150px" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Image Url</label>
                                <asp:TextBox ID="txtAboutImgUrl" runat="server" CssClass="form-control" required></asp:TextBox>
                                <asp:FileUpload ID="imgUpload" runat="server" CssClass="form-control" />
                                <asp:Button ID="uploadBtn" runat="server" Text="Upload" OnClick="uploadBtn_Click" CssClass="btn btn-info" />
                            </div>




                            <asp:Button ID="btnNew" runat="server" Text="Save" OnClick="btnNew_Click" CssClass="btn btn-info" />
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

