﻿<%@  Page Title="" Language="C#" MasterPageFile="~/idx.master" AutoEventWireup="true" CodeFile="hl.aspx.cs" Inherits="news" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager"%>


<%@  Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="blank"></div>
    <div class="block clearfix">
  

        <uc1:nav runat="server" ID="nav" />
  
  <div class="AreaR">
	 
	  	 
   
<div class="box">
 <div class="box_1">
  <h3>
  <span>狗狗护理</span>
  
  </h3>
      <div class="art_cat_box">
      <table width="100%" border="0" cellpadding="5" cellspacing="0">
      <tbody>


<style>
    .anpager .cpb {
        background: #1F3A87 none repeat scroll 0 0;
        border: 1px solid #CCCCCC;
        color: #FFFFFF;
        font-weight: bold;
        margin: 5px 4px 0 0;
        padding: 4px 5px 0;
    }

    .anpager a {
        background: #FFFFFF none repeat scroll 0 0;
        border: 1px solid #CCCCCC;
        color: #1F3A87;
        margin: 5px 4px 0 0;
        padding: 4px 5px 0;
        text-decoration: none
    }

        .anpager a:hover {
            background: #1F3A87 none repeat scroll 0 0;
            border: 1px solid #1F3A87;
            color: #FFFFFF;
        }
</style>



    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
                 <tr>
        <td><a style="text-decoration:none" href="hlView.aspx?id=<%# Eval("nid")%>" title="<%# Eval("title")%>" class="f6"><%# Eval("title")%></a></td>

          <td align="center"><%# Eval("addtime")%></td>
        </tr>
        </ItemTemplate>
    </asp:Repeater>



<table style="width:100%; line-height:30px"><tr>
    <td align="center">
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="true" FirstPageText="首页" LastPageText="末页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="TextBox"  CssClass="anpager" CurrentPageButtonClass="cpb" PagingButtonSpacing="0" PageSize="10" PrevPageText="上一页" ShowPageIndexBox="Always" Width="90%"></webdiyer:AspNetPager>
    </td>
    </tr></table>


          </tbody></table>
    </div>
  
 </div>
</div>
<div class="blank5"></div>





  </div>  
  
</div>
</asp:Content>

