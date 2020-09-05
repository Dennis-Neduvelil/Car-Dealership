using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    public static MySqlConnection MySqlCon = new MySqlConnection();

    public void SetConnection(string connection)
    {

        MySqlCon.ConnectionString = connection;
    }

    public bool ExecuteQuery(MySqlCommand MySqlCommand)
    {

        try
        {
            MySqlCommand.Connection = MySqlCon;
            MySqlCon.Open();
            MySqlCommand.ExecuteNonQuery();
            //MySqlCon.Close();
            return true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            MySqlCon.Close();
        }
    }

    public DataTable GetRecords(MySqlCommand MySqlCommand)
    {
        try
        {
            MySqlCommand.Connection = MySqlCon;
            MySqlCon.Open();

            using (MySqlDataAdapter MySqlDataAdapter = new MySqlDataAdapter(MySqlCommand))
            {
                DataTable dataTable = new DataTable();
                MySqlDataAdapter.Fill(dataTable);
                return dataTable;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            MySqlCon.Close();
        }
    }
}