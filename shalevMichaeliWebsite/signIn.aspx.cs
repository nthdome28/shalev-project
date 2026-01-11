using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    public string mail;
    public string passcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        mail = Request.Form["mail"];
        passcode = Request.Form["passcode"];
    }
}