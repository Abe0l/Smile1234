<%@ Page Language="C#" AutoEventWireup="true" CodeFile="right.aspx.cs" Inherits="right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="image/css/framework-font.css" rel="stylesheet" />
    <link href="image/css/framework-ui.css" rel="stylesheet" />
    <link href="image/css/framework-theme.css" rel="stylesheet" />
    <link href="image/js/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="image/css/framework-theme.css" rel="stylesheet" />
    <link href="image/css/framework-about.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                    欢迎首页
                </div>
                <div class="panel-body">
                    <table align="center" class="style1" style="line-height: 35px;">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>欢迎您的登录！</td>
                        </tr>
                        <tr>
                            <td>您的登录IP为：<%= Request.UserHostAddress.ToString()=="::1"?"127.0.0.1":Request.UserHostAddress %></td>
                        </tr>
                        <tr>
                            <td>当前时间：<%= DateTime.Now %></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
