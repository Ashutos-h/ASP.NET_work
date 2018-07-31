<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateContactAction.aspx.cs" Inherits="ADManager_UpdateContactAction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Update ContactUs Details</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Add ContactUs Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Company Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Address Line 1</label>
                                <asp:TextBox ID="txtAddressLine1" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Address Line 2</label>
                                <asp:TextBox ID="txtAddressLine2" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Pin Code</label>
                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Mobile No</label>
                                <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Email Id</label>
                                <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            </div>

                            <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" CssClass="btn btn-info" />
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

