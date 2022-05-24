using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
     

public partial class _Default  : System.Web.UI.Page
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
        Repeater1.DataSource = SqlHelper.ExecuteforDataSet("select  top 10 * from news  order by nid desc  ");
        Repeater1.DataBind();


        Repeater2.DataSource = SqlHelper.ExecuteforDataSet("select top 4  * from dog  order by did desc ");
        Repeater2.DataBind();



        Repeater4.DataSource = SqlHelper.ExecuteforDataSet("select top 4  * from products   order by pid desc ");
        Repeater4.DataBind();
    }



}
