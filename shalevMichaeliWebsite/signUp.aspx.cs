using System;
using System.Web.UI;
using System.Text.RegularExpressions;
public partial class SignUpPage : Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fName = Request.Form["firstName"];
            string lName = Request.Form["lastName"];
            string mail = Request.Form["Email"];
            string pass = Request.Form["passcode"];
            string gender = Request.Form["radio1"];
            string age = Request.Form["age"];
            string hob = Request.Form["hobbies"];

            // בדיקת חובה בצד שרת
            if (string.IsNullOrEmpty(fName) || string.IsNullOrEmpty(lName) ||
                string.IsNullOrEmpty(mail) || string.IsNullOrEmpty(pass))
            {
                st = "error: חסרים שדות חובה";
                return;
            }

            // בדיקת מספרים בשמות בצד שרת
            if (Regex.IsMatch(fName, @"\d") || Regex.IsMatch(lName, @"\d"))
            {
                st = "error: שם לא יכול להכיל מספרים";
                return;
            }

            // בדיקה אם המשתמש כבר קיים
            string sqlCheck = "SELECT * FROM [dbo].[tUsers] WHERE Email = '" + mail + "'";
            if (MyAdoHelper.IsExist(sqlCheck))
            {
                st = "מייל זה כבר קיים במערכת"; //הודעת שגיאה
            }
            else
            {
                // חילוץ הגיל המינימלי מהקבוצה (למשל "13" מתוך "13-18")
                int ageVal = 0;
                if (!string.IsNullOrEmpty(age))
                {
                    int.TryParse(age.Split('-')[0].Replace("+", ""), out ageVal);
                }

                string sqlInsert = "INSERT INTO [dbo].[tUsers] (FirstName, LastName, Gender, Email, Age, Hobbies, UserPassword) " +
                                   "VALUES (N'" + fName + "', N'" + lName + "', N'" + gender + "', N'" + mail + "', " +
                                   ageVal + ", N'" + hob + "', N'" + pass + "')";

                MyAdoHelper.DoQuery(sqlInsert);
                st = "נרשמת בהצלחה!";
            }
        }
    }
}