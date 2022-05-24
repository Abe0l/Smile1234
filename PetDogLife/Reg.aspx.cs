using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;


public partial class news  : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
             
            

            
            
            
        }
    }

    
    /// <summary>
    /// 注册
    /// </summary>
    protected void ButtonReg_Click(object sender, EventArgs e)
    {

        //验证用户名是否已经存在
        if (SqlHelper.GetCount("select count(*) from members where lname = '" + txt_lname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该用户名已存在，请重新输入！");
            return;
        }


        if (txt_pass2.Text!=txt_pass.Text)
        {
            MessageBox.Show(this, "两次密码不一致, 请确认！");
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

        parameters[0].Value =txt_lname.Text;
        parameters[1].Value =txt_pass.Text;
        parameters[2].Value =txt_mname.Text;
        parameters[3].Value =txt_tel.Text;
        parameters[4].Value =txt_email.Text;
        parameters[5].Value =txt_address.Text;
        parameters[6].Value = DateTime.Now;
        parameters[7].Value = ddlquan.SelectedValue;
        parameters[8].Value = TextBox1.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(),CommandType.Text, parameters);

        Session["name"] = txt_lname.Text;

        MessageBox.ShowAndRedirect(this, "恭喜您注册成功！", "default.aspx");
    }



    
    
}
