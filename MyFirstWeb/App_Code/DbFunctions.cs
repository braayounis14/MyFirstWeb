using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for DBFunction
/// </summary>
public class DBFunction
{
    public DBFunction()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static OleDbConnection GenerateConnection(string dbFileName)
    {
        /* this function gets abstract namespace of abstract file from DataBaases ,
          and creats connection between this site and the DataBase.*/
        OleDbConnection conObj = new OleDbConnection();
        conObj.ConnectionString = "provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + dbFileName) + " ; Persist Security Info=False";
        conObj.Open();
        return conObj;

    }
    public static DataTable SelectFromTable(string sqlString, string dbFileName)
    {
        /* this function gets a name of DataBase and string that represents 
         * a query we need to excute . 
         * the function builds a connection to the DataBase,
         * excutes the query and returns the result . */

        OleDbConnection conObj = GenerateConnection(dbFileName);
        OleDbDataAdapter daObj = new OleDbDataAdapter(sqlString, conObj);
        DataSet dsUser = new DataSet();
        daObj.Fill(dsUser);
        DataTable dt = dsUser.Tables[0];
        conObj.Close();
        return dt;
    }

    public static void ChangeTable(string sqlString, string dbFileName)
    {
        /* this function gets a name of DataBase and string 
         * that represents a query we need excute .
         * the function builds a connection to the DataBase,
         * excutes the query , that causes changing Data at the DataBase ,
         * Insert or Delete or Update . */

        OleDbConnection conObj = GenerateConnection(dbFileName);
        OleDbCommand cmd = new OleDbCommand(sqlString, conObj);
        cmd.ExecuteNonQuery();
        conObj.Close();
    }
}
