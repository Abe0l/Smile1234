<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Manage.aspx.cs" Inherits="orders_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                管理订单信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;">
                                <tr>
                                    <td align="center">
                                        <strong>订单编号:</strong><asp:TextBox ID="txt_oid" runat="server" Width="150"></asp:TextBox>
                                        <strong>订购人:</strong><asp:TextBox ID="txt_lname" runat="server" Width="150"></asp:TextBox>

                                        <asp:Button ID="Button1" runat="server" Text="查 找" class="layui-layer-btn0 btn btn-primary" OnClick="btnSearch_Click" />

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
                                            <RowStyle Height="25px" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundField HeaderText="订单编号" DataField="oid" />
                                                <asp:BoundField HeaderText="订购人" DataField="lname" />
                                                <asp:BoundField HeaderText="订单金额" DataField="sprice" />
                                                <asp:BoundField HeaderText="订购时间" DataField="atime" />
                                                <asp:TemplateField HeaderText="订单状态">

                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="100" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ToolTip='<%#Eval("oid") %>'>
                                                            <asp:ListItem>待发货</asp:ListItem>
                                                            <asp:ListItem>已发货</asp:ListItem>
                                                            <asp:ListItem>已完成</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="操作">
                                                    <ItemTemplate>
                                                        <a href="View.aspx?id=<%#Eval("oid") %>">详情</a>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName='<%#Eval("oid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>

                                                        <a href="wl.aspx?id=<%#Eval("oid") %>">更新物流信息</a>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Center" />
                                        </asp:GridView>



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


