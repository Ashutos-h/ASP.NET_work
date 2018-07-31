<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateBlogAction.aspx.cs" Inherits="ADManager_UpdateBlogAction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Update Blog</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Add Blog Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Blogger Name</label>
                                <asp:TextBox ID="txtBName" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Blog Title</label>
                                <asp:textbox id="txtBlogTitle" runat="server" cssclass="form-control" required></asp:textbox>
                            </div>
                            <div class="form-group">
                                <label>Blog Content</label>
                                <asp:textbox id="txtBContent" runat="server" textmode="MultiLine" height="150px" cssclass="form-control" required></asp:textbox>
                            </div>



                            <div class="form-group">
                                <label>Image Url</label>
                                <asp:textbox id="txtBlogImgUrl" runat="server" cssclass="form-control" required></asp:textbox>
                                <asp:fileupload id="imageUpload" runat="server" cssclass="form-control" />
                                <asp:button id="btnUpload" runat="server" text="Upload" onclick="btnUpload_Click" cssclass="btn btn-info" />
                            </div>
                            <asp:button id="btnSubmit" runat="server" text="New" onclick="btnSubmit_Click" cssclass="btn btn-info" />
                            <asp:label id="lblMessage" runat="server" text=""></asp:label>
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

