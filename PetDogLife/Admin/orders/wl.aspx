<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="wl.aspx.cs" Inherits="orders_Show" %>

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
                更新物流信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td height="25" width="20%" align="right">订单编号：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbloid" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">订购人：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbllname" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">姓名：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblmname" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td height="25" width="20%" align="right">联系方式：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbltel" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">收货地址：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td height="25" width="20%" align="right">订单金额：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblsprice" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td height="25" width="20%" align="right">订购时间：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblatime" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td height="25" width="20%" align="right">订单状态：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">物流信息：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>当前物流信息:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_title" runat="server" Width="278px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_titleTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>

                                    </td>
                                </tr>


                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">
                                        <asp:Button ID="btnReturn2" runat="server" Text="更新" class="layui-layer-btn0 btn btn-primary" OnClick="btnReturn_Click1" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                        &nbsp;<asp:Button ID="btnReturn" runat="server" Text="返回列表" class="layui-layer-btn0 btn btn-primary" CausesValidation="false" OnClick="btnReturn_Click" />
                                    </td>
                                </tr>
                            </table>
                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_txt_title").formValidator({ onshow: "请输入当前物流信息", onfocus: "当前物流信息不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "当前物流信息不能为空，请确认" });
                                });
                            </script>

                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


