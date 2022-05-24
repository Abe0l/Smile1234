using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class board_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化留言板
            chushi();
        }
    }

    /// <summary>
    /// 初始化留言板
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from board where id="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblid.Text = sdr["id"].ToString();
                lbllname.Text = sdr["lname"].ToString();
                lbltitle.Text = sdr["title"].ToString();
                lbldetail.Text = sdr["detail"].ToString();
                lblqtime.Text = sdr["qtime"].ToString();
                lblanswer.Text = sdr["answer"].ToString();
            }

        }
    }
}

