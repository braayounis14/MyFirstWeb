using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.Services;

/// <summary>
/// Summary description for Bank
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
//To allow this web service to be called from script , using ASP.NET AJAX.
public class Bank : System.Web.Services.WebService
{

    public Bank()
    {
        //
        //
        //
    }
    [WebMethod]
    public bool ValidVisaDetails(string id, string VisaNum, string CVV, int month, int year)
    {
        string st;
        st = "select * From [CreditCard] where([id]='" + id + "' and [NumOfVisa]='" + VisaNum + "' and [CVV]='" + CVV + "' and [CreditMonth]'" + month + "' and [CreditYear]'" + year + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    [WebMethod]
    public bool IsExpireDate(int month, int year)
    {
        if (int.Parse((DateTime.Now.Year).ToString()) < year)
            return true;
        if (int.Parse((DateTime.Now.Year).ToString()) == year)
            if (int.Parse((DateTime.Now.Month).ToString()) <= month)
                return true;
        return false;

    }
    [WebMethod]
    public bool CheckVisaFunds(string visanum, int total)
    {
        int balance, limit;
        string st = "select [stock],[credit] from [CreditCard] where [numofvisa]='" + visanum + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt != null)
            if (dt.Rows.Count > 0)
            {
                balance = int.Parse(dt.Rows[0][0].ToString());
                limit = int.Parse(dt.Rows[0][1].ToString());
                if (balance + limit >= total)
                    return true;
            }
        return false;
    }
    [WebMethod]
    public bool Buy(string visanum, int total)
    {
        int x;
        string str;
        int balance;
        string st = "select [stock],[credit] from [CreditCard] where [numofvisa] = '" + visanum + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                balance = int.Parse(dt.Rows[0][0].ToString());
                x = balance - total;
                str = "update [CreditCard] set [stock]=" + x + " where [numofvisa]= '" + visanum + "'";
                DBFunction.ChangeTable(str, "DB.accdb");
                return true;
            }
        }
        return false;
    }

}