using System;
using System.Web.UI;

public partial class Default5 : Page
{
    public string firstName;
    public string lastName;
    public string Email;
    public string race;
    public string agegroup;
    public string hobbies; 
    public string passcode;
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            firstName = Request.Form["firstName"];
            lastName = Request.Form["lastName"];
            race = Request.Form["radio1"];
            Email = Request.Form["Email"];
            agegroup = Request.Form["age"];
            hobbies = Request.Form["hobbies"];
            passcode = Request.Form["passcode"];

            // If Age is INT in DB, convert properly. For now, store 0 if conversion fails
            int ageValue = 0;
            int.TryParse(agegroup.Split('-')[0], out ageValue);

            string sqlInsert =
                "INSERT INTO [dbo].[Table] " +
                "(FirstName, LastName, Gender, Email, Age, Hobbies, UserPassword) VALUES (" +
                "N'" + firstName + "', " +
                "N'" + lastName + "', " +
                "N'" + race + "', " +
                "N'" + Email + "', " +
                ageValue + ", " +
                "N'" + hobbies + "', " +
                "N'" + passcode + "'" +
                ")";

            MyAdoHelper.DoQuery(sqlInsert);

            st = "נרשמת בהצלחה!";
        }
    }
}
