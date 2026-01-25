using System;
using System.Data;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Database helper for SQL Server (.mdf in App_Data)
/// </summary>
public class MyAdoHelper
{
    private const string dbFileName = "~/App_Data/MyDB.mdf";

    public MyAdoHelper() { }

    /// <summary>
    /// Connect to the database
    /// </summary>
    public static SqlConnection ConnectToDb()
    {
        string path = HttpContext.Current.Server.MapPath(dbFileName);
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
        return new SqlConnection(connStr);
    }

    /// <summary>
    /// Execute insert/update/delete query
    /// </summary>
    public static void DoQuery(string sql)
    {
        using (SqlConnection conn = ConnectToDb())
        {
            conn.Open();
            using (SqlCommand com = new SqlCommand(sql, conn))
            {
                com.ExecuteNonQuery();
            }
        }
    }

    /// <summary>
    /// Optional overload kept for compatibility
    /// </summary>
    public static void DoQuery(string v, string sql)
    {
        DoQuery(sql);
    }

    /// <summary>
    /// Execute query and return number of rows affected
    /// </summary>
    public static int RowsAffected(string sql)
    {
        using (SqlConnection conn = ConnectToDb())
        {
            conn.Open();
            using (SqlCommand com = new SqlCommand(sql, conn))
            {
                return com.ExecuteNonQuery();
            }
        }
    }

    /// <summary>
    /// Checks if query returns any rows
    /// </summary>
    public static bool IsExist(string sql)
    {
        using (SqlConnection conn = ConnectToDb())
        {
            conn.Open();
            using (SqlCommand com = new SqlCommand(sql, conn))
            {
                using (SqlDataReader reader = com.ExecuteReader())
                {
                    return reader.HasRows;
                }
            }
        }
    }

    /// <summary>
    /// Legacy overload
    /// </summary>
    public static bool IsExist(string v, string sql)
    {
        return IsExist(sql);
    }

    /// <summary>
    /// Execute SELECT and return DataTable
    /// </summary>
    public static DataTable ExecuteDataTable(string sql)
    {
        using (SqlConnection conn = ConnectToDb())
        {
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
    }

    /// <summary>
    /// Return HTML table of results
    /// </summary>
    public static string printDataTable(string fileName, string sql)
    {
        DataTable dt = ExecuteDataTable(sql);
        string printStr = "<table border='1'>";
        foreach (DataRow row in dt.Rows)
        {
            printStr += "<tr>";
            foreach (object item in row.ItemArray)
            {
                if (item.GetType() == typeof(DateTime))
                    printStr += "<td>" + ((DateTime)item).ToShortDateString() + "</td>";
                else
                    printStr += "<td>" + item.ToString() + "</td>";
            }
            printStr += "</tr>";
        }
        printStr += "</table>";
        return printStr + "<br/>";
    }

    /// <summary>
    /// Execute scalar query
    /// </summary>
    public static object GetScalar(string sql)
    {
        using (SqlConnection conn = ConnectToDb())
        {
            conn.Open();
            using (SqlCommand comm = new SqlCommand(sql, conn))
            {
                return comm.ExecuteScalar();
            }
        }
    }
}
