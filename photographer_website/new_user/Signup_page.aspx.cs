using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using photographer_website.existing_user;
using System.Web.Profile;

namespace photographer_website
{
    public partial class Signup_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
        protected void ClearMessages()
        {
            lblmsg.Text = "";
        }
        protected void Signup_Click(object sender, EventArgs e)
        {
            ClearMessages();

            string Username = username.Text.Trim();
            string Email = email.Text.Trim();
            string Password = password.Text.Trim();
            string FirstNmae = firstname.Text.Trim();
            string LastName = lastname.Text.Trim();
            if (IsUsernameOrEmailExists(Username,Email))
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Username or Email already exists.";
                return;
            }

            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection1"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertUser", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", Username);
                    cmd.Parameters.AddWithValue("@email", Email);
                    cmd.Parameters.AddWithValue("@password", Password);
                    cmd.Parameters.AddWithValue("@firstname", FirstNmae);
                    cmd.Parameters.AddWithValue("@lastname", LastName);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Green;
                        lblmsg.Text = "signup successfully.";
                        Response.Redirect("login_page.aspx");
                    }
                    else
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                        lblmsg.Text = "Record could not be saved.";
                    }
                }
            }
        }
        private bool IsUsernameOrEmailExists(string Username, string Email)
        {
            bool exists = false;
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection1"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT COUNT(1) FROM SignUpPage WHERE Username = @Username or Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    conn.Open();

                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        exists = true;
                    }
                }
            }

            return exists;
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("home_page.aspx");
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            // Clear all input fields
            username.Text = "";
            password.Text = "";
            email.Text = "";
            firstname.Text = "";
            lastname.Text = "";

            // Optionally clear any messages or feedback
            lblmsg.Text = "";
        }
        protected void Log_Click(object sender, EventArgs e) => Response.Redirect("login_page.aspx");
    }
        
}