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
        st = "SELECT * FROM [CreditCard] WHERE ([id]='" + id + "' AND [numofvisa]='" + VisaNum + "' AND [cvv]='" + CVV + "' AND [CreditMonth]=" + month + " AND [CreditYear]=" + year + ")";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    [WebMethod]
    public bool IsExpireDate(int month, int year)
    {
        int currentYear =int.Parse((DateTime.Now.Year).ToString());
        currentYear = currentYear % 100;
        if (currentYear < year)
            return true;
        if (currentYear == year)
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