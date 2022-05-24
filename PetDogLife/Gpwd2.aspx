<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Gpwd2.aspx.cs" Inherits="news" %>

<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="blank"></div>
    <div class="block clearfix">


        <uc1:nav runat="server" ID="nav" />

        <div class="AreaR">



            <div class="box">
                <div class="box_1">
                    <h3>
                        <span>密码找回</span>

                    </h3>
                </div>
                <div class="box_1">
                    <div style="border: 4px solid #fcf8f7; background-color: #fff; padding: 20px 15px;">
                        <div class="tc" style="padding: 8px;">
                            <font class="f5 f6">密码找回</font>
                        </div>
                        <div style="padding: 8px; margin-top: 15px; text-align: left; border-top: 1px solid #ccc;">


                            <table style="width: 100%; line-height: 29px; font-size: 12px;">

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>用户名:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;">密保问题:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:Label ID="lblques" runat="server" Text=""></asp:Label>
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
                                        <asp:Button ID="ButtonReg" runat="server" OnClick="ButtonReg_Click" Text="下一步" class="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                    </td>
                                </tr>
                            </table>
                            <script src="admin/js/jquery.js" type="text/javascript"></script>
                            <script src="admin/js/formValidator.js" type="text/javascript"></script>
                            <script src="admin/js/formValidatorRegex.js" type="text/javascript"></script>
                            <link href="admin/css/validator.css" rel="stylesheet" type="text/css" />

                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_TextBox1").formValidator({ onshow: "请输入密保答案", onfocus: "密保答案不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "密保答案不能为空,请确认" });

                                });
</script>




                        </div>
                    </div>
                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

