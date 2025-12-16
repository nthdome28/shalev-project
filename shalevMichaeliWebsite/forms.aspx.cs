using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    public string name;
    public string subject;
    public string animal;

    protected void Page_Load(object sender, EventArgs e)
    {
        name = Request.Form["firstName"];
        subject = Request.Form["check2"];
        animal = Request.Form["radio1"];
    }
}