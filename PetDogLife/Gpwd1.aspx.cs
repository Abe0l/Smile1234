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
        if (!(SqlHelper.GetCount("select count(*) from members where lname = '" + txt_lname.Text + "' ") > 0))
        {
            MessageBox.Show(this, "该用户名不存在，请重新输入！");
            return;
        }


        Response.Redirect("gpwd2.aspx?l=" + txt_lname.Text);
    }



    
    
}
