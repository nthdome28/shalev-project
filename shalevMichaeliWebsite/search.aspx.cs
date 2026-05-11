using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string itemName = Request.Form["itemName"];

            string sql = "SELECT [itemName], [itemPrice], [itemCount] FROM [dbo].[tItems] " +
                         "WHERE [itemName] LIKE N'%" + itemName + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt == null || dt.Rows.Count == 0)
            {
                st = "<p>No items found in the inventory.</p>";
            }
            else
            {
                st = "<table border='1' cellpadding='5'>";
                st += "<tr>";
                st += "<th>Item Name</th>";
                st += "<th>Price</th>";
                st += "<th>Stock Count</th>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    st += "<td>" + dt.Rows[i]["itemName"] + "</td>";
                    st += "<td>" + dt.Rows[i]["itemPrice"] + "</td>";
                    st += "<td>" + dt.Rows[i]["itemCount"] + "</td>";
                    st += "</tr>";
                }

                st += "</table>";
            }
        }
        else
        {
            st = "Enter an item name and click search to see results.";
        }
    }
}