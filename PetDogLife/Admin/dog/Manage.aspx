<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Manage.aspx.cs" Inherits="dog_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                管理狗狗种类信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;">
                                <tr>
                                    <td align="center">
                                        <strong>种类名称:</strong><asp:TextBox ID="txt_dname" runat="server" Width="150"></asp:TextBox>

                                        <asp:Button ID="Button1" runat="server" Text="查 找" class="layui-layer-btn0 btn btn-primary" OnClick="btnSearch_Click" />

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                                            <RowStyle Height="25px" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundField HeaderText="种类名称" DataField="dname" />
                                                <asp:TemplateField HeaderText="图片">
                                                    <ItemTemplate>
                                                        <img alt="" src="../../uploads/<%#Eval("photo")%>" width="80" height="80" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="具体描述">
                                                    <ItemTemplate>
                                                        <%# StringHelper.SubStringHtml( Eval("memo").ToString(),20) %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="发布时间" DataField="addtime" />
                                                <asp:TemplateField HeaderText="操作">
                                                    <ItemTemplate>
                                                        <a href="View.aspx?id=<%#Eval("did") %>">详情</a>
                                                        <a href="Modify.aspx?id=<%#Eval("did") %>">修改</a>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName='<%#Eval("did") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
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


