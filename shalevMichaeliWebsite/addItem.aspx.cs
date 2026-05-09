using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public string itemName;
    public string itemPrice;
    public string itemCount;
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            itemName = Request.Form["itemName"];
            itemPrice = Request.Form["itemPrice"];
            itemCount = Request.Form["radio1"];

            string sql =
                "SELECT * FROM [dbo].[tItems] " +
                "WHERE itemName = N'" + itemName + "' ";

            bool itemExists = MyAdoHelper.IsExist(sql);

            if (!itemExists)
            {
                string sqlInsert =
                    "INSERT INTO [dbo].[tItems] " +
                    "(itemName, itemPrice, itemCount, ItemDescription) VALUES (" +
                    "N'" + itemName + "', " +
                    itemPrice + ", " +
                    itemCount + ", " +
                    "N''" + 
                    ")";

                MyAdoHelper.DoQuery(sqlInsert);

                st = "פריט נוסף בהצלחה!";
            }
            else
            {
                st = "פריט קיים";
            }


        }

    }
}