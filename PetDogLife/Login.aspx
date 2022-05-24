<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="news" %>

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
                        <span>用户登录</span>

                    </h3>
                </div>
                <div class="box_1">
                    <div style="border: 4px solid #fcf8f7; background-color: #fff; padding: 20px 15px;">
                        <div class="tc" style="padding: 8px;">
                            <font class="f5 f6">用户登录</font>
                        </div>
                        <div style="padding: 8px; margin-top: 15px; text-align: left; border-top: 1px solid #ccc;">


                            <table style="width: 100%; line-height: 29px; font-size: 12px;">
                                <% if (Session["name"] == null)
                                    { %>
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
                                            <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_passTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>&nbsp;
                                    </td>
                                    <td>
                                        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="登 录" class="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                    </td>
                                </tr>
                                <%}
                                else
                                { %>
                                <tr>
                                    <td align="center">欢迎您：
                                        <b style="color: orange"><%=Session["name"].ToString() %></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">

                                        <a href="member/default.aspx">会员中心</a>
                                        <asp:LinkButton ID="logLnk1" runat="server" OnClick="logLnk_Click" CausesValidation="false">退出登录</asp:LinkButton>

                                    </td>
                                </tr>
                                <%} %>
                            </table>
                            <script src="admin/js/jquery.js" type="text/javascript"></script>
                            <script src="admin/js/formValidator.js" type="text/javascript"></script>
                            <script src="admin/js/formValidatorRegex.js" type="text/javascript"></script>
                            <link href="admin/css/validator.css" rel="stylesheet" type="text/css" />

                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_txt_lname").formValidator({ onshow: "请输入用户名", onfocus: "用户名不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "用户名不能为空,请确认" });
                                    $("#ctl00_ContentPlaceHolder1_txt_pass").formValidator({ onshow: "请输入登录密码", onfocus: "登录密码不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "登录密码不能为空,请确认" });
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

