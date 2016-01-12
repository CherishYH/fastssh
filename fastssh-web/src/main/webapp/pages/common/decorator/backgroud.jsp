<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/pages/common/util/taglibs.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="<%=contextPath%>/bootstrap/css/bootstrap.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/font-awesome/css/font-awesome.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<%=contextPath%>/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<%=contextPath%>/css/AdminLTE.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<%=contextPath%>/css/skins/_all-skins.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/daterangepicker/daterangepicker-bs3.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="<%=contextPath%>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="<%=contextPath%>/js/html5shiv.min.js"></script>
        <script src="<%=contextPath%>/js/respond.js"></script>
        <![endif]-->
        <!-- jQuery 2.1.4 -->
        <script src="<%=contextPath%>/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="<%=contextPath%>/js/jquery-ui.min.js"></script>
        <sitemesh:write property='head'/>
        <title><sitemesh:write property='title'/></title>
        <script type="text/javascript">
            //全局Root Path变量
            var contextPath = "<%=contextPath%>/";
        </script>
    </head>
    <body class="<sitemesh:write property='body.class'/>">
        <sitemesh:write property='body'/>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <!-- Bootstrap 3.3.5 -->
        <script src="<%=contextPath%>/bootstrap/js/bootstrap.js"></script>
        <%--<!-- Morris.js charts -->--%>
        <%--<script src="<%=contextPath%>/js/raphael-min.js"></script>--%>
        <%--<script src="<%=contextPath%>/plugins/morris/morris.js"></script>--%>
        <!-- Sparkline -->
        <script src="<%=contextPath%>/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="<%=contextPath%>/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="<%=contextPath%>/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="<%=contextPath%>/plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="<%=contextPath%>/js/moment.min.js"></script>
        <script src="<%=contextPath%>/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="<%=contextPath%>/plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="<%=contextPath%>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="<%=contextPath%>/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="<%=contextPath%>/plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="<%=contextPath%>/js/app.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<%=contextPath%>/js/demo.js"></script>
        <%--<!-- AdminLTE dashboard demo (This is only for demo purposes) -->--%>
        <%--<script src="<%=contextPath%>/js/pages/dashboard.js"></script>--%>
    </body>
</html>