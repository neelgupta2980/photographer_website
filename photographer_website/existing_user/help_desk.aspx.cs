using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace photographer_website.existing_user
{
    public partial class help_desk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection1"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("display_prob", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        // Bind the fetched data to the GridView control
                        grd_reason.DataSource = dt;
                        grd_reason.DataBind();
                    }
                }
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu_page.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string Topic = topic.Text.Trim();
            string Description = details.Text.Trim();

            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection1"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertProb", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@topic", Topic);
                    cmd.Parameters.AddWithValue("@description", Description);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Green;
                        lblmsg.Text = "your request has been registered successfully";
                        BindGridView();
                    }
                    else
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                        lblmsg.Text = "Please try to generate new request";
                    }
                }
            }
        }
        

        protected void Clr_Click(object sender, EventArgs e)
        {
            topic.Text = "";
            details.Text = "";

        }
    }
}