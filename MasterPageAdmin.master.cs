using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            logoutbtn.Visible = false;
            LinkBtnLStatis.Visible = false;
        }
        else if (Session["UserLogin"] != null)
        {
            if (Session["Role"] == "HOD" || Session["Role"] == "Admin" || Session["Role"] == "Principal" || Session["Role"] == "Director")
            {
                LinkBtnLStatis.Visible = true;
            }
            if (Session["Role"] == "HOD")
            {
                LinkBtnSTAT.Text = "Notification";
            }
            if (Session["Role"] == "Principal")
            {
                LinkBtnSTAT.Text = "Notification";
            }
            if (Session["Role"] == "Director")
            {
                LinkBtnSTAT.Text = "Notification";
            }
            LoginBtn.Visible = false;
            Register.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkBtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkBtnAbout_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutUs.aspx");
    }
    protected void LinkBtnLR_Click(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("LeaveRequest.aspx");
        }
        
    }
    protected void LinkbtnLSTAT_Click(object sender, EventArgs e)
    {

    }
    protected void logoutbtn_Click(object sender, ImageClickEventArgs e)
    {
        Session["UserLogin"] = null;
        Response.Redirect("Logout.aspx");
    }
    protected void LoginBtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkBtnUser_Click(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else if (Session["role"] == "Admin")
        {
            Response.Redirect("UserDetails.aspx");
        }
        else
        {
            Response.Redirect("StaffProfile.aspx");
        } 
    }
    protected void LinkBtnSTAT_Click(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else if (Session["role"] == "Staff Member")
        {
            Response.Redirect("RequestStatus.aspx");
        }
        else if (Session["role"] == "HOD")
        {
            Response.Redirect("LeaveStatistic.aspx");
        }
        else if (Session["role"] == "Principal")
        {
            Response.Redirect("PrincipalApprove.aspx");
        }
        else if (Session["role"] == "Director")
        {
            Response.Redirect("Director.aspx");
        }
        else
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
    protected void Register_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void Heading1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkBtnLStatis_Click(object sender, EventArgs e)
    {
        if (Session["Role"] == "Principal")
        {
            Response.Redirect("RequestStatus3.aspx");
        }
        else
        {
            Response.Redirect("RequestStatus2.aspx");
        }
    }
}
