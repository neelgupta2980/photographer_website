using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace photographer_website
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Retrieve the selected value
            string selectedValue = DropDownList1.SelectedValue;

            // Perform actions based on the selected value
            // For example, display the selected value in a Label
            //SelectedOptionLabel.Text = "You selected: " + selectedValue;
        }
        protected void Sign_click(object sender, EventArgs e) => Response.Redirect("Signup_page.aspx");
        protected void Log_click(object sender, EventArgs e) => Response.Redirect("login_page.aspx");

        
    }
}