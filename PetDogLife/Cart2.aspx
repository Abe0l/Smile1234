<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Cart2.aspx.cs" Inherits="news" %>

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
                        <span>确认收货地址</span>

                    </h3>
                </div>
                <div class="box_1">


                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main_top tab">
                        <tbody>
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">



                                        <tr>
                                            <td style="text-align: right; width: 30%;"><font style='color: orange'>*&nbsp;</font>收货人:</td>
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
                                            <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>联系地址:</td>
                                            <td class="tbright">
                                                <div style="display: inline; float: left;">
                                                    <asp:TextBox ID="txt_address" runat="server" Width="200"></asp:TextBox>
                                                </div>
                                                <div id="ctl00_ContentPlaceHolder1_txt_addressTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td style="text-align: right; width: 20%;"></td>
                                            <td class="tbright">
                                                <div style="display: inline; float: left;">
                                                    <asp:Button ID="Button2" runat="server" Text="确 定" OnClick="Button2_Click" CssClass="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />

                                                </div>
                                                <div id="ctl00_ContentPlaceHolder1_txt_addressTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                            </td>
                                        </tr>


                                    </table>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                    <script src="admin/js/jquery.js" type="text/javascript"></script>
                    <script src="admin/js/formValidator.js" type="text/javascript"></script>
                    <script src="admin/js/formValidatorRegex.js" type="text/javascript"></script>
                    <link href="admin/css/validator.css" rel="stylesheet" type="text/css" />
                    <script language="javascript" type="text/javascript">
                        $(document).ready(function () {
                            $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });

                            $("#ctl00_ContentPlaceHolder1_txt_mname").formValidator({ onshow: "请输入收货人", onfocus: "收货人不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "收货人不能为空，请确认" });
                            $("#ctl00_ContentPlaceHolder1_txt_tel").formValidator({ onshow: "请输入手机号码", onfocus: "手机号码不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "手机号码不能为空，请确认" });
                            $("#ctl00_ContentPlaceHolder1_txt_address").formValidator({ onshow: "请输入联系地址", onfocus: "联系地址不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "联系地址不能为空，请确认" });
                        });
                    </script>
                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

