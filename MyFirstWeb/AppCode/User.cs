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
    private string userJoinedDate;

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

    public string UserJoinedDate
    {
        get
        {
            return this.userJoinedDate;
        }
        set
        {
            this.userJoinedDate = value;

        }
    }
    public bool IsExistUser()
    {
        // it checks if the user is exist at the Database, and returns true if exist and false if not exist /
        bool found = false;
        string st = "select * from [USERS] where [Email]='" + this.userEmail + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt.Rows.Count > 0)
            found = true;
        return found;
    }
    public string QuestionRecovery()
    {
        string sqlStr = "";
        sqlStr = "SELECT [PassQuastion] FROM [USERS] WHERE [Email] ='" + this.userEmail + "'";
        DataTable dt = DBFunction.SelectFromTable(sqlStr, "DB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString();
        return "";
    }
    public string PassRecovery()
    {

        string sqlStr = "";
        sqlStr = "select [Password] from [USERS] where [Email]='" + this.userEmail + "' and [PassAnswer]='" + this.userPasswordAnswer + "'";
        DataTable dt = DBFunction.SelectFromTable(sqlStr, "DB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString();
        return "";
    }
    public bool UpdatePassword(string newPassword)
    {
        if (this.IsExistUser())
        {
            string sqlStr = "Update [USERS] set [Password]='" + newPassword + "' where [Email]='" + this.userEmail + "'";
            DBFunction.ChangeTable(sqlStr, "DB.accdb");
            return true;
        }
        return false;
    }
    public bool UpdateInfo(string fullName, string email, string country, string PassQuastion, string PassAnswer)
    {
        bool updated = false;
        List<string> updates = new List<string>();

        // Check each parameter and add the update SQL statement to the list if the parameter is not null or empty
      
        if (!string.IsNullOrEmpty(fullName))
        {
            updates.Add("[FullName]='" + fullName + "'");
        }
        if (!string.IsNullOrEmpty(email))
        {
            updates.Add("[Email]='" + email + "'");
        }
        if (!string.IsNullOrEmpty(country))
        {
            updates.Add("[State]='" + country + "'");
        }
        if (!string.IsNullOrEmpty(PassQuastion))
        {
            updates.Add("[PassQuastion]='" + PassQuastion + "'");
        }
        if (!string.IsNullOrEmpty(PassAnswer))
        {
            updates.Add("[PassAnswer]='" + PassAnswer + "'");
        }


        string updateFields = string.Join(",", updates);
        // If there are updates to be made, construct the SQL update statement and execute it
        if (updates.Count > 0)
        {
            string sqlStr = "UPDATE [USERS] SET " + updateFields + " WHERE [Email]='" + this.userEmail + "'";
            DBFunction.ChangeTable(sqlStr, "DB.accdb");
            updated = true;
        }

        return updated;
    }


    public bool PassCheck()
    {

        String st = "select * from [USERS] where [Email]='" + this.userEmail + "' and [Password]='" + this.userPassword + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        return dt.Rows.Count > 0; 

    }


    public string GetInfoByEmail(string field)
    {

        String st = "select * from [USERS] where [Email]='" + this.userEmail + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "DB.accdb");
        if (dt.Rows.Count > 0)
        return dt.Rows[0][field].ToString();
        return null;
    }


}