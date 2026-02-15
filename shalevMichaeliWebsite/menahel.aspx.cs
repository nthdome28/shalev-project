using System;
using System.Data;

public partial class Menahel : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // 🔐 Protect admin page
        if (Session["admin"] == null)
        {
            Response.Redirect("signIn.aspx");
        }

        if (Page.IsPostBack)
        {
            string firstName = Request.Form["firstName"];
            string lastName = Request.Form["lastName"];

            string sql =
                "SELECT * FROM [dbo].[Table] " +
                "WHERE Email = '" + firstName + "' " +
                "AND UserPassword = '" + lastName + "'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים בטבלה";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>תחביבים</th>";
                st += "<th>מגדר</th>";
                st += "<th>גיל</th>";
                st += "<th>סיסמה</th>";
                st += "<th>מייל</th>";
                st += "<th>שם משפחה</th>";
                st += "<th>שם פרטי</th>";
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
}
