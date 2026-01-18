using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Default5 : System.Web.UI.Page
{  
        public string firstname;
        public string lastname;
        public string Email;
        public string race;
        public string agegroup;
        public string id;
        public string passcode;

    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            firstname = Request.Form["firstName"];
            lastname = Request.Form["lastname"];
            race = Request.Form["radio1"];
            Email = Request.Form["Email"];
            agegroup = Request.Form["age"];
            id = Request.Form["id"];
            passcode = Request.Form["passcode"];

            string sqlInsert =
               "INSERT INTO tUsers VALUES (" +
               "N'" + firstname + "'," +
               "N'" + lastname + "'," +
               "N'" + race + "'," +
               "N'" + Email + "'," +
               "N'" + agegroup + "'," +
               "N'" + id + "'," +
               "N'" + passcode + 
               ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            st = "נרשמת בהצלחה!";
        }
    }
}



  