﻿  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class products_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
ddltid.DataSource = SqlHelper.ExecuteforDataSet("select tid,tname from productType");
            ddltid.DataTextField = "tname";
            ddltid.DataValueField = "tid";
            ddltid.DataBind();

        ddltid.Items.Insert(0, new ListItem("所有", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定商品
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (txt_pname.Text != "")
        {
            where += " and pname like '%" + txt_pname.Text + "%' ";
        }

        if (ddltid.SelectedValue!= "")
        {
            where += " and a.tid=" + ddltid.SelectedValue + "";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.tname from products a  left join productType b on a.tid=b.tid " + where + " order by pid desc");
        GridView1.DataBind();

    }

    /// <summary>
    /// 分页事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
   
    /// <summary>
    /// 搜索
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bind();
    }
    
    /// <summary>
    /// 删除商品
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(" delete from products where pid=" + lk.CommandName);

        //重新绑定数据源
        bind();
    }




}

