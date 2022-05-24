using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;


public partial class control_nav  : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            
            bind();
        }
    }

    
    /// <summary>
    /// °ó¶¨Êý¾Ý
    /// </summary>
    protected void bind()
    {
        Repeater1.DataSource = SqlHelper.ExecuteforDataSet("select  * from productType   ");
        Repeater1.DataBind();

        string sql = @"select top 3 a.*,isnull(tt,0) as tt
                    from products a left join
                    (select pid,sum(quantity) as tt from ordersMore group by pid ) b on a.pid=b.pid 
                    order by tt desc";
        Repeater2.DataSource = SqlHelper.ExecuteforDataSet(sql);
        Repeater2.DataBind();
   }



}
