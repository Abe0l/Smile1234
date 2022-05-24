<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Manage.aspx.cs" Inherits="admin_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                管理管理员信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;">
                                <tr>
                                    <td align="center"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                                            <RowStyle Height="25px" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:BoundField HeaderText="登录名" DataField="lname" />
                                                <asp:BoundField HeaderText="密码" DataField="pwd" />
                                                <asp:TemplateField HeaderText="操作">
                                                    <ItemTemplate>

                                                        <a href="Modify.aspx?id=<%#Eval("aid") %>">修改</a>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName='<%#Eval("aid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


