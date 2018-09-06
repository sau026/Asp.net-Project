using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class RequestStatus3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogin"] != null)
        {
            TextBoxTrack.Text = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBoxUID.Text == "")
        {
            Response.Write("<script>alert('Please Enter Your UID')</script>");
        }
        else
        {
            Session["UID"] = TextBoxUID.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from LeaveRequest where Username='" + Session["User"] + "' and UID='" + TextBoxUID.Text + "'";
            SqlCommand com1 = new SqlCommand(checkUser, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp1 >= 1)
            {
                string checkApprove = "select Director from LeaveRequest where Username='" + Session["User"] + "' and UID='" + TextBoxUID.Text + "'";
                SqlCommand com2 = new SqlCommand(checkApprove, conn);
                string temp2 = (com2.ExecuteScalar().ToString());
                if (temp2 == "Approved            ")
                {
                    Response.Redirect("Receipt.aspx");
                }
                else if (temp2 == "Rejected            ")
                {
                    Response.Write("<script>alert('Sorry!!Your Request Has Been Rejected By Principal')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Sorry!!Your Request is Currently Pending At Director')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('No Any Leave Request has been Applied of This UID')</script>");
            }
        }
    }
}