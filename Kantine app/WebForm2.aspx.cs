using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;


namespace Kantine_app
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string email = entermail.Text;
            string password = enterpassord.Text;
            string item = sp.Text;

            if (CheckUser(email, password) && CheckItem(item))
            {
                Response.Write("gut");
                UpdateSpecial(item);
            }
            else
            {
                Response.Write("not gut");
            }

        }

        private bool CheckUser(string email, string password)
        {
            var okay = false;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM adminmeny WHERE mail = @mail AND passord = @passord";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@mail", email);
                command.Parameters.AddWithValue("@passord", password);

                connection.Open();


                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    okay = true;
                }
                else
                {
                    okay = false;
                    Response.Write("Feil innloggingsinformasjon");
                }

                connection.Close();
            }

            return okay;
        }

        private bool CheckItem(string item)
        {
            var okay = false;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM matrett WHERE navn = @navn;";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@navn", item);

                connection.Open();


                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    okay = true;
                }
                else
                {
                    okay = false;
                    Response.Write("Item not exists");
                }

                connection.Close();
            }

            return okay;
        }

        private void DisableCurrentSpecial()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("update matrett set spesial = 0 where spesial = 1", conn);
                cmd.CommandType = CommandType.Text;

                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        private void UpdateSpecial(string item)
        {
            DisableCurrentSpecial();

            var connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("update matrett set spesial = 1 where navn = @navn", conn);
                cmd.CommandType = CommandType.Text;

                var param = new SqlParameter("@navn", SqlDbType.Char);
                param.Value = item;
                cmd.Parameters.Add(param);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

    }

}