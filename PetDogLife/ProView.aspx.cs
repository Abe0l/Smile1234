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
            
            show();

            bind();
        }
    }

    /// <summary>
    /// 根据编号显示对应的信息
    /// </summary>
    protected void show()
    {
        SqlDataReader sdrproducts = SqlHelper.ExecuteReader("select * from products where pid="+Request.QueryString["id"]);
        if(sdrproducts.Read())
        {
            Literal1.Text = sdrproducts["addtime"].ToString();
            lblpname.Text=sdrproducts["pname"].ToString();
            lblprice.Text=sdrproducts["price"].ToString();
            lblmemo.Text=sdrproducts["memo"].ToString();
            imgpic.ImageUrl = "uploads/"+sdrproducts["pic"].ToString();
            Literal2.Text = sdrproducts["quan"].ToString();

            if(int.Parse(Literal2.Text)<=0)
            {
                Button1.Enabled = false;
                Button1.Text = "暂无库存";
            }
        }

      
    }


    /// <summary>
    /// 绑定数据
    /// </summary>
    protected void bind()
    {
        DataPage dp = new DataPage();
        string where = " pid=" + Request.QueryString["id"];

        int recordcount;
        int pagesize = this.AspNetPager1.PageSize;
        int pageindex = this.AspNetPager1.CurrentPageIndex;
        Repeater1.DataSource = dp.pagelist(pagesize, pageindex, "productAssess", " * ", "id", where, "id desc", out recordcount);
        Repeater1.DataBind();
    }




    /// <summary>
    /// 分页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bind();
    }



    /// <summary>
    /// 数量-1
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>   
    protected void btnJian_Click(object sender, EventArgs e)
    {
        if (int.Parse(num.Value) > 1)
        {
            num.Value = (int.Parse(num.Value) - 1).ToString();
        }
    }

    /// <summary>
    /// 数量+1
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnJia_Click(object sender, EventArgs e)
    {
        if (int.Parse(num.Value) >= int.Parse(Literal2.Text))
        {
            MessageBox.Show(this, "购买数量不能大于库存数量");
            return;
        }
        num.Value = (int.Parse(num.Value) + 1).ToString();
    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            MessageBox.Show(this, "请先登录！");
            return;
        }

     

        //判断数量是否输入有误
        if (!PageValidate.IsNumber(num.Value))
        {
            MessageBox.Show(this, "数量输入有误，请重新输入！");
            return;
        }


        if (int.Parse(num.Value) > int.Parse(Literal2.Text))
        {
            MessageBox.Show(this, "购买数量不能大于库存数量");
            return;
        }

        //声明购物车类
        shoppingcart car = new shoppingcart();
        if (Session["car"] != null)
        {   
            car = (shoppingcart)Session["car"];
        }

        car_class product = new car_class(Request.QueryString["id"], lblpname.Text, decimal.Parse(lblprice.Text), int.Parse(num.Value), imgpic.ImageUrl);

        //加入到购物车
        car.additem(product);

        //把购物车存入Session
        Session["car"] = car;

        MessageBox.ShowAndRedirect(this, "操作成功，请返回！", Request.Url.ToString());
    }
}
