using System;
using System.Web;

public partial class login : System.Web.UI.Page
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

            // בדיקת משתמש רגיל
            string sql =
                "SELECT * FROM tUsers " +
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
