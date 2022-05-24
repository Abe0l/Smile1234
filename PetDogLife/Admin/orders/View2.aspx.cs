using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class members_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品评价
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品评价
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql = "";
            sql = "select a.*,b.pname from productAssess a  left join products b on a.pid=b.pid where id=" + Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblid.Text = sdr["id"].ToString();
                lblpid.Text = sdr["pname"].ToString();
                lbloid.Text = sdr["oid"].ToString();
                lbllname.Text = sdr["lname"].ToString();
                lblstar.Text = sdr["star"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
                lblatime.Text = sdr["atime"].ToString();
            }

        }
    }
}

