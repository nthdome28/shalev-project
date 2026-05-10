using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string itemNameStr;
    public string itemPriceStr;
    public string itemCountStr;
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            itemNameStr = Request.Form["itemName"];
            itemPriceStr = Request.Form["itemPrice"];
            itemCountStr = Request.Form["radio1"];

            // בדיקת חובה בשרת
            if (string.IsNullOrEmpty(itemNameStr) || string.IsNullOrEmpty(itemPriceStr))
            {
                st = "נא למלא את כל השדות";
                return;
            }

            // בדיקת קיום פריט
            string sql = "SELECT * FROM [dbo].[tItems] WHERE itemName = N'" + itemNameStr + "'";

            if (!MyAdoHelper.IsExist(sql))
            {
                // הוספת פריט חדש
                string sqlInsert = "INSERT INTO [dbo].[tItems] (itemName, itemPrice, itemCount, ItemDescription) VALUES (" +
                                   "N'" + itemNameStr + "', " + itemPriceStr + ", " + itemCountStr + ", N'')";

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