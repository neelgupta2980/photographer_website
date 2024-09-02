using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace photographer_website
{
    public partial class login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ClearMessages()
        {
            lblmsg.Text = "";
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            // Clear all input fields
            username.Text = "";
            password.Text = "";
            
            // Optionally clear any messages or feedback
            lblmsg.Text = "";
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            // Clear any previous messages
            lblmsg.Text = "";

            // Get the username and password from the input fields
            string Username = username.Text.Trim();
            string Password = password.Text.Trim();

            // Check if the credentials are valid
            bool isAuthenticated = ValidateUserCredentials(Username, Password);

            if (isAuthenticated)
            {
                // If credentials are valid, redirect to the home page
                Response.Redirect("~/existing_user/menu_page.aspx");
            }
            else
            {
                // Show error message if credentials are invalid
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Invalid username or password.";
            }
        }

        private bool ValidateUserCredentials(string Username, string Password)
        {
            bool isValid = false;
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection1"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("ValidateUserCredentials", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Add parameters for the stored procedure
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);

                    conn.Open();

                    // Execute the stored procedure and read the results
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            string result = reader["Result"].ToString();

                            if (result == "Success")
                            {
                                isValid = true;
                            }
                        }
                    }
                }
            }

            return isValid;
        }
        protected void Back_Click(object sender, EventArgs e) => Response.Redirect("home_page.aspx");
        protected void Sign_Click(object sender, EventArgs e) => Response.Redirect("Signup_page.aspx");
    }
}