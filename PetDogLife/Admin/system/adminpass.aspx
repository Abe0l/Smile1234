<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="adminpass.aspx.cs" Inherits="admin_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/formValidator.js" type="text/javascript"></script>
    <script src="../js/formValidatorRegex.js" type="text/javascript"></script>
    <link href="../css/validator.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                修改登录密码
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td align="right">用户名
                                    </td>
                                    <td align="left">
                                        <b style="color: red;"><%=Session["bh"].ToString() %></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 30%;"><font style='color: orange'>*&nbsp;</font>原密码:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox></div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_pwdTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 30%;"><font style='color: orange'>*&nbsp;</font>新密码:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></div>
                                        <div id="ctl00_ContentPlaceHolder1_TextBox1Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 30%;"><font style='color: orange'>*&nbsp;</font>确认密码:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></div>
                                        <div id="ctl00_ContentPlaceHolder1_TextBox2Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">
                                        <asp:Button ID="Button2" runat="server" Text="提 交" class="layui-layer-btn0 btn btn-primary" OnClick="btnSave_Click" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                    </td>
                                </tr>
                            </table>
                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_txt_pwd").formValidator({ onshow: "请输入原密码", onfocus: "原密码不能为空", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "原密码不能为空,请确认" });
                                    $("#ctl00_ContentPlaceHolder1_TextBox1").formValidator({ onshow: "请输入新密码", onfocus: "新密码不能为空", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "新密码不能为空,请确认" });
                                    $("#ctl00_ContentPlaceHolder1_TextBox2").formValidator({ onshow: "请输入重复密码", onfocus: "两次密码必须一致哦", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "重复密码不能为空,请确认" });
                                });
                            </script>


                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


