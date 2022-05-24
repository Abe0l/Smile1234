using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class train_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加狗狗训练
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Train ( title,memo,addtime ) ");
        strSql.Append(@" values (@title,@memo,@addtime)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@title", SqlDbType.VarChar,50),
            new SqlParameter("@memo", SqlDbType.NText,50000),
            new SqlParameter("@addtime", SqlDbType.DateTime,8)        };

        parameters[0].Value =txt_title.Text;
        parameters[1].Value =fck_memo.Value;
        parameters[2].Value =DateTime.Now;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

