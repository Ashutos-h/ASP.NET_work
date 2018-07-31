<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_LeftSideBar.ascx.cs" Inherits="ADManager_LeftSideBar" %>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="#"><i class="fa fa-sitemap fa-fw"></i>Home<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Contact <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                               <a href="AddContactUs.aspx">Add Contact</a>
                            </li>
                            <li>
                                <a href="UpdateContactUs.aspx">Update/ Delete Contact</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>
                    <li>
                        <a href="#">Logo<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                               <a href="AddLogo.aspx">Add Logo</a>
                            </li>
                            <li>
                                <a href="#">Update/ Delete Logo</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>
                    <li>
                        <a href="#">Slider<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                               <a href="AddSlider.aspx">Add Slider</a>
                            </li>
                            <li>
                                <a href="UpdateSlider.aspx">Update/ Delete Slider</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>
                    <li>
                        <a href="#">Blog<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                               <a href="AddBlog.aspx">Add Blog</a>
                            </li>
                            <li>
                                <a href="#">Update/ Delete Blog</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>
                    <li>
                        <a href="#">About<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                               <a href="AddAboutUs.aspx">Add About</a>
                            </li>
                            <li>
                                <a href="#">Update/ Delete About</a>
                            </li>
                        </ul>
                        <!-- /.nav-third-level -->
                    </li>

                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-files-o fa-fw"></i>Sample Pages<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="blank.html">Blank Page</a>
                    </li>
                    <li>
                        <a href="login.html">Login Page</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
