<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="member_Default" %>

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
                    <span>我的个人资料</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">



                <table style="width: 100%; line-height: 29px; font-size: 12px;">
                    <tr>
                        <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>用户名:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:TextBox ID="txt_lname" runat="server" Width="200" Enabled="false"></asp:TextBox>
                            </div>
                            <div id="ctl00_ContentPlaceHolder1_txt_lnameTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
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
                        <td style="text-align: right; width: 30%;"><font style='color: orange'>*&nbsp;</font>联系地址:</td>
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
                        <td>&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="ButtonReg" runat="server" OnClick="ButtonUpdate_Click" Text="保 存" class="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                        </td>
                    </tr>
                </table>
                <script src="../admin/js/jquery.js" type="text/javascript"></script>
                <script src="../admin/js/formValidator.js" type="text/javascript"></script>
                <script src="../admin/js/formValidatorRegex.js" type="text/javascript"></script>
                <link href="../admin/css/validator.css" rel="stylesheet" type="text/css" />

                <script language="javascript" type="text/javascript">
                    $(document).ready(function () {
                        $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                        $("#ctl00_ContentPlaceHolder1_txt_mname").formValidator({ onshow: "请输入姓名", onfocus: "姓名不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "姓名不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_txt_tel").formValidator({ onshow: "请输入手机号码", onfocus: "手机号码不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "手机号码不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_txt_email").formValidator({ onshow: "请输入电子邮箱", onfocus: "电子邮箱不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "电子邮箱不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_txt_address").formValidator({ onshow: "请输入联系地址", onfocus: "联系地址不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "联系地址不能为空,请确认" });
                        $("#ctl00_ContentPlaceHolder1_TextBox1").formValidator({ onshow: "请输入密保答案", onfocus: "密保答案不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "密保答案不能为空,请确认" });
                    });
</script>






            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

