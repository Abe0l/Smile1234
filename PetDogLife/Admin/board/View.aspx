<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="View.aspx.cs" Inherits="board_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                查看留言板信息
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
                                    <td height="25" width="20%" align="right">管理员回复：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblanswer" runat="server" Text=""></asp:Label></td>
                                </tr>


                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">

                                        <asp:Button ID="btnReturn" runat="server" Text="返回列表" class="layui-layer-btn0 btn btn-primary" OnClientClick="history.go(-1); return false;" CausesValidation="false" />
                                    </td>
                                </tr>
                            </table>


                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


