using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class members_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加会员
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from members where lname='" + txt_lname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该用户名已存在，请重新输入！");
            return;
        }

        //设置Sql
        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"insert into members ( lname,pass,mname,tel,email,address,regtime ,ques,ans) ");
        strSql.Append(@" values (@lname,@pass,@mname,@tel,@email,@address,@regtime,@ques,@ans)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@lname", SqlDbType.VarChar,50),
            new SqlParameter("@pass", SqlDbType.VarChar,50),
            new SqlParameter("@mname", SqlDbType.VarChar,50),
            new SqlParameter("@tel", SqlDbType.VarChar,50),
            new SqlParameter("@email", SqlDbType.VarChar,100),
            new SqlParameter("@address", SqlDbType.VarChar,100),
            new SqlParameter("@regtime", SqlDbType.DateTime,8)  ,
                  new SqlParameter("@ques", SqlDbType.VarChar,50),
                        new SqlParameter("@ans", SqlDbType.VarChar,50)      };

        parameters[0].Value = txt_lname.Text;
        parameters[1].Value = txt_pass.Text;
        parameters[2].Value = txt_mname.Text;
        parameters[3].Value = txt_tel.Text;
        parameters[4].Value = txt_email.Text;
        parameters[5].Value = txt_address.Text;
        parameters[6].Value = DateTime.Now;
        parameters[7].Value = ddlquan.SelectedValue;
        parameters[8].Value = TextBox1.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);



        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

