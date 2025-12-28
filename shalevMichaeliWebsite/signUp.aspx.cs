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
        public string mail;
        public string race;
        public string agegroup;
        public string id;
        public string passcode;


    protected void Page_Load(object sender, EventArgs e)
    {
        firstname = Request.Form["firstName"];
        lastname = Request.Form["lastname"];
        race = Request.Form["radio1"];
        mail = Request.Form["mail"];
        agegroup = Request.Form["age"];
        id = Request.Form["id"];
        passcode = Request.Form["passcode"];


    }
}