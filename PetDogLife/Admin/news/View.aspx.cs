using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class news_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化新闻资讯
            chushi();
        }
    }

    /// <summary>
    /// 初始化新闻资讯
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from news where nid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblnid.Text = sdr["nid"].ToString();
                lbltitle.Text = sdr["title"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
                lbladdtime.Text = sdr["addtime"].ToString();
            }

        }
    }
}

