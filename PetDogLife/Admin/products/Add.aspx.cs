using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class products_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ddltid.DataSource = SqlHelper.ExecuteforDataSet("select tid,tname from productType");
            ddltid.DataTextField = "tname";
            ddltid.DataValueField = "tid";
            ddltid.DataBind();


        }
    }

    /// <summary>
    /// 添加商品
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Products ( pname,tid,pic,price,memo,addtime,quan ) ");
        strSql.Append(@" values (@pname,@tid,@pic,@price,@memo,@addtime,@quan)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@pname", SqlDbType.VarChar,50),
            new SqlParameter("@tid", SqlDbType.Int,4),
            new SqlParameter("@pic", SqlDbType.VarChar,100),
            new SqlParameter("@price", SqlDbType.Decimal,9),
            new SqlParameter("@memo", SqlDbType.NText,50000),
            new SqlParameter("@addtime", SqlDbType.DateTime,8)   ,
            new SqlParameter("@quan", SqlDbType.Int,4)     };

        parameters[0].Value =txt_pname.Text;
        parameters[1].Value =ddltid.SelectedValue;


        string addrpic ="";
        if (fppic.HasFile)
        {
            string name = this.fppic.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path =  filename + extname;
            string savePath = Server.MapPath(@"..\..\uploads\" + filename + extname);
            fppic.PostedFile.SaveAs(savePath);
            addrpic = path;
        }

        parameters[2].Value =addrpic;
        parameters[3].Value =decimal.Parse (txt_price.Text);
        parameters[4].Value =fck_memo.Value;
        parameters[5].Value =DateTime.Now;
        parameters[6].Value = txt_quan.Text;
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

