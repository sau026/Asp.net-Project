using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            conn.Open();
            string checkRDate = "select RDate from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'";
            SqlCommand com = new SqlCommand(checkRDate, conn);
            string temp = com.ExecuteScalar().ToString();
            TextBoxRD.Text = temp.ToString();
            string checkFDate = "select DateFrom from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'";
            SqlCommand cam = new SqlCommand(checkFDate, conn);
            string temp1 = cam.ExecuteScalar().ToString();
            LabelDFrom.Text = temp1.ToString();
            string checkTDate = "select DateTo from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'"; 
            SqlCommand camm = new SqlCommand(checkTDate, conn);
            string temp2 = camm.ExecuteScalar().ToString();
            LabelDTo.Text = temp2.ToString();
            string checkTDay = "select TotalDay from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'";
            SqlCommand comm = new SqlCommand(checkTDay, conn);
            int temp3 = Convert.ToInt32(comm.ExecuteScalar().ToString());
            TextBoxTD.Text = temp3.ToString();
            string checkDesi = "select Designation from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'";
            SqlCommand com1 = new SqlCommand(checkDesi, conn);
            string temp4 = (com1.ExecuteScalar().ToString());
            TextBoxDesi.Text = temp4.ToString();
            string checkLT = "select LeaveType from LeaveRequest where Username='" + Session["user"] + "' and UID='" + Session["UID"] + "'";
            SqlCommand com2 = new SqlCommand(checkLT, conn);
            string temp5 = (com2.ExecuteScalar().ToString());
            TextBoxLT.Text = temp5.ToString();
            LabelName.Text = Session["UserLogin"].ToString();
            TextBoxDept.Text = Session["Dept"].ToString();
            TextBoxStatus.Text = "Approve";
            conn.Close();
            
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}