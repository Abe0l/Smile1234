<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="news" %>

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
                        <span>新闻资讯</span>

                    </h3>
                    <div class="art_cat_box">
                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><a style="text-decoration: none" href="newsView.aspx?id=<%# Eval("nid") %>" title="<%# Eval("title") %>" class="f6"><%# Eval("title") %></a></td>

                                            <td align="center"><%# Eval("addtime") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
            <div class="blank5"></div>



            <div id="pager" class="pagebar">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="10" PrevPageText="上一页" ShowPageIndexBox="Always" Width="90%"></webdiyer:AspNetPager>

            </div>


        </div>

    </div>
</asp:Content>

