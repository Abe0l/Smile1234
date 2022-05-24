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
            
            show();
        }
    }

    /// <summary>
    /// 根据编号显示对应的信息
    /// </summary>
    protected void show()
    {
        SqlDataReader sdrnotices = SqlHelper.ExecuteReader("select * from news where nid="+Request.QueryString["id"]);
        if(sdrnotices.Read())
        {
            lbltitle.Text=sdrnotices["title"].ToString();
            lbladdtime.Text=sdrnotices["addtime"].ToString();
            lblmemo.Text=sdrnotices["memo"].ToString();
        }

    }

}
