<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台管理系统</title>
    <link href="image/css/framework-font.css" rel="stylesheet" />
    <script src="image/js/jquery/jquery-2.1.1.min.js"></script>
    <script src="image/js/bootstrap/bootstrap.js"></script>
    <link href="image/js/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="image/js/dialog/dialog.js"></script>
    <script src="image/js/cookie/jquery.cookie.js"></script>
    <link href="image/css/framework-theme.css" rel="stylesheet" />
    <script src="image/js/framework-ui.js"></script>
    <script src="image/js/framework-clientdata.js"></script>
</head>
<body style="overflow: hidden;">
    <form id="form1" runat="server">

        <div id="ajax-loader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #fff; z-index: 10000; overflow: hidden;">
            <img src="image/img/ajax-loader.gif" style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;" />
        </div>


        <div id="theme-wrapper">
            <header class="navbar" id="header-navbar">
                <div class="container" style="padding-right: 0px;">
                    <a href="#" id="logo" class="navbar-brand">网站后台管理系统</a>
                    <div class="clearfix">

                        <div class="nav-no-collapse pull-right" id="header-nav">
                            <ul class="nav navbar-nav pull-right">





                                <li class="dropdown profile-dropdown">
                                    <a href="#" class="dropdown" data-toggle="dropdown" aria-expanded="true">
                                        <img src="image/img/samples/scarlet-159.png" alt="">
                                        <span class="hidden-xs">
                                            <asp:Literal ID="Literal3" runat="server"></asp:Literal></span>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="../default.aspx" target="_blank"><i class="fa fa-home"></i>网站首页</a></li>
                                        <li><a class="menuItem" data-id="userInfo" href="system/adminpass.aspx"><i class="fa fa-user"></i>密码修改</a></li>

                                        <li class="divider"></li>
                                        <li><a href="login.aspx"><i class="ace-icon fa fa-power-off"></i>安全退出</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>
            <div id="page-wrapper" class="container">
                <div class="row">
                    <div id="nav-col">
                        <section id="col-left" class="col-left-nano">
                            <div id="col-left-inner" class="col-left-nano-content">
                                <div id="user-left-box" class="clearfix hidden-sm hidden-xs dropdown profile2-dropdown">
                                    <div class="text-center">
                                        <img alt="" src="image/img/samples/scarlet-159.png" />
                                    </div>
                                    <div class="user-box">
                                        <div class="text-center">
                                            <span class="name">
                                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>;<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
                                        <ul class="nav nav-pills nav-stacked">




                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>会员管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="members/Add.aspx" data-index="2">添加会员信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="members/Manage.aspx" data-index="2">管理会员信息</a>
                                                    </li>

                                                </ul>
                                            </li>



                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>狗狗种类管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="dog/Add.aspx" data-index="2">添加狗狗种类信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="dog/Manage.aspx" data-index="2">管理狗狗种类信息</a>
                                                    </li>

                                                </ul>
                                            </li>


                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>狗狗训练管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="train/Add.aspx" data-index="2">添加狗狗训练信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="train/Manage.aspx" data-index="2">管理狗狗训练信息</a>
                                                    </li>

                                                </ul>
                                            </li>


                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>狗狗护理管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="nurse/Add.aspx" data-index="2">添加狗狗护理信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="nurse/Manage.aspx" data-index="2">管理狗狗护理信息</a>
                                                    </li>

                                                </ul>
                                            </li>



                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>新闻资讯管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="news/Add.aspx" data-index="2">添加新闻资讯信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="news/Manage.aspx" data-index="2">管理新闻资讯信息</a>
                                                    </li>

                                                </ul>
                                            </li>


                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>商城管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="productType/Add.aspx" data-index="2">添加商品类别信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="productType/Manage.aspx" data-index="2">管理商品类别信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="products/Add.aspx" data-index="2">添加商品信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="products/Manage.aspx" data-index="2">管理商品信息</a>
                                                    </li>

                                                </ul>
                                            </li>


                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>订单管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="orders/Manage.aspx" data-index="2">管理订单信息</a>
                                                    </li>

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="orders/Manage3.aspx" data-index="2">订单统计</a>
                                                    </li>

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="orders/Manage2.aspx" data-index="2">管理商品评价</a>
                                                    </li>
                                                </ul>
                                            </li>




                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>留言板管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="board/Manage.aspx" data-index="2">管理留言板信息</a>
                                                    </li>

                                                </ul>
                                            </li>

                                            <%if (Session["qx"].ToString() == "超级管理员")
                                                { %>


                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>管理员管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="admin/Add.aspx" data-index="2">添加管理员信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="admin/Manage.aspx" data-index="2">管理管理员信息</a>
                                                    </li>

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="system/adminpass.aspx" data-index="2">修改登录密码</a>
                                                    </li>
                                                </ul>
                                            </li>

                                            <%}
                                            else
                                            { %>

                                            <li class="">
                                                <a href="#" class="dropdown-toggle"><i class="fa fa-tags"></i><span>管理员管理</span></a>
                                                <ul class="submenu" style="display: none; overflow: auto;">

                                                    <li>
                                                        <a class="menuItem" data-id="m2" href="system/adminpass.aspx" data-index="2">修改登录密码</a>
                                                    </li>



                                                </ul>
                                            </li>
                                            <%} %>
                                        </ul>
                                    </div>

                                </div>

                            </div>
                        </section>
                    </div>
                    <div id="content-wrapper">
                        <div class="content-tabs">
                            <button class="roll-nav roll-left tabLeft">
                                <i class="fa fa-backward"></i>
                            </button>
                            <nav class="page-tabs menuTabs">
                                <div class="page-tabs-content" style="margin-left: 0px;">
                                    <a href="javascript:;" class="menuTab active" data-id="right.aspx">欢迎来到首页</a>
                                </div>
                            </nav>
                            <button class="roll-nav roll-right tabRight">
                                <i class="fa fa-forward" style="margin-left: 3px;"></i>
                            </button>
                            <div class="btn-group roll-nav roll-right">
                                <button class="dropdown tabClose" data-toggle="dropdown">
                                    页签操作<i class="fa fa-caret-down" style="padding-left: 3px;"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="tabReload" href="javascript:void();">刷新当前</a></li>
                                    <li><a class="tabCloseCurrent" href="javascript:void();">关闭当前</a></li>
                                    <li><a class="tabCloseAll" href="javascript:void();">全部关闭</a></li>
                                    <li><a class="tabCloseOther" href="javascript:void();">保留当前</a></li>
                                </ul>
                            </div>
                            <button class="roll-nav roll-right fullscreen"><i class="fa fa-arrows-alt"></i></button>
                        </div>
                        <div class="content-iframe" style="background-color: #f9f9f9; overflow: hidden;">
                            <div class="mainContent" id="content-main" style="margin: 10px; margin-bottom: 0px; padding: 0;">
                                <iframe class="NFine_iframe" width="100%" height="100%" src="right.aspx" frameborder="0" data-id="right.aspx"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="loadingPage" style="display: none;">
            <div class="loading-shade"></div>
            <div class="loading-content" onclick="$.loading(false)">数据加载中，请稍后…</div>
        </div>
        <script src="image/js/index.js"></script>
        <script src="image/js/indextab.js"></script>
        <script src="image/js/loading/pace.min.js"></script>

    </form>
</body>
</html>

