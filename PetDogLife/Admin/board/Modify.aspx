<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Modify.aspx.cs" Inherits="board_Edit" %>

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
                回复留言
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td height="25" width="20%" align="right">ID：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblid" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">用户名：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbllname" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">留言主题：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">留言内容：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbldetail" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">留言时间：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblqtime" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>管理员回复:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_answer" runat="server" Width="321px" Height="114px" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_answerTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">
                                        <asp:Button ID="btnUpdate" runat="server" Text="提 交" class="layui-layer-btn0 btn btn-primary" OnClick="btnSave_Click" />
                                        <asp:Button ID="btnCan" runat="server" Text="返 回" class="layui-layer-btn0 btn btn-primary" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
                                    </td>
                                </tr>
                            </table>
                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });

                                    $("#ctl00_ContentPlaceHolder1_txt_answer").formValidator({ onshow: "请输入管理员回复", onfocus: "管理员回复不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "管理员回复不能为空，请确认" });
                                });
                            </script>


                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


