using System.Data;
using System.Configuration;
using Npgsql;
using System;
using System.Windows;

namespace WebApplication1
{
    public partial class index2 : System.Web.UI.Page
    {
        
        private string connstring = String.Format(@"Server=localhost;port=5432;Database=Master_db;User Id = postgres; Password = 1234");
        private NpgsqlConnection conn;
       

        protected void Page_Load(object sender, EventArgs e)
        {

            conn = new NpgsqlConnection(connstring);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Connection String   
            conn = new NpgsqlConnection(connstring);
            NpgsqlCommand cmd = new NpgsqlCommand("select * from tbl_user where user_name =:user_name and user_pwd =:user_pwd", conn);
            cmd.Parameters.AddWithValue("User_Name", txt_name.Text);
            cmd.Parameters.AddWithValue("User_Pwd", Convert.ToInt32(txt_pwd.Text));
            NpgsqlDataAdapter sda = new NpgsqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Connection open here   
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                MessageBox.Show("Successfully loged in");
                //after successful it will redirect  to next page .  
                Response.Redirect("User_Dash.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "check your username or password";
            }
        }
    }
}