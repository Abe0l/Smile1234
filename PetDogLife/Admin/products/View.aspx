<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="View.aspx.cs" Inherits="products_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                查看商品信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td height="25" width="20%" align="right">商品编号：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblpid" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">商品名称：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblpname" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">所属类别：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbltid" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">商品图片：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Image ID="imgpic" runat="server" Width="120" Height="120" /></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">售价：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">库存数量：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">商品简介：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lblmemo" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="25" width="20%" align="right">上架时间：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:Label ID="lbladdtime" runat="server" Text=""></asp:Label></td>
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


