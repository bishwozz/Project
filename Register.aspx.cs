using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using Npgsql;

namespace WebApplication1
{
    public partial class index3 : System.Web.UI.Page
    {

        private string connstring = "Server=localhost;port=5432;Database=Master_db;User Id = postgres; Password = 1234";
        private NpgsqlConnection con;
        private string sql = null;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new NpgsqlConnection(connstring);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {         
             

        }

        protected void Register(object sender, EventArgs e)
        {

                try
                {
                    /* Insertion After Validations*/
                   
                    NpgsqlConnection conn = new NpgsqlConnection("Server=localhost;port=5432;Database=Master_db;User Id = postgres; Password = 1234");
                    con.Open();
                    NpgsqlCommand cmd = new NpgsqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into tbl_user values(:user_name,:user_email,:user_mobile,:user_role,:user_id,:user_pwd)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("user_name", txt_name.Text);
                    cmd.Parameters.AddWithValue("user_email", txt_email.Text);
                    cmd.Parameters.AddWithValue("user_mobile", Convert.ToInt64(txt_mob.Text));
                    cmd.Parameters.AddWithValue("user_role", txt_role.Text);
                    cmd.Parameters.AddWithValue("user_id", Convert.ToInt32(txt_id.Text));
                    cmd.Parameters.AddWithValue("user_pwd", Convert.ToInt32(txt_pwd.Text));
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    con.Close();

                Label1.Visible = true;
                Label1.Text = "Data Has been Saved";
                    
                }
                catch (Exception ex) {
                MessageBox.Show("error"+ex.Message);
                }

        }
    }
}