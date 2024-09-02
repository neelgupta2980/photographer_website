using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace photographer_website.existing_user
{
    public partial class menu_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Retrieve the selected value
            string selectedValue2 = DropDownList2.SelectedValue;

            // Perform actions based on the selected value
            // For example, display the selected value in a Label
            //DropDownList2.Text = "You selected: " + selectedValue2;

        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Retrieve the selected value
            string selectedValue3 = DropDownList3.SelectedValue;

            // Perform actions based on the selected value
            //    For example, display the selected value in a Label
            //DropDownList3.Text = "You selected: " + selectedValue3;
            switch (selectedValue3)
            {
                //case "1":
                //    // Redirect to page for Option 1
                //    Response.Redirect("profile.aspx");
                //    break;
                case "2":
                    // Redirect to page for Option 2
                    Response.Redirect("profile.aspx");
                    break;
                case "4":
                    // Redirect to page for Option 3
                    Response.Redirect("help_desk.aspx");
                    break;
                case "5":
                    // Redirect to page for Option 3
                    Response.Redirect("~/new_user/home_page.aspx");
                    break;
                default:
                    // Handle default case if needed
                    break;
            }
        }
    }
    }