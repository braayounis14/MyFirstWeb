﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWeb.pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "dsa@g.sda";
            EmailSigned.InnerText = "Logged in as: "+Session["email"].ToString();
            UserName.InnerText = InfoByEmailSession("FullName");
            OrdersPlacedNumber.InnerText = OrdersPlacedNumberBy();
            ItemsCartNumber.InnerText = ItemsInCart();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();
            Session["Im"] = st;
            Response.Redirect("ProductsAllDetails.aspx");
        }
        public string InfoByEmailSession(string table)
        {
            // it checks if the user is exist at the Database, and returns true if exist and false if not exist /
            
            string st = "select "+table+" from [USERS] where [Email]='" + Session["email"].ToString() + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
            if (dt.Rows.Count > 0)
                return dt.Rows[0][0].ToString();
            return "";

        }
        public string ItemsInCart()
        {
            // it checks if the user is exist at the Database, and returns true if exist and false if not exist /

            string st = "select * from [Cart] where [Email]='" + Session["email"].ToString() + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");

            return dt.Rows.Count.ToString();

        }

        public string OrdersPlacedNumberBy()
        {
            // it checks if the user is exist at the Database, and returns true if exist and false if not exist /

            string st = "select * from [Orders] where [Email]='" + Session["email"].ToString() + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");

            return dt.Rows.Count.ToString();

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            string st = this.DataList1.DataKeys[e.Item.ItemIndex].ToString();

           if (e.Item.ItemIndex >= 10 && OrderRecent(st))
            {
               e.Item.Visible = false;
            }


        }


        public bool OrderRecent(string Img)
        
        {


            string st = "select BuyDate from [Orders] where [Email]='" + Session["email"].ToString() + "'AND [Image] = '" + Img + "'";
            DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");

            string dateString = dt.Rows[0][0].ToString();
            DateTime date = DateTime.ParseExact(dateString, "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);

            DateTime twoMonthsAgo = DateTime.Now.AddMonths(-2);

            return date < twoMonthsAgo;
        
        
        }


    }
}