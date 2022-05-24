﻿  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class orders_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bind();
        }
    }

    /// <summary>
    /// 绑定订单
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (txt_oid.Text != "")
        {
            where += " and oid like '%" + txt_oid.Text + "%' ";
        }

        if (txt_lname.Text != "")
        {
            where += " and lname like '%" + txt_lname.Text + "%' ";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select * from orders " + where + " order by oid desc");
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
    /// 删除订单
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(" delete from orders where oid='" + lk.CommandName+"'");

        //重新绑定数据源
        bind();
    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string orflag = DataBinder.Eval(e.Row.DataItem, "flag").ToString();

            DropDownList ddl = (DropDownList)e.Row.FindControl("DropDownList1");

            ddl.SelectedValue = orflag;
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)sender;

        SqlHelper.ExecuteNonQuery("update orders set flag='" + ddl.SelectedValue + "' where oid='" + ddl.ToolTip + "'");


    }


}

