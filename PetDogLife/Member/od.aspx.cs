using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class member_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Session["name"] != null)
        {
            bind();
        }
    }

    // 绑定
    private void bind()
    {
        string where = " where lname='"+Session["name"].ToString()+"' ";

       


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
}