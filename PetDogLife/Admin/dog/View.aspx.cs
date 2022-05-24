using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class dog_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化狗狗种类
            chushi();
        }
    }

    /// <summary>
    /// 初始化狗狗种类
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from dog where did="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbldid.Text = sdr["did"].ToString();
                lbldname.Text = sdr["dname"].ToString();
                if (sdr["photo"].ToString() != "" && sdr["photo"].ToString().Length > 3)
                {
                    imgphoto.ImageUrl = "../../uploads/" + sdr["photo"].ToString();
                }
                lblmemo.Text = sdr["memo"].ToString();
                lbladdtime.Text = sdr["addtime"].ToString();
            }

        }
    }
}

