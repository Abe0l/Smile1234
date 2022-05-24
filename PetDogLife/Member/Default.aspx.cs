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
        
        if(!IsPostBack && Session["name"]!=null)
        {
            Literal1.Text = Request.UserHostAddress.ToString();
            show();
        }
    }

    /// <summary>
    /// ���ݱ����ʾ��Ӧ����Ϣ
    /// </summary>
    protected void show()
    {
        SqlDataReader sdrmembers = SqlHelper.ExecuteReader("select * from members where lname='"+Session["name"].ToString()+"'");
        if(sdrmembers.Read())
        {
            lbllname.Text=sdrmembers["lname"].ToString();
        }

    }

}
