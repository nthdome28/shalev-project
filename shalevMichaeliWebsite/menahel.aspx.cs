using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menahel : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string firstName = Request.Form["firstName"];
            string lastName = Request.Form["lastName"];

            string sql =
                "SELECT * FROM [dbo].[tUsers] " +
                "WHERE FirstName LIKE N'%" + firstName + "%' " +
                "AND LastName LIKE N'%" + lastName + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt == null || dt.Rows.Count == 0)
            {
                st = "אין נתונים בטבלה";
            }
            else
            {
                st += "<table border='1' dir='rtl'>";
                st += "<tr>";
                st += "<th>שם פרטי</th>";
                st += "<th>שם משפחה</th>";
                st += "<th>מגדר</th>";
                st += "<th>מייל</th>";
                st += "<th>גיל</th>";
                st += "<th>תחביבים</th>";
                st += "<th>סיסמה</th>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    st += "<td>" + dt.Rows[i]["FirstName"] + "</td>";
                    st += "<td>" + dt.Rows[i]["LastName"] + "</td>";
                    st += "<td>" + dt.Rows[i]["Gender"] + "</td>";
                    st += "<td>" + dt.Rows[i]["Email"] + "</td>";
                    st += "<td>" + dt.Rows[i]["Age"] + "</td>";
                    st += "<td>" + dt.Rows[i]["Hobbies"] + "</td>";
                    st += "<td>" + dt.Rows[i]["UserPassword"] + "</td>";
                    st += "</tr>";
                }

                st += "</table>";
            }
        }
    }
}