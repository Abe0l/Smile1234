<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="image/css/framework-font.css" rel="stylesheet" />
    <link href="image/css/framework-login.css" rel="stylesheet" />
    <script src="image/js/jquery/jquery-2.1.1.min.js"></script>
</head>
<body>


    <div class="wrapper">
        <div class="container">
            <div class="logo">
                <i class="fa fa-modx"></i>
                <h1><span>网站后台管理系统</span></h1>
            </div>
            <form class="form" id="from" runat="server">
                <div class="row">
                    <input id="txt_account" type="text" runat="server" placeholder="用户名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="row">
                    <input id="txt_password" type="password" runat="server" placeholder="登录密码">
                    <i class="fa fa-key"></i>
                </div>

                <div class="row">

                    <asp:TextBox ID="code" runat="server" class="validate[required,length[1,32]] Linp1" Style="width: 80px; display: inline;" placeholder="验证码"></asp:TextBox>
                    <img id="imgVerify" src="createCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" style="vertical-align: middle;" width="90" />

                </div>


                <div class="row">

                    <asp:Button ID="login_button" runat="server" Text="登录" Style="text-align: center;" OnClick="login_button_Click" CssClass="button" />
                </div>
                <div class="row">
                </div>
            </form>
            <div class="login_tips"></div>
        </div>
        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>

    <script type="text/javascript">
        (function ($) {
            $('.wrapper').height($(window).height());
            $(".container").css("margin-top", ($(window).height() - $(".container").height()) / 2 - 50);
            $(window).resize(function (e) {
                $('.wrapper').height($(window).height());
                $(".container").css("margin-top", ($(window).height() - $(".container").height()) / 2 - 50);
            });
        })(jQuery);
    </script>

</body>
</html>

