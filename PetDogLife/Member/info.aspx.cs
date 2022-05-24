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
        
        if(!IsPostBack)
        {
             
            
            
            show();
            
        }
    }

        /// <summary>
    /// 初始化
    /// </summary>
    protected void show()
    {
        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from members where lname='" + Session["name"].ToString() + "'");

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_lname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txt_mname.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            txt_email.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            ddlquan.SelectedValue = ds.Tables[0].Rows[0]["ques"].ToString();
            TextBox1.Text = ds.Tables[0].Rows[0]["ans"].ToString();
        }
    }

    /// <summary>
    /// 修改个人资料
    /// </summary>
    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        StringBuilder strSql = new StringBuilder();
        strSql.Append("update members set ");
        strSql.Append("mname = @mname,");
        strSql.Append("tel = @tel,");
        strSql.Append("email = @email,");
        strSql.Append("address = @address,");
        strSql.Append("ques = @ques,");
        strSql.Append("ans = @ans");
        strSql.Append("  where lname=@lname");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@lname", SqlDbType.VarChar,50),
                    new SqlParameter("@mname", SqlDbType.VarChar,50),
                    new SqlParameter("@tel", SqlDbType.VarChar,50),
                    new SqlParameter("@email", SqlDbType.VarChar,100),
                    new SqlParameter("@address", SqlDbType.VarChar,100) ,
                    new SqlParameter("@ques", SqlDbType.VarChar,50),
                    new SqlParameter("@ans", SqlDbType.VarChar,50) };
              parameters[0].Value =txt_lname.Text;
              parameters[1].Value = txt_mname.Text;
              parameters[2].Value = txt_tel.Text;
              parameters[3].Value = txt_email.Text;
              parameters[4].Value = txt_address.Text;
        parameters[5].Value = ddlquan.SelectedValue;
        parameters[6].Value = TextBox1.Text;

        SqlHelper.ExecuteNonQuery(strSql.ToString(),CommandType.Text, parameters);

        MessageBox.Show(this, "操作成功！");
    }



    
    
}
