<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="View.aspx.cs" Inherits="orders_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                查看订单信息
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
                                    <td height="25" width="20%" align="right">订单明细：</td>
                                    <td height="25" width="*" align="left" style="text-align: left">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" Width="100%" GridLines="None" EnableModelValidation="True">
                                            <RowStyle Height="25px" HorizontalAlign="Center" />
                                            <Columns>

                                                <asp:BoundField HeaderText="商品名称" DataField="pname" />
                                                <asp:TemplateField HeaderText="商品图片">
                                                    <ItemTemplate>
                                                        <img alt="" src="../../uploads/<%#Eval("pic")%>" width="100" height="80" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="价格" DataField="oprice" />
                                                <asp:BoundField HeaderText="订购数量" DataField="quantity" />



                                            </Columns>
                                            <HeaderStyle Height="27px" />
                                            <PagerStyle HorizontalAlign="Center" />
                                        </asp:GridView>
                                    </td>
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


