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
             
            
            
            
            bindData();
        }
    }

        /// <summary>
    /// 绑定数据
    ///</summary>
    protected void bindData()
    {
        DataPage dp = new DataPage();
        string where = "";

        int total;
        int quan = AspNetPager1.PageSize;
        int index =AspNetPager1.CurrentPageIndex;
        Repeater1.DataSource =dp.pagelist(quan, index, "train", " * ", " nid ", where, " nid  desc", out total);
        Repeater1.DataBind();
        AspNetPager1.RecordCount = total;
   }

    /// <summary>
    /// 分页
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }




    
    
}
