<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Add.aspx.cs" Inherits="dog_Add" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/formValidator.js" type="text/javascript"></script>
    <script src="../js/formValidatorRegex.js" type="text/javascript"></script>
    <link href="../css/validator.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rows" style="margin-bottom: 1%; border: 1px solid #e6e6e6; overflow: hidden; padding-left: 1px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-thumbs-o-up fa-lg" style="padding-right: 5px;"></i>
                添加狗狗种类信息
            </div>
            <div class="panel-body">

                <table style="width: 100%;">
                    <tr>
                        <td align="center">

                            <table style="width: 100%;" id="ctl00_ContentPlaceHolder1_GridView1">
                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>种类名称:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:TextBox ID="txt_dname" runat="server" Width="200"></asp:TextBox>
                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_txt_dnameTip" style="width: 250px; display: inline; float: left; text-align: left;"></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>图片:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <asp:FileUpload ID="fpphoto" runat="server" Width="250" />
                                        支持格式为：.jpg | .gif | .png
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: right; width: 20%;"><font style='color: orange'>*&nbsp;</font>具体描述:</td>
                                    <td class="tbright">
                                        <div style="display: inline; float: left;">
                                            <FCKeditorV2:FCKeditor ID="fck_memo" runat="server" Height="400" Width="700" BasePath="~/fckeditor/"></FCKeditorV2:FCKeditor>
                                        </div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">
                                        <asp:Button ID="btnAdd" runat="server" Text="提 交" class="layui-layer-btn0 btn btn-primary" OnClick="btnSave_Click" OnClientClick="return jQuery.formValidator.PageIsValid('1');" />
                                        <asp:Button ID="btnCan" runat="server" Text="返 回" class="layui-layer-btn0 btn btn-primary" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
                                    </td>
                                </tr>
                            </table>
                            <script language="javascript" type="text/javascript">
                                $(document).ready(function () {
                                    $.formValidator.initConfig({ onError: function (msg) { alert(msg) } });
                                    $("#ctl00_ContentPlaceHolder1_txt_dname").formValidator({ onshow: "请输入种类名称", onfocus: "种类名称不能为空", oncorrect: "合法" }).InputValidator({ min: 1, onerror: "种类名称不能为空，请确认" });
                                });
                            </script>


                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

</asp:Content>


