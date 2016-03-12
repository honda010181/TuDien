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


        public static Boolean SaveWord(String word, String definition, String example, String userName)
        {
            DataSet ds = new DataSet();
            try
            {

                String procedureName = "SaveWord";
                SqlConnection con = CreateConnection();
                SqlCommand command = new SqlCommand(procedureName, con);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@arg_word", SqlDbType.NVarChar).Value = word;
                command.Parameters.Add("@arg_definition", SqlDbType.NVarChar).Value = definition;
                command.Parameters.Add("@arg_example", SqlDbType.NVarChar).Value = example;
                command.Parameters.Add("@arg_user_name", SqlDbType.NVarChar).Value = userName;


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds, "Table");
                con.Close();
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
            }

            return true;

        }

        public static Boolean SaveVote(String wordId, String UserName, int up_down_vote)
        {
            DataSet ds = new DataSet();
            try
            {

                String procedureName = "SaveVote";
                SqlConnection con = CreateConnection();
                SqlCommand command = new SqlCommand(procedureName, con);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@arg_word_id", SqlDbType.NVarChar).Value = wordId;
                command.Parameters.Add("@arg_user_name", SqlDbType.NVarChar).Value = UserName;
                command.Parameters.Add("@arg_vote_up_down", SqlDbType.NVarChar).Value = up_down_vote;

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds, "Table");
                con.Close();
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
            }

            return true;

        }
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
