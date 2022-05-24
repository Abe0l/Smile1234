<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nav.ascx.cs" Inherits="control_nav" %>
<div class="AreaL">

    <div id="category_tree">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <dl>
                    <dt><a href="pro.aspx?tid=<%# Eval("tid") %>"><%# Eval("tname") %></a></dt>
                </dl>
            </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="blank"></div>
    <div class="box top10">

        <div class="box_1">
            <h3><span>销售排行榜</span></h3>
            <div class="top10List clearfix">

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul class="clearfix">
                            <img src="themes/ecmoban_hecha/images/top_1.gif" class="iteration">

                            <li class="topimg" style="width: 100%;">
                                <a href="proView.aspx?id=<%# Eval("pid") %>">
                                    <img src="uploads/<%# Eval("pic") %>" alt="" class="samllimg"></a>
                            </li>
                            <li class="iteration1" style="width: 100%; text-align: center;">
                                <a href="proView.aspx?id=<%# Eval("pid") %>" title=""><%# Eval("pname") %></a><br>
                                <font class="f1"><b>¥</b><%# Eval("price") %></font><br>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <div class="blank5"></div>
</div>
