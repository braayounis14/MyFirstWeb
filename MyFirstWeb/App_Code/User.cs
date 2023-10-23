using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;


/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    public User()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private string userFullName;
    private string userEmail;
    private string userPassword;
    private string userPasswordQuestion;
    private string userPasswordAnswer;
    private string userCountry;
    private string userBirthDate;
    private string userGender;

    public string UserFullName
    {
        get
        {
            return this.userFullName;
        }
        set
        {
            this.userFullName = value;

        }
    }
    public string UserEmail
    {
        get
        {
            return this.userEmail;
        }
        set
        {
            this.userEmail = value;

        }
    }
    public string UserPassword
    {
        get
        {
            return this.userPassword;
        }
        set
        {
            this.userPassword = value;

        }
    }
    public string UserPasswordQuestion
    {
        get
        {
            return this.userPasswordQuestion;
        }
        set
        {
            this.userPasswordQuestion = value;

        }
    }
    public string UserPasswordAnswer
    {
        get
        {
            return this.userPasswordAnswer;
        }
        set
        {
            this.userPasswordAnswer = value;

        }
    }
    public string UserCountry
    {
        get
        {
            return this.userCountry;
        }
        set
        {
            this.userCountry = value;

        }
    }
    public string UserBirthDate
    {
        get
        {
            return this.userBirthDate;
        }
        set
        {
            this.userBirthDate = value;

        }
    }
    public string UserGender
    {
        get
        {
            return this.userGender;
        }
        set
        {
            this.userGender = value;

        }
    }
    public bool IsExistUser()
    {
        // it checks if the user is exist at the Database, and returns true if exist and false if not exist /
        bool found = false;
        string st = "select * from [USERS] where [Email]='" + this.userEmail + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "Clients.accdb");
        if (dt.Rows.Count > 0)
            found = true;
        return found;
    }
    public string QuestionRecovery()
    {

        string sqlStr = "";
        sqlStr = "select [PassQuestion] where [Users] where [Email]='" + this.userEmail + "'";
        DataTable dt = DBFunction.SelectFromTable(sqlStr, "Clients.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString();
        return "";
    }
    public string PassRecovery()
    {

        string sqlStr = "";
        sqlStr = "select [Password] from [USERS] where [Email]='" + this.userEmail + "' and [PassAnswer]='" + this.userPasswordAnswer + "'";
        DataTable dt = DBFunction.SelectFromTable(sqlStr, "Clients.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString();
        return "";
    }
    public bool UpdatePassword(string newPassword)
    {
        if (this.IsExistUser())
        {
            string sqlStr = " Upsate [USERS] set [Password]='" + newPassword + "' where [Email]='" + this.userEmail + "'";
            DataTable dt = DBFunction.SelectFromTable(sqlStr, "Clients.accdb");
            return true;
        }
        return false;
    }

}