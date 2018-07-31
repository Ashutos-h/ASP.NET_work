<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="AddContactUs.aspx.cs" Inherits="ADManager_AddContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add ContactUs Details</h1>
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
                                            <asp:textbox ID="txtName" runat="server" CssClass="form-control" required></asp:textbox>
                                        </div>
                                       <div class="form-group">
                                            <label>Address Line 1</label>
                                            <asp:textbox ID="txtAddressLine1" runat="server" CssClass="form-control"  required></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>Address Line 2</label>
                                            <asp:textbox ID="txtAddressLine2" runat="server" CssClass="form-control"  required></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>City</label>
                                            <asp:textbox ID="txtCity" runat="server" CssClass="form-control" required></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>State</label>
                                            <asp:textbox ID="txtState" runat="server" CssClass="form-control" required></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>Pin Code</label>
                                            <asp:textbox ID="txtPinCode" runat="server" CssClass="form-control"></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>Mobile No</label>
                                            <asp:textbox ID="txtMobileNo" runat="server" CssClass="form-control" TextMode="Number"></asp:textbox>
                                        </div>
                                    <div class="form-group">
                                            <label>Email Id</label>
                                            <asp:textbox ID="txtEmailId" runat="server" CssClass="form-control" TextMode="Email"></asp:textbox>
                                        </div>
                                        
                                    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="btn btn-info" />
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

