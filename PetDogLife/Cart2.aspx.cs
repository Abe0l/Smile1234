using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if(Session["name"]==null)
            {
                MessageBox.ShowAndRedirect(this, "请先登录！", "login.aspx");
                return;
            }
      
            //初始化会员
            chushi();
        }
    }

    /// <summary>
    /// 初始化会员
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from members where lname='" + Session["name"].ToString() + "'");

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_mname.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
    }


    /// <summary>
    /// 提交订单
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            MessageBox.Show(this, "请先登录后再进行此操作！");
            return;
        }

      
        //更新   
        StringBuilder strSql3 = new StringBuilder();

        strSql3.Append("update members set ");
        strSql3.Append("mname = @mname,");
        strSql3.Append("tel = @tel,");
        strSql3.Append("address = @address");
        strSql3.Append("  where lname=@lname");


        //设置参数
        SqlParameter[] parameters3 = new SqlParameter[] {
                    new SqlParameter("@lname", SqlDbType.VarChar,50),
                    new SqlParameter("@mname", SqlDbType.VarChar,50),
                    new SqlParameter("@tel", SqlDbType.VarChar,50),
                    new SqlParameter("@address", SqlDbType.VarChar,100)  };
        parameters3[0].Value =Session["name"].ToString();
        parameters3[1].Value = txt_mname.Text;
        parameters3[2].Value = txt_tel.Text;
        parameters3[3].Value = txt_address.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql3.ToString(), CommandType.Text, parameters3);



        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('恭喜您提交订单成功！');location.href='member/od.aspx';</script>");
    }


}