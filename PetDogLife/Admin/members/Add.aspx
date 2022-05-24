<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Add.aspx.cs" Inherits="members_Add" %>

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
                添加会员信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>用户名:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_lname" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_lnameTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>登录密码:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_pass" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_passTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>姓名:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_mname" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_mnameTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>手机号码:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_tel" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_telTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>电子邮箱:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_email" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_emailTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>联系地址:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_address" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_addressTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>密保问题:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:DropDownList ID="ddlquan" runat="server" Width="200">
                                                <asp:ListItem>我喜欢的颜色？</asp:ListItem>
                                                <asp:ListItem>我小学学校名称？</asp:ListItem>
                                                <asp:ListItem>我初中班主任名称？</asp:ListItem>
                                                <asp:ListItem>我的生日？</asp:ListItem>
                                                <asp:ListItem>我的幸运数字？</asp:ListItem>
                                                <asp:ListItem>我喜欢的水果？</asp:ListItem>
                                            </asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>密保答案:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_TextBox1Tip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">
                                        <asp:Button ID="btnAdd" runat="server" Text="提 交" class="layui-layer-btn0 btn btn-primary" OnClick="btnSave_Click" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                        <asp:Button ID="btnCan" runat="server" Text="返 回" class="layui-layer-btn0 btn btn-primary" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
                                    </td>
                                </tr>
                            </table>
                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_txt_lname").formValidator({ onshow: "请输入用户名", onfocus: "用户名不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "用户名不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_pass").formValidator({ onshow: "请输入登录密码", onfocus: "登录密码不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "登录密码不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_mname").formValidator({ onshow: "请输入姓名", onfocus: "姓名不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "姓名不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_tel").formValidator({ onshow: "请输入手机号码", onfocus: "手机号码不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "手机号码不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_email").formValidator({ onshow: "请输入电子邮箱", onfocus: "电子邮箱不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "电子邮箱不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_address").formValidator({ onshow: "请输入联系地址", onfocus: "联系地址不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "联系地址不能为空，请确认" });
                                    $("#ctl00_ContentPlaceHolder1_TextBox1").formValidator({ onshow: "请输入密保答案", onfocus: "密保答案不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "密保答案不能为空,请确认" });
                                });
                            </script>


                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


