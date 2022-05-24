<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Lyb.aspx.cs" Inherits="news" %>

<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>


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
                        <span>留言板</span>

                    </h3>
                </div>
                <div class="box_1">
                    <div style="border: 4px solid #fcf8f7; background-color: #fff; padding: 20px 15px;">

                        <div style="padding: 8px; margin-top: 15px; text-align: left;">



                            <style>
                                .anpager .cpb {
                                    background: #ebb15a none repeat scroll 0 0;
                                    border: 1px solid #CCCCCC;
                                    color: #FFFFFF;
                                    font-weight: bold;
                                    margin: 5px 4px 0 0;
                                    padding: 4px 5px 0;
                                }

                                .anpager a {
                                    background: #FFFFFF none repeat scroll 0 0;
                                    border: 1px solid #CCCCCC;
                                    color: #ebb15a;
                                    margin: 5px 4px 0 0;
                                    padding: 4px 5px 0;
                                    text-decoration: none
                                }

                                    .anpager a:hover {
                                        background: #ebb15a none repeat scroll 0 0;
                                        border: 1px solid #ebb15a;
                                        color: #FFFFFF;
                                    }
                            </style>



                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <style>
                                        .ltable {
                                            margin-top: 10px;
                                            margin-bottom: 10px;
                                            border-left: solid 0px;
                                            border-top: solid 0px;
                                            border-right: solid 1px #DAEBF7;
                                            border-bottom: solid 1px #DAEBF7;
                                            font-size: 12px;
                                        }

                                            .ltable td {
                                                border-top: solid 1px #DAEBF7;
                                                border-left: solid 1px #DAEBF7;
                                                border-right: solid 0px;
                                                border-bottom: solid 1px #DAEBF7;
                                                padding: 10px;
                                            }

                                            .ltable span {
                                                line-height: 25px;
                                            }

                                            .ltable .huifu {
                                                color: #004499;
                                            }
                                    </style>

                                    <table class="ltable" width="95%" border="0" align="center">
                                        <tbody>
                                            <tr>
                                                <td width="55%">标题：<%# Eval("title")%></td>

                                                <td>留言人：<%# Eval("lname")%>   时间：<%# Eval("qtime")%> </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"><span><b>留言内容：</b> <%# Eval("detail")%></span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"><span class="huifu"><b>管理员回复：</b> <%# Eval("answer")%></span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>



                            <table style="width: 100%; line-height: 30px">
                                <tr>
                                    <td align="center">
                                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="TextBox" CssClass="anpager" CurrentPageButtonClass="cpb" PagingButtonSpacing="0" PageSize="10" PrevPageText="上一页" ShowPageIndexBox="Always" Width="90%"></webdiyer:AspNetPager>
                                    </td>
                                </tr>
                            </table>




                            <table style="width: 100%; line-height: 29px; font-size: 12px;">

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>留言主题:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_title" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_titleTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>留言内容:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_detail" runat="server" Height="103px" TextMode="MultiLine" Width="331px"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_detailTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>&nbsp;
                                    </td>
                                    <td>
                                        <asp:Button ID="ButtonReg" runat="server" OnClick="Button_Click" Text="提 交" class="btn" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
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
                                               $("#ctl00_ContentPlaceHolder1_txt_title").formValidator({ onshow: "请输入留言主题", onfocus: "留言主题不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "留言主题不能为空,请确认" });
                                               $("#ctl00_ContentPlaceHolder1_txt_detail").formValidator({ onshow: "请输入留言内容", onfocus: "留言内容不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "留言内容不能为空,请确认" });
                                           });
                            </script >


                        </div>
                    </div>
                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

