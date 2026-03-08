using System;

public partial class SignIn : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string Email = Request.Form["Email"];
            string passcode = Request.Form["passcode"];

            if (Email == "michaelishalev@gmail.com" && passcode == "2010Sh@lev")
            {
                Session["admin"] = true;
                Response.Redirect("menahel.aspx");
            }
            else
            {
                string sql =
                    "SELECT * FROM [dbo].[tUsers] " +
                    "WHERE Email = '" + Email + "' " +
                    "AND UserPassword = '" + passcode + "'";

                bool userExists = MyAdoHelper.IsExist(sql);

                if (!userExists)
                {
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Session["user"] = Email;
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}
