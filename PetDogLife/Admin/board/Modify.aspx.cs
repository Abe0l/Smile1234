using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class board_Edit : System.Web.UI.Page
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
    /// </summary>
    protected void chushi()
    {

        string sql = "";
        sql = "select * from board where id=" + Request.QueryString["id"];
        //根据编号得到相应的记录
        SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
        if (sdr.Read())
        {
            lblid.Text = sdr["id"].ToString();
            lbllname.Text = sdr["lname"].ToString();
            lbltitle.Text = sdr["title"].ToString();
            lbldetail.Text = sdr["detail"].ToString();
            lblqtime.Text = sdr["qtime"].ToString();
            txt_answer.Text = sdr["answer"].ToString();
        }
    }

    /// <summary>
    /// 编辑留言板
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update board set ");
        strSql.Append("answer = @answer");
        strSql.Append("  where id=@id");
        int id = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@id", SqlDbType.Int,4),
                    new SqlParameter("@answer", SqlDbType.VarChar,500)  };
              parameters[0].Value =id;
              parameters[1].Value = txt_answer.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

