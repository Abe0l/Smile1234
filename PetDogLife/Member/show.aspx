<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        th {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="AreaR" style="margin-top: 10px;">



        <div class="box">
            <div class="box_1">
                <h3>
                    <span>查看订单详情</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">


                <table width="100%" border="0" cellspacing="0" cellpadding="1" class="tbbc">

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
                                            <img alt="" src="../uploads/<%#Eval("pic")%>" width="100" height="80" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="价格" DataField="oprice" />
                                    <asp:BoundField HeaderText="订购数量" DataField="quantity" />


                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <%# Label1.Text=="已完成"?"<a href='pj.aspx?oid="+Eval("oid").ToString()+"&pid="+Eval("pid").ToString()+"'>评价</a>":"" %>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>

                                </Columns>
                                <HeaderStyle Height="27px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="20%" align="right"></td>
                        <td align="left">
                            <asp:Button ID="Button3" runat="server" Text="返 回" CssClass="btn" OnClientClick="document.location='od.aspx';return false;"
                                CausesValidation="false" />
                        </td>
                    </tr>
                </table>



            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

