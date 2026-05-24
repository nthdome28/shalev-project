using System;
using System.Data;

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
                Session["admin"] = "ok";
                Session["name"] = "Manager"; 
                Response.Redirect("menahel.aspx");
            }
            else
            {
                string sql =
                    "SELECT * FROM [dbo].[tUsers] " +
                    "WHERE Email = '" + Email + "' " +
                    "AND UserPassword = '" + passcode + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                //bool userExists = MyAdoHelper.IsExist(sql);

                //if (!userExists)
                if (dt.Rows.Count==1)
                {
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["FirstName"];

                    Response.Redirect("home.aspx");
                    
                }
                else
                {
                    st = "אימייל או סיסמה שגויים";
                }
            }
        }
    }
}