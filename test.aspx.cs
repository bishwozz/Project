using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Data;

namespace WebApplication1
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label2.Text = "syccessfull";
                NpgsqlConnection conn = new NpgsqlConnection("Server=localhost;port=5432;Database=Master_db;User Id = postgres; Password = 1234");
                conn.Open();
                NpgsqlCommand cmd = new NpgsqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from tbl_user";
                NpgsqlDataAdapter nda = new NpgsqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                nda.Fill(dt);
                cmd.Dispose();
                conn.Close();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch
            {
                Label2.Text = "did not connect";
            }
        }
    }
}