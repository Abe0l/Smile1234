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



            ShowInfo();
        }
    }

    //初始化
    private void ShowInfo()
    {
        if (Request.QueryString["l"] != null)
        {
            string sql = "";
            sql = "select * from members where lname='" + Request.QueryString["l"] + "' ";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {

                lblques.Text = sdr["ques"].ToString();
                ViewState["ans"] = sdr["ans"].ToString();
                Session["l"] = sdr["lname"].ToString();

                Literal1.Text = sdr["lname"].ToString();
            }

        }
    }


    /// <summary>
    /// 注册
    /// </summary>
    protected void ButtonReg_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != ViewState["ans"].ToString())
        {
            MessageBox.Show(this, "密保答案错误，请重新输入！");
            return;
        }

        Response.Redirect("gpwd3.aspx");
    }





}
