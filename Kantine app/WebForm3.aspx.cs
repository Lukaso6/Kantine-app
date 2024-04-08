using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kantine_app
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var (name, path) = GetSpecial();
            Image.Src =  $"img/{path}";
            Name.InnerText = name;
        }

        private (string name, string path) GetSpecial()
        {
            var name = "";
            var path = "";

            string connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT navn, img FROM matrett WHERE spesial = 1";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                var reader = command.ExecuteReader();

                if (reader.Read())
                {
                    name = reader["navn"].ToString();
                    path = reader["img"].ToString();
                }
                
                reader.Close();
                connection.Close();
            }

            return (name, path);
        }

    }
}