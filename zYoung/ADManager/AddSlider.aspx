<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSlider.aspx.cs" Inherits="ADManager_AddSlider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Slider</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    Add Slider Image
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Heading Content</label>

                                <asp:TextBox ID="txtHeadingContent" runat="server" required="true" Title="Heading Content" class="form-control" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Span Content</label>

                                <asp:TextBox ID="txtSpanContent" runat="server" required="true" Title="Span Content" class="form-control" ></asp:TextBox>
                            </div>

                            <div class="form-group" runat="server">
                                <label>Image Url</label>

                                <asp:TextBox ID="txtImageUrl" runat="server" class="form-control" ReadOnly="true" required="true" Title="Image Url" ></asp:TextBox>
                                <br />
                                <asp:FileUpload ID="imgUpload" runat="server" CssClass="form-control" />
                                <br />

                                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CssClass="btn btn-info" />
                            </div>
                            <asp:Button ID="btnSubmit" Text="New" class="btn btn-info" runat="server" OnClick="btnSubmit_Click" />
                            <asp:Button ID="btnReset" class="btn btn-default" runat="server" Text="Reset" OnClick="btnReset_Click" />
                            <br />
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </div>

                        <!-- /.col-lg-6 (nested) -->
                    </div>

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->

        </div>
        <!-- /.col-lg-12 -->
    </div>
</asp:Content>

