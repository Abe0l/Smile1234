  using System;
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
    

        GridView1.DataSource = SqlHelper.ExecuteforDataSet(@"select convert(char(7),atime,121) as tt1,count(*) as tt2,sum(sprice) as tt3
 from orders  group by convert(char(7), atime, 121)");
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
    





}

