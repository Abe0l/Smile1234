<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="od.aspx.cs" Inherits="member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="AreaR" style="margin-top: 10px;">



        <div class="box">
            <div class="box_1">
                <h3>
                    <span>我的订单</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="oid" Width="100%" AllowPaging="True" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <RowStyle Height="25px" HorizontalAlign="Center" />
                    <Columns>

                        <asp:BoundField HeaderText="订单编号" DataField="oid" />
                        <asp:BoundField HeaderText="订购人" DataField="lname" />
                        <asp:BoundField HeaderText="订单金额" DataField="sprice" />
                        <asp:BoundField HeaderText="订购时间" DataField="atime" />
                        <asp:BoundField HeaderText="订单状态" DataField="flag" />
                        <asp:HyperLinkField DataNavigateUrlFormatString="Show.aspx?id={0}" DataNavigateUrlFields="oid" HeaderText="详细" Text="详细">
                            <ItemStyle Width="50px" />
                        </asp:HyperLinkField>

                    </Columns>
                    <HeaderStyle Height="27px" />
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>


            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

