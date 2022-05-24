<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="news" %>

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
                        <span>购物车</span>

                    </h3>
                </div>
                <div class="box_1">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="biaoti">
                        <tbody>
                            <tr>
                                <td width="45%" align="center">商品</td>
                                <td width="15%" align="center">单价(元)</td>
                                <td width="15%" align="center">数量</td>
                                <td align="center">共计</td>
                                <td align="center">操作</td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tab">
                        <tbody>
                            <tr>
                                <td height="15" colspan="5" valign="middle" class="main-tit"></td>
                            </tr>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td width="45%" class="tdbg proimg " valign="middle">
                                            <img src="<%#Eval("tupian") %>" width="74" height="74"><%# Eval("shangpinname")%></td>

                                        <td width="15%" align="center" class="tdbg">￥<%# Eval("price")%><br>
                                        </td>
                                        <td width="15%" align="center" class="tdbg quantity"><%# Eval("quantity")%>
                                        </td>
                                        <td align="center" class="tdbg jiage hb blue hb">￥<sapn isget="true" id="cprice259"><%# int.Parse(Eval("quantity").ToString())*decimal.Parse(Eval("price").ToString())%></sapn></td>
                                        <td align="center" class="tdbg ">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick='return confirm("您确定要取消购买的图书么？");' OnClick="LinkButton1_Click" CssClass="ljbg" CommandArgument='<%# Eval("itemid") %>'>删除</asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                        </tbody>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main_top tab">
                        <tbody>
                            <tr>
                                <td valign="middle" class="hyts" align="center" style="width: 762px">总数量：<span class="jiage red" style="color: Red">
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                    &nbsp;&nbsp;&nbsp; </span>总金额：￥<span class="jiage red" style="color: Red">
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </span>
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">




                                        <tr>
                                            <td style="text-align: right; width: 20%;">支付方式:</td>
                                            <td class="tbright">
                                                <div style="display: inline; float: left;">
                                                    <table>
                                                        <tr>

                                                            <td align="center">
                                                                <img src="images/wx.jpg" width="150" /><br />
                                                                <asp:RadioButton ID="RadioButton4" runat="server" Checked="true" GroupName="zf" ToolTip="微信支付" />
                                                            </td>
                                                            <td align="center">
                                                                <img src="images/zfb.jpg" width="150" /><br />
                                                                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="zf" ToolTip="支付宝" />
                                                            </td>



                                                        </tr>
                                                    </table>
                                                </div>
                                                <div id="ctl00_ContentPlaceHolder1_txt_otimeTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="69" align="center" valign="middle">
                                    <asp:Button ID="Button1" runat="server" Text="清空购物车" OnClick="Button1_Click" CssClass="btn" />
                                    <asp:Button ID="Button3" runat="server" Text="继续购物" OnClick="Button3_Click" CssClass="btn" />
                                    <asp:Button ID="Button2" runat="server" Text="提交订单" OnClick="Button2_Click" CssClass="btn" />
                                </td>
                            </tr>
                        </tbody>
                    </table>


                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

