<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_TopMenu.ascx.cs" Inherits="ADManager_TopMenu" %>
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.html">zYoung Admin</a>
</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
    <li class="dropdown">User Name :
        <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
    </li>
    <!-- /.dropdown -->
    
    
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
            </li>
            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
            </li>
            <li class="divider"></li>
            <li>
                <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click"><i class="fa fa-sign-out fa-fw"></i>Logout</asp:LinkButton>
                
            </li>
        </ul>
        <!-- /.dropdown-user -->
    </li>
    <!-- /.dropdown -->
</ul>
<!-- /.navbar-top-links -->

