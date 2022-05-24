<%@ Page Title="" Language="C#" MasterPageFile="~/member/mem.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="AreaR" style="margin-top: 10px;">



        <div class="box">
            <div class="box_1">
                <h3>
                    <span>欢迎页</span>

                </h3>
            </div>
            <div class="box_1" style="min-height: 500px;">


                <div class="userCenterBox boxCenterList clearfix" style="_height: 1%;">

                    <font class="f5">您好：<asp:Label ID="lbllname" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>，欢迎您来到爱犬大机密生活馆网站！！！</font><br>
                    <div class="blank"></div>
                    您的IP地址为:<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    <br>

                    <div class="blank5"></div>


                    <br>
                    <br>


                    <div class="blank5"></div>
                </div>



            </div>
        </div>
        <div class="blank5"></div>
    </div>

</asp:Content>

