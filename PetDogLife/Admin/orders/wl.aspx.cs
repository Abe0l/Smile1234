using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class orders_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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

                ViewState["w"] = sdr["wul"].ToString();

            }

        }
    }


    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage.aspx");
    }

    protected void btnReturn_Click1(object sender, EventArgs e)
    {

        SqlHelper.ExecuteNonQuery("update orders  set wul='" +DateTime.Now.ToString()+ "&nbsp;&nbsp;"+txt_title.Text+"\n"+ ViewState["w"].ToString() + "' where oid='" + Request.QueryString["id"] + "'");
        chushi();

        txt_title.Text = "";
    }
}
