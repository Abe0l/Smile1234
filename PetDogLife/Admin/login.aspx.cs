using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //登录
    protected void login_button_Click(object sender, EventArgs e)
    {
        string str = "";

        //验证输入
        if (txt_account.Value == "") 
        {
            str = "账号不能为空！";
        }

        else if (txt_password.Value == "")
        {
            str = "密码不能为空！";
        }
        else
        {
            if (String.Compare(Request.Cookies["CheckCode"].Value, code.Text.ToString().Trim(), true) != 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('对不起，请输入正确的验证码！');</script>");
                return;
            }


            //根据用户名和密码得到管理员信息
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@" select * from admin ");
            strSql.Append(@" where lname=@lname and pwd=@pwd");

            //设置参数
            SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@lname", SqlDbType.VarChar,50),
            new SqlParameter("@pwd", SqlDbType.VarChar,50)     };

            parameters[0].Value = txt_account.Value;
            parameters[1].Value = txt_password.Value;

            //根据用户名和密码得到管理员信息
            SqlDataReader sdr = SqlHelper.ExecuteReader(strSql.ToString(),CommandType.Text, parameters);

            //判断管理员是否存在
            if (sdr.Read())
            {
                Session["bh"] = sdr["lname"].ToString();
                Session["mc"] = sdr["lname"].ToString();
                Session["qx"] =sdr["flag"].ToString()=="1"? "超级管理员" : "管理员";
                Response.Redirect("Default.aspx");

            }
            else
            {
                str = "登录失败，用户名或密码错误。";
            }
        }

        //弹出提示信息
        MessageBox.Show(this, "请输入正确的用户名或密码");
    }
}
