using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            string itemname = Request.Form["itemname"];
            string itemcount = Request.Form["itemcount"];
            string itemdesc = Request.Form["itemdesc"];
            string itemprice = Request.Form["itemprice"];
            string sqlInsert =
                    "INSERT INTO [dbo].[tItems] " +
                    "(itemname, itemdesc, itemcount, itemcount) VALUES (" +
                    "N'" + itemname + "', " +
                    "N'" + itemdesc + "', " +
                    "N'" + itemcount + "', " +
                    "N'" + itemcount + 
                    ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

        }
    }
}