using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization.Formatters;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [dbo].[Table]";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים בטבלה";
        }
        else
        {
            st += "<table border='1'>";
            st += "<tr>";
            st += "--תחביבים--";
            st += "--מגדר--";
            st += "--גיל--";
            st += "--סיסמה--";
            st += "--מייל--";
            st += "--שם משפחה--";
            st += "--שם פרטי--";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td>" + dt.Rows[i][j] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}