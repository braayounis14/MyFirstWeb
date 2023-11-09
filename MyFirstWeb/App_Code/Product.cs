using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.PeerResolvers;
using System.Web;

namespace MyFirstWeb.App_Code
{
    public class Product
    {


        public Product()
        {
                
        }

        public string Name {get; set; }
        public string Info { get; set; }
        public double Price { get; set; }
    }
    /*


    private string userFullName;
    private string userEmail;
    private string userPassword;

   
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
    */


}