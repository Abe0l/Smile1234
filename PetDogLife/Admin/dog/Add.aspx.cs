using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class dog_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加狗狗种类
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Dog ( dname,photo,memo,addtime ) ");
        strSql.Append(@" values (@dname,@photo,@memo,@addtime)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@dname", SqlDbType.VarChar,50),
            new SqlParameter("@photo", SqlDbType.VarChar,50),
            new SqlParameter("@memo", SqlDbType.NText,50000),
            new SqlParameter("@addtime", SqlDbType.DateTime,8)        };

        parameters[0].Value =txt_dname.Text;


        string addrphoto ="";
        if (fpphoto.HasFile)
        {
            string name = this.fpphoto.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path =  filename + extname;
            string savePath = Server.MapPath(@"..\..\uploads\" + filename + extname);
            fpphoto.PostedFile.SaveAs(savePath);
            addrphoto = path;
        }

        parameters[1].Value =addrphoto;
        parameters[2].Value =fck_memo.Value;
        parameters[3].Value =DateTime.Now;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

