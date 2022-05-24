using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class products_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select a.*,b.tname from products a  left join productType b on a.tid=b.tid where pid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblpid.Text = sdr["pid"].ToString();
                lblpname.Text = sdr["pname"].ToString();
                lbltid.Text = sdr["tname"].ToString();
                if (sdr["pic"].ToString() != "" && sdr["pic"].ToString().Length > 3)
                {
                    imgpic.ImageUrl = "../../uploads/" + sdr["pic"].ToString();
                }
                lblprice.Text = sdr["price"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
                lbladdtime.Text = sdr["addtime"].ToString();
                Label1.Text = sdr["quan"].ToString();
            }

        }
    }
}

