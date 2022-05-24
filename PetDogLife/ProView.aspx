<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="ProView.aspx.cs" Inherits="news" %>

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
                        <span>商品详情</span>

                    </h3>

                    <div id="goodsInfo" class="clearfix">


                        <div class="imgInfo">

                            <asp:Image ID="imgpic" runat="server" Width="310" Height="310" />

                            <div class="blank5"></div>









                        </div>

                        <div class="textInfo" style="margin-top: 20px;">
                            <form action="javascript:addToCart(260)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY">
                                <div class="clearfix" style="font-size: 14px; font-weight: bold; padding-bottom: 8px;">
                                    <asp:Literal ID="lblpname" runat="server"></asp:Literal>
                                </div>
                                <ul>



                                    <li class="clearfix">
                                        <dd>

                                            <strong>上架时间：</strong><asp:Literal ID="Literal1" runat="server"></asp:Literal><br>
                                        </dd>
                                    </li>


                                    <li class="clearfix">
                                        <dd>

                                            <strong>库存数量：</strong><asp:Literal ID="Literal2" runat="server"></asp:Literal><br>
                                        </dd>
                                    </li>

                                    <li class="clearfix">
                                        <dd>

                                            <strong>售价：</strong><font class="shop" id="ECS_SHOPPRICE"><b>¥</b>
                                                <asp:Literal ID="lblprice" runat="server"></asp:Literal>
                                            </font>
                                            <br>
                                        </dd>
                                    </li>



                                    <li class="clearfix">
                                        <dd>
                                            <strong>购买数量：</strong>
                                            <asp:Button ID="btnJian" runat="server" Text="-" Style="width: 30px; height: 23px;" OnClick="btnJian_Click"></asp:Button>
                                            <input type="text" id="num" name="num" value="1" runat="server" style="width: 40px; text-align: center;">

                                            <asp:Button ID="btnJia" runat="server" Text="+" Style="width: 30px; height: 23px;" OnClick="btnJia_Click"></asp:Button>
                                        </dd>
                                    </li>




                                    <li class="padd">
                                        <asp:Button ID="Button1" runat="server" Text="加入购物车" CssClass="btn" OnClick="Button1_Click" />
                                    </li>

                                </ul>
                        </div>
                    </div>

                    <div class="blank"></div>
                    <div class="box">
                        <div class="box_1">
                            <h3 style="padding: 0 5px;">
                                <div id="com_b" class="history clearfix">
                                    <h2 style="cursor: pointer;">商品描述：</h2>

                                </div>
                            </h3>
                            <div id="com_v" class="boxCenterList RelaArticle">
                                <asp:Label ID="lblmemo" runat="server" Text=""></asp:Label>
                            </div>

                        </div>
                    </div>
                    <div class="blank"></div>
                    <div class="blank5"></div>
                    <div id="ECS_COMMENT">
                        <div class="box">
                            <div class="box_1">
                                <h3><span class="text">商品评价</span></h3>
                                <div class="boxCenterList clearfix" style="height: 1%;">
                                    <ul class="comments">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <font style="color: orange"><%# Eval("star") %></font><br />
                                                    <%# Eval("lname") %>于<%# Eval("atime") %>评论：<%# Eval("memo") %></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>

                                    <div id="pagebar" class="f_r">

                                        <div id="pager">
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="false" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="10" PrevPageText="上一页" ShowPageIndexBox="Always" Width="90%"></webdiyer:AspNetPager>
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="blank5"></div>

                    </div>
                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

