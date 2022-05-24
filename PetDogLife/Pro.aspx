<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="Pro.aspx.cs" Inherits="news" %>

<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>

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
                        <span>商品列表</span>

                    </h3>
                    <div class="clearfix goodsBox" style="border: none; padding: 11px 0 10px 5px;">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="goodsItem" style="text-align: center;">
                                    <a href="proView.aspx?id=<%# Eval("pid") %>">
                                        <img src="uploads/<%# Eval("pic") %>" alt="<%# Eval("pname") %>" class="goodsimg"></a><br>
                                    <p><a href="proView.aspx?id=<%# Eval("pid") %>" title="<%# Eval("pname") %>"><%# Eval("pname") %></a></p>
                                    <font class="shop_s"><b>¥</b><%# Eval("price") %></font><br>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>
            <div class="blank5"></div>



            <div id="pager" class="pagebar">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="16" PrevPageText="上一页" ShowPageIndexBox="Always" Width="90%"></webdiyer:AspNetPager>

            </div>


        </div>

    </div>
</asp:Content>
