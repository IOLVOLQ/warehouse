<%--
  Created by IntelliJ IDEA.
  User: 24238
  Date: 2020/11/17
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <title>仓库管理系统</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/materialdesignicons.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.jsp"><img src="image/logo-sidebar.png" title="欢迎" /></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item"> <a href="introduce.jsp"><i class="mdi mdi-home"></i> 后台首页</a> </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i>仓库介绍</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="introduce.jsp">仓库信息</a> </li>
                                <li> <a href="user.jsp">管理员个人信息</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i>仓库信息管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="index.jsp">仓库信息</a> </li>
                                <li> <a href="import.jsp">入库管理</a> </li>
                                <li> <a href="export.jsp">出库管理</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav active open">
                            <a href="javascript:void(0)"><i class="mdi mdi-account"></i>客户信息管理</a>
                            <ul class="nav nav-subnav">
                                <li class="active"> <a href="provider.jsp.jsp">客户信息</a> </li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <div class="sidebar-footer">
                    <p class="copyright">@ 2020 仓库管理系统</p>
                </div>
            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 欢迎来到我们的管理系统 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="image/hear.png" alt="笔下光年" />
                                <span>设置 <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="user.jsp"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                                <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                <li class="divider"></li>
                                <li> <a href="login.jsp"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title">
                                    <p>主题</p>
                                </li>
                                <li class="drop-skin-li clearfix">
											<span class="inverse">
												<input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
												<label for="site_theme_1"></label>
											</span>
                                    <span>
												<input type="radio" name="site_theme" value="dark" id="site_theme_2">
												<label for="site_theme_2"></label>
											</span>
                                    <span>
												<input type="radio" name="site_theme" value="translucent" id="site_theme_3">
												<label for="site_theme_3"></label>
											</span>
                                </li>
                                <li class="drop-title">
                                    <p>头部</p>
                                </li>
                                <li class="drop-skin-li clearfix">
											<span class="inverse">
												<input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
												<label for="header_bg_1"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_2" id="header_bg_2">
												<label for="header_bg_2"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_3" id="header_bg_3">
												<label for="header_bg_3"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_4" id="header_bg_4">
												<label for="header_bg_4"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_5" id="header_bg_5">
												<label for="header_bg_5"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_6" id="header_bg_6">
												<label for="header_bg_6"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_7" id="header_bg_7">
												<label for="header_bg_7"></label>
											</span>
                                    <span>
												<input type="radio" name="header_bg" value="color_8" id="header_bg_8">
												<label for="header_bg_8"></label>
											</span>
                                </li>
                                <li class="drop-title">
                                    <p>侧边栏</p>
                                </li>
                                <li class="drop-skin-li clearfix">
											<span class="inverse">
												<input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
												<label for="sidebar_bg_1"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
												<label for="sidebar_bg_2"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
												<label for="sidebar_bg_3"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
												<label for="sidebar_bg_4"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
												<label for="sidebar_bg_5"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
												<label for="sidebar_bg_6"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
												<label for="sidebar_bg_7"></label>
											</span>
                                    <span>
												<input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
												<label for="sidebar_bg_8"></label>
											</span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-toolbar clearfix">
                                <a class="btn btn-primary m-r-5" href="#!"><i>供货商信息</i></a>
                                <a class="btn btn-primary m-r-5" href="#!"><i>添加</i></a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>公司ID</th>
                                            <th>公司名称</th>
                                            <th>公司邮箱</th>
                                            <th>公司电话</th>
                                            <th>公司介绍</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('.search-bar .dropdown-menu a').click(function() {
            var field = $(this).data('field') || '';
            $('#search-field').val(field);
            $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
        });
    });
</script>
</body>
</html>
