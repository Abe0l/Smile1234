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
    /// ������
    /// </summary>
    protected void bind()
    {
        DataPage dp = new DataPage();
        string where = " 1=1 ";
        
        int recordcount;
        int pagesize = this.AspNetPager1.PageSize;
        int pageindex =this.AspNetPager1.CurrentPageIndex;
        Repeater1.DataSource =dp.pagelist(pagesize, pageindex, "news", " * ", "nid", where, "nid desc", out recordcount);
        Repeater1.DataBind();
        AspNetPager1.RecordCount = recordcount;
    }

    /// <summary>
    /// ��ҳ
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bind();
    }



}
