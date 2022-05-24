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
            //初始化会员
            chushi();
        }
    }

    /// <summary>
    /// 初始化会员
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from members where lname='"+ Request.QueryString["id"]+"'";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbllname.Text = sdr["lname"].ToString();
                lblpass.Text = sdr["pass"].ToString();
                lblmname.Text = sdr["mname"].ToString();
                lbltel.Text = sdr["tel"].ToString();
                lblemail.Text = sdr["email"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                lblregtime.Text = sdr["regtime"].ToString();
                Label1.Text = sdr["ques"].ToString();
                Label2.Text = sdr["ans"].ToString();
            }

        }
    }
}

