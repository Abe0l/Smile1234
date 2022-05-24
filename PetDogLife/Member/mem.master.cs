using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;


public partial class member_mem  : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("../default.aspx");
        }

        if(!IsPostBack)
        {
            DataSet dstid = SqlHelper.ExecuteforDataSet("select tid,tname from productType");
            ddltid.DataSource = dstid;
            ddltid.DataTextField = "tname";
            ddltid.DataValueField = "tid";
            ddltid.DataBind();
            ddltid.Items.Insert(0, new ListItem("---全部---", ""));

            //声明购物车类
            shoppingcart car = new shoppingcart();
            if (Session["car"] != null)
            {
                car = (shoppingcart)Session["car"];
            }
            ltTotal.Text = car.totalquantity.ToString();


            
        }
    }

        /// <summary>
    /// 退出登录
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnkOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../default.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_pname.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('关键字不能为空！');</script>");
            return;
        }
        string url = "../pro.aspx?k=" + Server.UrlEncode(txt_pname.Text) + "&tid=" + ddltid.SelectedValue;

        Response.Redirect(url);
    }
}
