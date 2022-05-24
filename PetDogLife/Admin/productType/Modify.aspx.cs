using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class productType_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品类别
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品类别
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from productType where tid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_tname.Text = ds.Tables[0].Rows[0]["tname"].ToString();
        }
    }

    /// <summary>
    /// 编辑商品类别
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update productType set ");
        strSql.Append("tname = @tname");
        strSql.Append("  where tid=@tid");
        int tid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@tid", SqlDbType.Int,4),
                    new SqlParameter("@tname", SqlDbType.VarChar,50)  };
              parameters[0].Value =tid;
              parameters[1].Value = txt_tname.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

