using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();
        string checkUser = "select Count(*) from LoginDetail where Username='" + txtboxUN.Text + "' and Password='" + txtBoxPass.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp1 = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (temp1 >= 1)
        {
            string checkAdmin = "select count(*) from LoginDetail where Username='" + txtboxUN.Text + "' and Password='" + txtBoxPass.Text + "' and Role='" + DDSelectRole.SelectedValue + "' and Department='" + DDselectdept.SelectedValue + "'";
            SqlCommand comm = new SqlCommand(checkAdmin, conn);
            int temp2 = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if (temp2 >= 1)
            {
                string getname = "select Name from LoginDetail where Username='" + txtboxUN.Text + "'";
                SqlCommand cam = new SqlCommand(getname, conn);
                string name = (cam.ExecuteScalar().ToString());
                Session["Dept"] = DDselectdept.SelectedValue;
                Session["user"] = txtboxUN.Text;
                Session["role"] = DDSelectRole.SelectedValue;
                Session["UserLogin"] = name;
                Response.Redirect("Home.aspx");
                
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Username or Password')</script>");
        }

        conn.Close();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot.aspx");
    }
}