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

        if (!IsPostBack && Session["name"] != null)
        {
            
            
        }
    }

        /// <summary>
    /// 修改密码
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnPass_Click(object sender, EventArgs e)
    {
        //判断两次密码输入是否一致，如果不一致，则弹出提示信息，并返回
        if (txt_pass2.Text == txt_pass3.Text)
        {
            //根据用户编号和原密码得到用户信息
            SqlDataReader sdr = SqlHelper.ExecuteReader("select * from members where  lname='" + Session["name"].ToString() + "' and pass='" + txt_pass1.Text + "'");

            //判断原密码是否正确
            if (sdr.Read())
            {
                //更新新密码
                SqlHelper.ExecuteNonQuery("update members set pass='" + txt_pass2.Text + "' where lname='" + Session["name"].ToString() + "'");
                MessageBox.Show(this, "修改成功!");

            }
            else
            {
                MessageBox.Show(this, "原密码不正确!");
            }
            sdr.Close();
        }
        else
        {
            MessageBox.Show(this, "两次密码输入不一致!");
        }
    }


}
