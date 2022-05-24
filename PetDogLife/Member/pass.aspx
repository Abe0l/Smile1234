<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="pass.aspx.cs" Inherits="member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/formValidator.js" type="text/javascript"></script>
    <script src="../js/formValidatorRegex.js" type="text/javascript"></script>
    <link href="../css/validator.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="AreaR" style="margin-top: 10px;">



        <div class="box">
            <div class="box_1">
                <h3>
                    <span>修改密码</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">

                <table width="95%">
                    <tr>
                        <td style="text-align: right; width: 30%;">原密码:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:TextBox ID="txt_pass1" runat="server" TextMode="Password"></asp:TextBox></div>
                            <div id="ctl00_ContentPlaceHolder1_txt_pass1Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 30%;">新密码:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:TextBox ID="txt_pass2" runat="server" TextMode="Password"></asp:TextBox></div>
                            <div id="ctl00_ContentPlaceHolder1_txt_pass2Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 30%;">确认密码:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:TextBox ID="txt_pass3" runat="server" TextMode="Password"></asp:TextBox></div>
                            <div id="ctl00_ContentPlaceHolder1_txt_pass3Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 30%;"></td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:Button ID="btnPass" runat="server" Text=" 修改密码 " OnClick="btnPass_Click" CssClass="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1'); " />
                            </div>
                        </td>
                    </tr>

                </table>

                <script language="javascript" type="text/javascript">
                    $(document).ready(function () {
                        $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                        $("#ctl00_ContentPlaceHolder1_txt_pass1").formValidator({ onshow: "请输入原密码", onfocus: "原密码不能为空", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "原密码不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_txt_pass2").formValidator({ onshow: "请输入新密码", onfocus: "新密码不能为空", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "新密码不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_txt_pass3").formValidator({ onshow: "请输入重复密码", onfocus: "两次密码必须一致哦", oncorrect: "密码合法" }).InputValidator({ min: 1, onerror: "重复密码不能为空,请确认" });
                    });
                </script>





            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

