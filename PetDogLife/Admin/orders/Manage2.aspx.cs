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

            ddlpid.DataSource = SqlHelper.ExecuteforDataSet("select pid,pname from products");
            ddlpid.DataTextField = "pname";
            ddlpid.DataValueField = "pid";
            ddlpid.DataBind();

            ddlpid.Items.Insert(0, new ListItem("所有", ""));
            

            bind();
        }
    }

    /// <summary>
    /// 绑定商品评价
    /// </summary>
    private void bind()
    {
        string where = " where 1=1 ";

        if (ddlpid.SelectedValue != "")
        {
            where += " and a.pid=" + ddlpid.SelectedValue + "";
        }

        if (txt_oid.Text != "")
        {
            where += " and oid like '%" + txt_oid.Text + "%' ";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.pname from productAssess a  left join products b on a.pid=b.pid " + where + " order by id desc");
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
    /// 删除商品评价
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(" delete from productAssess where id=" + lk.CommandName);

        //重新绑定数据源
        bind();
    }




}

