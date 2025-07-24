using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project2
{
    public partial class Confirmation : System.Web.UI.Page
    {
        //Make user cookie
        HttpCookie userInfo;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Clear error labels
                lblErroGeneral.Text = "";                

                //Get usercookies info
                userInfo = Request.Cookies["userInfo"];

                //Display label info
                lblGreeting.Text = "Hi " + userInfo["name"];

                lblSuccess.Text = "You succesfully booked for:\n" + userInfo["type"];              

                lblAppointment.Text = "Your appointment is on: " + Session["Date"] + " between 8am-4pm.";
               
                if (Session["Port"] == "Staff")
                {
                    calDate.SelectedDate = DateTime.Today.AddDays(3);
                }
                else
                {
                    calDate.SelectedDate = DateTime.Today.AddDays(2);
                }

            }
            catch (Exception ex)
            {
                //Display erro info
                lblErroGeneral.Text = ex.Message;
            }
        }

        protected void btnNewBooking_Click(object sender, EventArgs e)
        {
            //Go back to default form
            Response.Redirect("Default.aspx");
        }
    }
}