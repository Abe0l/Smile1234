  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class train_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bind();
        }
    }

    /// <summary>
    /// 绑定狗狗训练
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (txt_title.Text != "")
        {
            where += " and title like '%" + txt_title.Text + "%' ";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select * from train " + where + " order by nid desc");
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
    /// 删除狗狗训练
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(" delete from train where nid=" + lk.CommandName);

        //重新绑定数据源
        bind();
    }




}

