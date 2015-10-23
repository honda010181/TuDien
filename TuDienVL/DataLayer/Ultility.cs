using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Data.Sql;
using System.Data;
namespace TuDienVL
{
    public class Ultility
    {
        public static SqlConnection CreateConnection()
        {
            string connectionString = "";
            connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand sqlcmd = new SqlCommand();

            return conn;
        }

        public static DataTable Search(String searchTerm)
        {
            DataSet ds = new DataSet();
            try
            {
               
                String procedureName = "search";
                SqlConnection con = CreateConnection();
                SqlCommand command = new SqlCommand(procedureName, con);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@arg_keyword", SqlDbType.NVarChar).Value = searchTerm;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds, "Table");
                con.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            { 
            }

            return ds.Tables[0];
            
        }


        //public static Boolean AddUpdateWord (String word , String type , String definition , String example , String userName)
        //{
        //    DataSet ds = new DataSet();
        //    try
        //    {

        //        String procedureName = "search";
        //        SqlConnection con = CreateConnection();
        //        SqlCommand command = new SqlCommand(procedureName, con);
        //        command.CommandType = CommandType.StoredProcedure;

        //        command.Parameters.Add("@arg_keyword", SqlDbType.NVarChar).Value = word;
        //        SqlDataAdapter adapter = new SqlDataAdapter(command);
        //        adapter.Fill(ds, "Table");
        //        con.Close();
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    finally
        //    {
        //    }

        //    return true;

        //}


        public static string BuildQueryStringURL(string URL ,string SearchTerm)
        {
            try 
            {
                if (SearchTerm.Equals("") == false)
                {
                    URL = URL + "?";

                    URL = URL + "SearchTerm=" + SearchTerm;
                }


            }   
            catch (Exception e)
            {

            }
            return URL;

        }
    }
}
