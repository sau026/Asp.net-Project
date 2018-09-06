using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from LoginDetail where Username='" + txtUN.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp1 = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp1 >= 1)
        {
            Session["exist"] = "0";
            Response.Write("<script>alert('Username Already Exist')</script>");
        }
        else
        {
            Session["exist"] = "1";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CaptchaControl1.ValidateCaptcha(txtBoxcaptcha.Text.Trim());
        if (CaptchaControl1.UserValidated)
        {
            Session["exist1"] = "1";
            CaptchaLabel.ForeColor = System.Drawing.Color.Green;
            CaptchaLabel.Text = "Valid";
            CaptchaLabel.Visible = true;
        }
        else
        {
            Session["exist1"] = "0";
            CaptchaLabel.ForeColor = System.Drawing.Color.Red;
            CaptchaLabel.Text = "Invalid";
            CaptchaLabel.Visible = true;
            Response.Write("<script language=javascript>confirm('Invalid Captcha');</script>");
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();
        string email = "select count(*) from LoginDetail where Email='" + txtboxemail.Text + "'";
        SqlCommand comm = new SqlCommand(email, conn);
        int temp2 = Convert.ToInt32(comm.ExecuteScalar().ToString());
        conn.Close();
        if (temp2 >= 1)
        {
            Session["exist2"] = "0";
            Response.Write("<script>alert('Email Already Registered')</script>");
        }
        else
        {
            Session["exist2"] = "1";
        }
        if (DDRole.SelectedValue == "Principal")
        {
            //SqlConnection cann1 = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select Count(*) from LoginDetail where Role='Principal'";
            SqlCommand com4 = new SqlCommand(checkUser, conn);
            int temp4 = Convert.ToInt32(com4.ExecuteScalar().ToString());
            conn.Close();
            if (temp4 != 1)
            {
                if (DDDepartment.SelectedValue == "Principal")
                {
                    Session["exist3"] = "1";
                }
                else
                {
                    Session["exist3"] = "0";
                    Response.Write("<script language=javascript>confirm('Select Principal in Department Field For Principal Role');</script>");
                }
            }
            else
            {
                Session["exist3"] = "0";
                Response.Write("<script language=javascript>confirm('You Cannot Create More Than One Principal Account');</script>");
            }
        }
        else if (DDRole.SelectedValue == "Admin")
        {
            //SqlConnection cann = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkdept = "select Count(*) from LoginDetail where Role='Admin'";
            SqlCommand com5 = new SqlCommand(checkdept, conn);
            int temp5 = Convert.ToInt32(com5.ExecuteScalar().ToString());
            conn.Close();
            if (temp5 != 1)
            {
                if (DDDepartment.SelectedValue == "Admin")
                {
                    Session["exist3"] = "1";
                }
                else
                {
                    Session["exist3"] = "0";
                    Response.Write("<script language=javascript>confirm('Select Admin in Department Field For Admin Role');</script>");
                }
            }
            else
            {
                Session["exist3"] = "0";
                Response.Write("<script language=javascript>confirm('You Cannot Create More Than One Admin Account');</script>");
            }
        }
        else if (DDRole.SelectedValue == "Director")
        {
            //SqlConnection cann = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkdept1 = "select Count(*) from LoginDetail where Role='Director                      '";
            SqlCommand com5 = new SqlCommand(checkdept1, conn);
            int temp3 = Convert.ToInt32(com5.ExecuteScalar().ToString());
            conn.Close();
            if (temp3 != 1)
            {
                if (DDDepartment.SelectedValue == "Director")
                {
                    Session["exist3"] = "1";
                }
                else
                {
                    Session["exist3"] = "0";
                    Response.Write("<script language=javascript>confirm('Select Director in Department Field For Director Role');</script>");
                }
            }
            else
            {
                Session["exist3"] = "0";
                Response.Write("<script language=javascript>confirm('You Cannot Create More Than One Director Account');</script>");
            }
        }
        else if (DDRole.SelectedValue == "Staff Member" || DDRole.SelectedValue == "HOD")
        {
            if (DDDepartment.SelectedValue == "Admin" || DDDepartment.SelectedValue == "Principal")
            {
                Session["exist3"] = "0";
                Response.Write("<script language=javascript>confirm('You Cannot Choose Admin or Principal For This Role');</script>");
            }
            else
            {
                Session["exist3"] = "1";
            }
        }

        if (Session["exist"] != "0" && Session["exist1"] != "0" && Session["exist2"] != "0" && Session["exist3"] != "0")
        {
            SqlConnection conn11 = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn11.Open();
            string insertuser = "insert into LoginDetail (Username,Name,Email,Mobile,Gender,Country,City,ZipCode,Department,Role,Password) values (@uname ,@Name ,@Email ,@Mob ,@Gender ,@Country ,@City ,@zip ,@Dept ,@Role ,@pass)";
            SqlCommand com1 = new SqlCommand(insertuser, conn11);
            com1.Parameters.AddWithValue("@uname", txtUN.Text);
            com1.Parameters.AddWithValue("@Name", txtName.Text);
            com1.Parameters.AddWithValue("@Email", txtboxemail.Text);
            com1.Parameters.AddWithValue("@Mob", txtMob.Text);
            com1.Parameters.AddWithValue("@Gender", DDGender.Text);
            com1.Parameters.AddWithValue("@Country", DDCountry.Text);
            com1.Parameters.AddWithValue("@City", DropDownListCity.SelectedValue);
            com1.Parameters.AddWithValue("@Zip", TextBoxZip.Text);
            com1.Parameters.AddWithValue("@Dept", DDDepartment.Text);
            com1.Parameters.AddWithValue("@Role", DDRole.Text);
            com1.Parameters.AddWithValue("@pass", txtPassword.Text);

            com1.ExecuteNonQuery();
            Response.Write("<script language=javascript>confirm('User Added');</script>");
            conn11.Close();

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("raj583694@gmail.com", "7287224sau");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + txtName.Text + "  Thanks for Register at Online Leave Management System";
            msg.Body = "Hi, Thanks For Your Registration at Online Leave Management System, We will Provide You The Best Service. Thanks";
            string toaddress = txtboxemail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Saurabh Agrawal <raj583694@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                LabelEmail.Text = "Your Email Has Been Registered with Us";
            }
            catch
            {
                throw;
            }
        
        }
    }
    protected void txtUN_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DDRole_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DDRole.SelectedValue == "Principal")
        {
            DDDepartment.SelectedValue = "Principal";
        }
        else if(DDRole.SelectedValue == "Admin")
        {
            DDDepartment.SelectedValue = "Admin";
        }
        else if (DDRole.SelectedValue == "Director")
        {
            DDDepartment.SelectedValue = "Director";
        }

    }
    protected void txtBoxcaptcha_TextChanged(object sender, EventArgs e)
    {
       
    }
}