<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="Pj.aspx.cs" Inherits="member_Default" %>

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
                    <span>发表评价</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">


                <table width="95%">
                    <tr>
                        <td style="text-align: right; width: 30%;">星级:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:RadioButtonList ID="rblstar" runat="server" ForeColor="red" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Selected="True">★★★★★</asp:ListItem>
                                    <asp:ListItem>★★★★</asp:ListItem>
                                    <asp:ListItem>★★★</asp:ListItem>
                                    <asp:ListItem>★★</asp:ListItem>
                                    <asp:ListItem>★</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 20%;">评价内容:</td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:TextBox ID="txt_memo" runat="server" Width="248px" Height="61px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div id="ctl00_c1_txt_memoTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align: right; width: 30%;"></td>
                        <td class="tbright">
                            <div style="display: inline; float: left;">
                                <asp:Button ID="btnPass" runat="server" Text=" 发 表 " OnClick="btnMess_Click" CssClass="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                <asp:Button ID="Button1" runat="server" Text=" 返 回 " CssClass="btn" OnClick="Button1_Click" />
                            </div>
                        </td>
                    </tr>

                </table>



                <script language="javascript" type="text/javascript">
                    $(document).ready(function () {
                        $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                        $("#ctl00_c1_txt_memo").formValidator({ onshow: "请输入评价内容", onfocus: "评价内容不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "评价内容不能为空,请确认" });
                    });
                </script>


            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

