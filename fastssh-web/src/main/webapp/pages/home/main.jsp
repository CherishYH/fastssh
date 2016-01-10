<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/pages/common/util/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" charset="utf-8" href="<%=contextPath%>/css/menu-tabs.css">
        <!--iframes自动适应宽高-->
        <script type="text/javascript" language="javascript">
            function iFrameHeight() {
                var ifm= document.getElementById("iframepage");
                var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
                if(ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                    ifm.width = subWeb.body.scrollWidth;
                }
            }
        </script>
        <title>FastSSH 管理平台</title>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!--头部主体-->
            <header class="main-header">
                <!-- Logo -->
                <a href="<%=contextPath%>/main.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>F</b>LT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Fastssh</b>管理平台</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!--缩放导航按钮 屏蔽-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!--缩放导航按钮结束 屏蔽-->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!--站内信主体-->
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">1</span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li class="header">你有1条信息</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li><!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="<%=contextPath%>/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        测试
                                                        <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                                                    </h4>
                                                    <p>测试站内信</p>
                                                </a>
                                            </li><!-- end message -->
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">查看所有信息</a></li>
                                </ul>
                            </li>
                            <!--站内信主体结束-->
                            <!--代办事宜开始-->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">1</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">你有1条代办事宜</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 测试代办事宜
                                                </a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">查看所有</a></li>
                                </ul>
                            </li>
                            <!--代办事宜结束-->
                            <!--工作计划开始 暂时屏蔽-->
                            <%--<li class="dropdown tasks-menu">--%>
                                <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                                    <%--<i class="fa fa-flag-o"></i>--%>
                                    <%--<span class="label label-danger">1</span>--%>
                                <%--</a>--%>
                                <%--<ul class="dropdown-menu">--%>
                                    <%--<li class="header">你有1条计划</li>--%>
                                    <%--<li>--%>
                                        <%--<!-- inner menu: contains the actual data -->--%>
                                        <%--<ul class="menu">--%>
                                            <%--<li><!-- Task item -->--%>
                                                <%--<a href="#">--%>
                                                    <%--<h3>--%>
                                                        <%--测试计划--%>
                                                        <%--<small class="pull-right">90%</small>--%>
                                                    <%--</h3>--%>
                                                    <%--<div class="progress xs">--%>
                                                        <%--<div class="progress-bar progress-bar-aqua" style="width: 90%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
                                                            <%--<span class="sr-only">90% Complete</span>--%>
                                                        <%--</div>--%>
                                                    <%--</div>--%>
                                                <%--</a>--%>
                                            <%--</li><!-- end task item -->--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="footer">--%>
                                        <%--<a href="#">查看所有计划</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <!--工作计划开始 暂时屏蔽-->
                            <!--用户设置开始-->
                            <li class="dropdown user user-menu">
                                <!--用户名-->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="<%=contextPath%>/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">测试用户</span>
                                </a>
                                <!-- 用户设置主体-->
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="<%=contextPath%>/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        <!--用户签名-->
                                        <p>
                                            用户很懒什么也没留下
                                            <!--当前日期-->
                                            <small>10日 一月. 2016</small>
                                            <!--当前日期结束-->
                                        </p>
                                        <!--用户签名结束-->
                                    </li>
                                    <!--用户通讯菜单 屏蔽-->
                                    <%--<li class="user-body">--%>
                                        <%--<div class="col-xs-4 text-center">--%>
                                            <%--<a href="#">Followers</a>--%>
                                        <%--</div>--%>
                                        <%--<div class="col-xs-4 text-center">--%>
                                            <%--<a href="#">Sales</a>--%>
                                        <%--</div>--%>
                                        <%--<div class="col-xs-4 text-center">--%>
                                            <%--<a href="#">Friends</a>--%>
                                        <%--</div>--%>
                                    <%--</li>--%>
                                    <!--用户通讯菜单 屏蔽-->
                                    <!--用户设置页脚-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">设置</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">注销</a>
                                        </div>
                                    </li>
                                    <!--用户设置页脚结束-->
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <!-- 导航栏主体-->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!--用户面板 屏蔽-->
                    <%--<div class="user-panel">--%>
                        <%--<div class="pull-left image">--%>
                            <%--<img src="<%=contextPath%>/img/user2-160x160.jpg" class="img-circle" alt="User Image">--%>
                        <%--</div>--%>
                        <%--<div class="pull-left info">--%>
                            <%--<p>Alexander Pierce</p>--%>
                            <%--<a href="#"><i class="fa fa-circle text-success"></i> Online</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <!--用户面板结束 屏蔽-->
                    <!--导航搜索 暂时屏蔽-->
                    <%--<form action="#" method="get" class="sidebar-form">--%>
                        <%--<div class="input-group">--%>
                            <%--<input type="text" name="q" class="form-control" placeholder="Search...">--%>
                            <%--<span class="input-group-btn">--%>
                              <%--<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>--%>
                            <%--</span>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                    <!--导航搜索 暂时屏蔽-->
                    <!--导航主体-->
                    <ul class="sidebar-menu">
                        <li class="header">管理菜单</li>
                        <li class="active treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
                                <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i> <span>Multilevel</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                                <li>
                                    <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                                    <ul class="treeview-menu">
                                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                        <li>
                                            <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                                            <ul class="treeview-menu">
                                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                            </ul>
                        </li>
                        <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
                        <li class="header">LABELS</li>
                        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <script>
                window.onload=function(){
                    var oBox=document.getElementById('menu-tabs-box');
                    var aSpan=oBox.getElementsByTagName('span');
                    var oMenu=oBox.getElementsByTagName('div')[0];
                    var oUl=oMenu.getElementsByTagName('ul')[0];
                    var aLi=oUl.getElementsByTagName('li');
                    var iW=0;
                    for(var i=0;i<aLi.length;i++)
                    {
                        iW+=aLi[i].offsetWidth;
                    }
                    oUl.style.width=iW+'px';
                    aSpan[0].onclick=function()
                    {
                        var iLeft=oUl.offsetLeft+50;
                        iLeft>=0&&(iLeft=0);
                        oUl.style.left=iLeft+'px';
                    }
                    aSpan[1].onclick=function()
                    {
                        var iLeft=oUl.offsetLeft-50;
                        var maxLeft=oMenu.offsetWidth-oUl.offsetWidth;
                        iLeft<=maxLeft&&(iLeft=maxLeft);
                        oUl.style.left=iLeft+'px';
                    }
                }
            </script>
            <!-- 页面主体 -->
            <div class="content-wrapper">
                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="nav-tabs-custom">
                                <div class="nav-menu-tabs-custom" id="menu-tabs-box">
                                    <span class="button-move-left glyphicon glyphicon-backward"></span>
                                    <div class="tabs-menu">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#activity" data-toggle="tab">首页</a></li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                            <li>
                                                <div class="tab-close">
                                                    <i class="fa fa-fw fa-close" title="关闭"></i>
                                                </div>
                                                <a href="#settings" data-toggle="tab">系统设置</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="button-move-right glyphicon glyphicon-forward"></span>
                                </div>
                                <div class="tab-content">
                                    <!--主页面iframe-->
                                    <iframe src="<%=contextPath%>/test.html" id="iframepage" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" onload="iFrameHeight()" width="99%">

                                    </iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <!--页脚-->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.0
                </div>
                <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
            </footer>
            <!--工具栏主体-->
            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-user bg-yellow"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                                        <p>New phone +1(800)555-1234</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                                        <p>nora@example.com</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-file-code-o bg-green"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                                        <p>Execution time 5 seconds</p>
                                    </div>
                                </a>
                            </li>
                        </ul><!-- /.control-sidebar-menu -->

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="label label-danger pull-right">70%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">
                                        Update Resume
                                        <span class="label label-success pull-right">95%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">
                                        Laravel Integration
                                        <span class="label label-warning pull-right">50%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">
                                        Back End Framework
                                        <span class="label label-primary pull-right">68%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul><!-- /.control-sidebar-menu -->

                    </div><!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                                <p>
                                    Some information about this general settings option
                                </p>
                            </div><!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Allow mail redirect
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                                <p>
                                    Other sets of options are available
                                </p>
                            </div><!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Expose author name in posts
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                                <p>
                                    Allow the user to show his name in blog posts
                                </p>
                            </div><!-- /.form-group -->

                            <h3 class="control-sidebar-heading">Chat Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Show me as online
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                            </div><!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Turn off notifications
                                    <input type="checkbox" class="pull-right">
                                </label>
                            </div><!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Delete chat history
                                    <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                                </label>
                            </div><!-- /.form-group -->
                        </form>
                    </div><!-- /.tab-pane -->
                </div>
            </aside><!-- /.control-sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
    </body>
</html>