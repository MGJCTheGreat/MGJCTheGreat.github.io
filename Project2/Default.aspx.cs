using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        HttpCookie userInfo;

        //Declaration of global sql variables
        SqlDataAdapter adap;
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|dbInfo.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand comm;
        DataSet ds;

        protected void btnVIew_Click(object sender, EventArgs e)
        {   
            //try catch for exception handling
            try
            {
                String sql = "";

                //Create Cookie value
                userInfo = new HttpCookie("userInfo");

                //clearing the labels' texts
                lblErrorGender.Text = "";
                lblErrorPortfolio.Text = "";
                lblGeneralError.Text = "";
                lblErrorAppointment.Text = "";
                lblAgeError.Text = "";
                lblUniError.Text = "";

                //checking if radio buttons are checked
                if (rdoFemale.Checked || rdoMale.Checked || rdoOther.Checked)
                {
                    String sGender = "";

                    //assign gender to the string variables
                    if (rdoFemale.Checked)
                    {
                        sGender = "Female";
                    } else if (rdoMale.Checked)
                    {
                        sGender = "Male";
                    } else
                    {
                        sGender = "Other";
                    }

                    //Check to see if portfolio buttons are checked
                    if (rdoStaff.Checked || rdoStudent.Checked )
                    {   
                        //assign portfolio variables
                        String sPort = "";
                        if (rdoStaff.Checked)
                        {
                            sPort = "Staff";

                            Session["Date"] = DateTime.Now.AddDays(3).ToString("yyyy/mm/dd");
                            Session["Port"] = sPort;
                        }
                        else
                        {
                            sPort = "Student";

                            Session["Date"] = DateTime.Now.AddDays(2).ToString("yyyy/mm/dd");
                            Session["Port"] = sPort;

                        }

                        //Check if the dropdownlist recieved input
                        if (ddlType.SelectedIndex > 0)
                        {
                            //declaring and assigning type variable
                            String sType = ddlType.SelectedItem.ToString();

                            //check if value is integer
                            if(int.TryParse(txtUniversityNo.Text, out int num))
                            {   
                                //check if value is integer
                                if (int.TryParse(txtAge.Text, out int age))
                                {
                                    //Secure sql
                                    using (conn = new SqlConnection(conStr))
                                    {
                                        conn.Open();
                                        sql = "INSERT INTO tbInfo(Name, Surname, UniversityNo, Age, Gender, Portfolio, AppointmentType) VALUES(@name, @sur, @no, @age, @gen, @port, @type)";
                                        
                                        //Secure sql
                                        using (comm = new SqlCommand(sql, conn))
                                        {
                                            comm.Parameters.AddWithValue("@name", txtName.Text);
                                            comm.Parameters.AddWithValue("@sur", txtSurname.Text);
                                            comm.Parameters.AddWithValue("@no", num);
                                            comm.Parameters.AddWithValue("@age", age);
                                            comm.Parameters.AddWithValue("@gen", sGender);
                                            comm.Parameters.AddWithValue("@port", sPort);
                                            comm.Parameters.AddWithValue("@type", sType);

                                            comm.ExecuteNonQuery();

                                            //Store cookies values
                                            userInfo["name"] = txtName.Text;
                                            userInfo["surname"] = txtSurname.Text;
                                            userInfo["type"] = sType;                                                                                      

                                            Response.Cookies.Add(userInfo);


                                            //Add expiration minutes
                                            userInfo.Expires = DateTime.Now.AddMinutes(15);

                                        }
                                    }


                                    //Secure sql
                                    using (conn = new SqlConnection(conStr))
                                    {
                                        conn.Open();

                                        sql = "SELECT * FROM tbInfo";

                                        using (comm = new SqlCommand(sql, conn))
                                        {
                                            using (adap = new SqlDataAdapter())
                                            {
                                                adap.SelectCommand = comm;

                                                using (ds = new DataSet())
                                                {
                                                    adap.Fill(ds);

                                                    gdvOutput.DataSource = ds;
                                                    gdvOutput.DataBind();

                                                    btnConfirmBooking.Enabled = true;

                                                }
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    //Display error message
                                    lblUniError.Text = "Please enter a valid university number";
                                }
                            }
                            else
                            {
                                //Display error message
                                lblAgeError.Text = "Please enter a valid age value";
                            }
                        }
                        else
                        {
                            //Display error message
                            lblErrorAppointment.Text = "Please select an appointment type";
                        }
                    }
                    else
                    {
                        //Display error message
                        lblErrorGender.Text = "Please select a portfolio";
                    }
                }
                else
                {
                    //Display error message
                    lblErrorGender.Text = "Please select a gender";
                }
            }
            catch(Exception ex)
            {
                //Display error message
                lblGeneralError.Text = ex.Message;
            }
        }

        protected void btnConfirmBooking_Click(object sender, EventArgs e)
        {
            //Redirect to the confirmation page
            Response.Redirect("Confirmation.aspx");
        }
    }
}