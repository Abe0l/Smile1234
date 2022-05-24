using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class products_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品
    /// </summary>
    protected void chushi()
    {
ddltid.DataSource = SqlHelper.ExecuteforDataSet("select tid,tname from productType");
            ddltid.DataTextField = "tname";
            ddltid.DataValueField = "tid";
            ddltid.DataBind();


        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from products where pid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_pname.Text = ds.Tables[0].Rows[0]["pname"].ToString();
            ddltid.SelectedValue=ds.Tables[0].Rows[0]["tid"].ToString();
            Labelpic.Text = ds.Tables[0].Rows[0]["pic"].ToString();
            if (Labelpic.Text != "" && Labelpic.Text.Length > 3)
            {
               Imagepic.ImageUrl = "../../uploads/" + Labelpic.Text;
               Imagepic.Visible = true;
             }
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
            fck_memo.Value= ds.Tables[0].Rows[0]["memo"].ToString();

            txt_quan.Text = ds.Tables[0].Rows[0]["quan"].ToString();
        }
    }

    /// <summary>
    /// 编辑商品
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update products set ");
        strSql.Append("pname = @pname,");
        strSql.Append("tid = @tid,");
        strSql.Append("pic = @pic,");
        strSql.Append("price = @price,");
        strSql.Append("memo = @memo,");
        strSql.Append("quan = @quan");
        strSql.Append("  where pid=@pid");
        int pid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@pid", SqlDbType.Int,4),
                    new SqlParameter("@pname", SqlDbType.VarChar,50),
                    new SqlParameter("@tid", SqlDbType.Int,4),
                    new SqlParameter("@pic", SqlDbType.VarChar,100),
                    new SqlParameter("@price", SqlDbType.Decimal,9),
                    new SqlParameter("@memo", SqlDbType.NText,50000) ,
                    new SqlParameter("@quan", SqlDbType.Int,4) };
              parameters[0].Value =pid;
              parameters[1].Value = txt_pname.Text;
              parameters[2].Value =ddltid.SelectedValue;

        string addrpic =Labelpic.Text;
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
              parameters[3].Value =addrpic;
              parameters[4].Value = txt_price.Text;
              parameters[5].Value =fck_memo.Value;
        parameters[6].Value = txt_quan.Text;

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

