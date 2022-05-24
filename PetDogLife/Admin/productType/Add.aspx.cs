using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class productType_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加商品类别
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from productType where tname='" + txt_tname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该类别名称已存在，请重新输入！");
            return;
        }

       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into ProductType ( tname ) ");
        strSql.Append(@" values (@tname)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@tname", SqlDbType.VarChar,50)        };

        parameters[0].Value =txt_tname.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

