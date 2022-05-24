using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;


public partial class member_Default  : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack && Session["name"]!=null)
        {
            //初始化
            chushi();
        }
    }

    /// <summary>
    /// 初始化
    /// </summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql = "";
            sql = "select * from orders a left join members b on a.lname=b.lname where oid='" + Request.QueryString["id"] + "'";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbloid.Text = sdr["oid"].ToString();
                lbllname.Text = sdr["lname"].ToString();
                lblsprice.Text = sdr["sprice"].ToString();
                lblatime.Text = sdr["atime"].ToString();
                lblmname.Text = sdr["mname"].ToString();
                Label1.Text = sdr["flag"].ToString();
                lbltel.Text = sdr["tel"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                Label2.Text = sdr["wul"].ToString().Replace("\n", "<br>");
                GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,pname,pic from ordersMore a left join products b on a.pid=b.pid where oid='"+Request.QueryString["id"]+"' order by id desc");
                GridView1.DataBind();

              
            }

        }
    }

}
