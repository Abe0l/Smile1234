using System;
using System.Web.UI;
using System.Collections; //使用hashtable类必须引入该命名空间


    [Serializable]
    public class car_class
    { //定义商品类,保存商品的各种属性
        string shangpinid; //商品id
        string sp_name; //商品名称
        decimal sp_price; //商品价格
        int sp_quan; //商品数量
    string sp_tupian; //商品图片
    public string itemid
        {
            get { return shangpinid; }
            set { shangpinid = value; }
        }

        public string shangpinname
        {
            get { return sp_name; }
            set { sp_name = value; }
        }

        public decimal price
        {
            get { return sp_price; }
            set { sp_price = value; }
        }

        public int quantity
        {
            get { return sp_quan; }
            set { sp_quan = value; }
        }

    public string tupian
    {
        get { return sp_tupian; }
        set { sp_tupian = value; }
    }

    public car_class(string itemid, string shangpinname, decimal price, int quantity, string tupian)
    { //构造方法，初始化商品的各个属性

            shangpinid = itemid;
            sp_name = shangpinname;
            sp_price = price;
            sp_quan = quantity;
        sp_tupian = tupian;
    }
    }

    [Serializable]
    public class shoppingcart
    {
        Hashtable cart_orders = new Hashtable();
        public ICollection orders
        {
            get { return cart_orders.Values; }
        }

        public decimal totalcost
        { //计算总价格
            get
            {
                decimal total = 0;
                foreach (DictionaryEntry entry in cart_orders)
                {
                    car_class order = (car_class)entry.Value;
                    total += (order.price * order.quantity);
                }
                return total;
            }
        }

        public int totalquantity
        { //计算总数量
            get
            {
                int total = 0;
                foreach (DictionaryEntry entry in cart_orders)
                {
                    car_class order = (car_class)entry.Value;
                    total += (order.quantity);
                }
                return total;
            }
        }


        public void additem(car_class order)
        { //添加物件方法
            int q = order.quantity;
            car_class _order = (car_class)cart_orders[order.itemid];
            if (_order != null)
                _order.quantity += q;
            else
                cart_orders.Add(order.itemid, order);
        }

        public void deleteitem(string itemid)
        { //删除物件
            if (cart_orders[itemid] != null)
                cart_orders.Remove(itemid);
        }

        public void clarecar()
        {   //清空购物车 
            cart_orders.Clear();
        }
    }
