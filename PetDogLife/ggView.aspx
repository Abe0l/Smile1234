<%@ Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="ggView.aspx.cs" Inherits="news" %>

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
                        <span>狗狗种类详情</span>

                    </h3>
                </div>
                <div class="box_1">
                    <div style="border: 4px solid #fcf8f7; background-color: #fff; padding: 20px 15px;">
                        <div class="tc" style="padding: 8px;">
                            <font class="f5 f6">
                                <asp:Label ID="lbdname" runat="server" Text=""></asp:Label></font><br>
                            <font class="f3"></font>
                        </div>
                        <div style="padding: 8px; margin-top: 15px; text-align: left; border-top: 1px solid #ccc;">
                            <table width="100%">
                                <tr>
                                    <td align="center">
                                        <asp:Image ID="imgphoto" runat="server" Width="200" Height="200" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="lbmemo" runat="server" Text=""></asp:Label>
                        </div>

                    </div>
                </div>
            </div>
            <div class="blank5"></div>






        </div>

    </div>
</asp:Content>

