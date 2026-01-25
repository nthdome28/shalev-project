using System;
using System.Web.UI;

public partial class Default6 : Page
{
    public string st = "";
    public string Email;
    public string passcode;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Email = Request.Form["Email"];
            passcode = Request.Form["passcode"];

            string sql =
                "SELECT * FROM [dbo].[Table] " +
                "WHERE Email = '" + Email + "' " +
                "AND UserPassword = '" + passcode + "'";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (!userExists)
            {
                st = "אימייל או סיסמה שגויים";
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }
    }
}
