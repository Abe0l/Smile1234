using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
 

public partial class news  : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            
            bind();
        }
    }

    
    /// <summary>
    /// 绑定数据
    /// </summary>
    protected void bind()
    {
        DataPage dp = new DataPage();
        string where = "   1=1 ";
        
        if(Request.QueryString["tid"]!=null)
        {
            if(Request.QueryString["tid"]!="")
            {
                where += " and tid=" + Request.QueryString["tid"];
            }

        }

        if(Request.QueryString["k"]!=null)
        {
            where += " and pname like '%" + Request.QueryString["k"] + "%' ";
        }

        int recordcount;
        int pagesize = this.AspNetPager1.PageSize;
        int pageindex =this.AspNetPager1.CurrentPageIndex;
        Repeater1.DataSource =dp.pagelist(pagesize, pageindex, "products", " * ", "pid", where, "pid desc", out recordcount);
        Repeater1.DataBind();
        AspNetPager1.RecordCount = recordcount;
    }

    /// <summary>
    /// 分页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bind();
    }



}
