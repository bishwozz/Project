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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            NpgsqlConnection con = new NpgsqlConnection("Server=localhost;port=5432;Database=Master_db;User Id = postgres; Password = 1234");
            NpgsqlDataAdapter sda = new NpgsqlDataAdapter("select user_pwd from tbl_user where user_pwd='" + txt_oldpass.Text +"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                if (txt_newpass.Text == txt_repass.Text)
                {
                    con.Open();
                    NpgsqlCommand cmd = new NpgsqlCommand("Update tbl_user set user_pwd ='" + txt_repass.Text + "' Where user_pwd = '"+ txt_oldpass.Text + "' ",con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label4.Text = "successful";
                }
                else
                {
                    Label4.Text = "check your New Password";
                }
            }
            else
            {
                Label4.Text = "check your old password";
            }
        }
    }
}