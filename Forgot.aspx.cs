using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();
        string chkpass="select count(*) from LoginDetail where Email='"+TextBoxfrgtpass.Text+"' and Username='"+TextBoxUN.Text+"'";
        SqlCommand com = new SqlCommand(chkpass, conn);
        int getpass = Convert.ToInt32(com.ExecuteScalar().ToString());
        if(getpass==1)
        {
            string chkpass1 = "select password from LoginDetail where Email='" + TextBoxfrgtpass.Text + "' and Username='" + TextBoxUN.Text + "'";
            SqlCommand com1 = new SqlCommand(chkpass1, conn);
            string getpass1 = com1.ExecuteScalar().ToString();
            Labelpass.Visible = true;
            TextBoxnewpass.Visible = true;
            Labelmessage.Visible = false;
            TextBoxnewpass.Text = getpass1.ToString();
            Session["pass"]=getpass1.ToString();
        }
        else{
            Response.Write("<script>alert('Sorry!!you are Entering a Wrong username and password....')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBoxUN.Text != "")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string chkname = "select Name from LoginDetail where Username='" + TextBoxUN.Text + "'";
            SqlCommand com1 = new SqlCommand(chkname, conn);
            string getname = com1.ExecuteScalar().ToString();
            string chkemail = "select Email from LoginDetail where Username='" + TextBoxUN.Text + "'";
            SqlCommand com2 = new SqlCommand(chkemail, conn);
            string getemail = com2.ExecuteScalar().ToString();
            
            
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("raj583694@gmail.com", "7287224sau");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + getname + "  Thanks to be a Part of PlanMyLeave";
            msg.Body = "Hi, Your forgot Password of Online Leave Management System is:-"+Session["Pass"]+", Thanks";
            string toaddress = getemail;
            msg.To.Add(toaddress);
            string fromaddress = "Saurabh Agrawal <raj583694@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                Labelpass.Visible = false;
                TextBoxnewpass.Visible = false;
                Labelmessage.Visible = true;
                Labelmessage.Text = "We have send your password on your mail id.";
            }
            catch
            {
                throw;
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter your Username')</script>");
        }
    }
}