using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class dog_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化狗狗种类
            chushi();
        }
    }

    /// <summary>
    /// 初始化狗狗种类
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from dog where did=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_dname.Text = ds.Tables[0].Rows[0]["dname"].ToString();
            Labelphoto.Text = ds.Tables[0].Rows[0]["photo"].ToString();
            if (Labelphoto.Text != "" && Labelphoto.Text.Length > 3)
            {
               Imagephoto.ImageUrl = "../../uploads/" + Labelphoto.Text;
               Imagephoto.Visible = true;
             }
            fck_memo.Value= ds.Tables[0].Rows[0]["memo"].ToString();
        }
    }

    /// <summary>
    /// 编辑狗狗种类
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update dog set ");
        strSql.Append("dname = @dname,");
        strSql.Append("photo = @photo,");
        strSql.Append("memo = @memo");
        strSql.Append("  where did=@did");
        int did = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@did", SqlDbType.Int,4),
                    new SqlParameter("@dname", SqlDbType.VarChar,50),
                    new SqlParameter("@photo", SqlDbType.VarChar,50),
                    new SqlParameter("@memo", SqlDbType.NText,50000)  };
              parameters[0].Value =did;
              parameters[1].Value = txt_dname.Text;

        string addrphoto =Labelphoto.Text;
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
              parameters[2].Value =addrphoto;
              parameters[3].Value =fck_memo.Value;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

