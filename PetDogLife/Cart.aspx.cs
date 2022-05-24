using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if(Session["name"]==null)
            {
                MessageBox.ShowAndRedirect(this, "请先登录！", "login.aspx");
                return;
            }

            bind();

        }
    }


                   
    /// <summary>
    /// 绑定购物车
    /// </summary>
    protected void bind()
    {
        shoppingcart car = new shoppingcart();
        if (Session["car"] != null)
        {
            car = (shoppingcart)Session["car"];
        }
        Repeater1.DataSource = car.orders;
        Repeater1.DataBind();
        this.Literal1.Text = car.totalcost.ToString();
        Literal2.Text = car.totalquantity.ToString();
       
    }

    /// <summary>
    /// 删除商品
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton ibn = (LinkButton)sender;

        shoppingcart car = new shoppingcart();
        if (Session["car"] != null)
        {
            car = (shoppingcart)Session["car"];
        }
        car.deleteitem(ibn.CommandArgument);
        Session["car"] = car;

        bind();
    }

    /// <summary>
    /// 清空购物车
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        shoppingcart car = new shoppingcart();
        if (Session["car"] != null)
        {
            car = (shoppingcart)Session["car"];
        }
        car.clarecar();
        Session["car"] = car;

        bind();
    }

    /// <summary>
    /// 继续购物
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("pro.aspx");
    }


    /// <summary>
    /// 提交订单
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            MessageBox.Show(this, "请先登录后再进行此操作！");
            return;
        }

        if (Repeater1.Items.Count == 0)
        {
            MessageBox.Show(this, "不允许提交空订单!");
            return;
        }




        //购物车类
        shoppingcart car = new shoppingcart();
        if (Session["car"] != null)
        {
            car = (shoppingcart)Session["car"];
        }


        //遍历购物车
        ICollection orders = car.orders;

        foreach (car_class pd in orders)
        {
            if (SqlHelper.GetCount("select count(*) from  products where pid=" + pd.itemid.ToString() + " and quan<" + pd.quantity) > 0)
            {
                MessageBox.Show(this, "提交失败，商品【" + pd.shangpinname + "】库存不足！");
                return;
            }

        }


  
        string oid = DateTime.Now.ToString("yyyyMMddhhmmssfff");


        //设置Sql
        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"insert into Orders ( oid,lname,sprice,atime ) ");
        strSql.Append(@" values (@oid,@lname,@sprice,@atime)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@oid", SqlDbType.VarChar,50),
            new SqlParameter("@lname", SqlDbType.VarChar,50),
            new SqlParameter("@sprice", SqlDbType.Decimal,9),
            new SqlParameter("@atime", SqlDbType.DateTime,8)       };

        parameters[0].Value =oid;
        parameters[1].Value = Session["name"].ToString();
        parameters[2].Value = decimal.Parse(Literal1.Text);
        parameters[3].Value = DateTime.Now;


        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString(), CommandType.Text, parameters);



        foreach (car_class pd in orders)
        {
            //设置Sql
            StringBuilder strSql2 = new StringBuilder();
            strSql2.Append(@"insert into OrdersMore ( oid,pid,oprice,quantity ) ");
            strSql2.Append(@" values (@oid,@pid,@oprice,@quantity)");

            //设置参数
            SqlParameter[] parameters2 = new SqlParameter[] {
            new SqlParameter("@oid", SqlDbType.VarChar,50),
            new SqlParameter("@pid", SqlDbType.Int,4),
            new SqlParameter("@oprice", SqlDbType.Decimal,9),
            new SqlParameter("@quantity", SqlDbType.Int,4)        };

            parameters2[0].Value = oid;
            parameters2[1].Value = pd.itemid;
            parameters2[2].Value = pd.price;
            parameters2[3].Value = pd.quantity;

            //提交到数据库
            SqlHelper.ExecuteNonQuery(strSql2.ToString(), CommandType.Text, parameters2);


            SqlHelper.ExecuteNonQuery("update products set quan=quan-" + pd.quantity + " where pid=" + pd.itemid);

        }





        //清空购物车
        car.clarecar();

        Session["car"] = car;

        Response.Redirect("cart2.aspx");
    }


}