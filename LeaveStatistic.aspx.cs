using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class LeaveStatistic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
      
    }
    private void updaterow(string Userid, String markstatus)
    {
        
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            DropDownList dlist = (row.Cells[14].FindControl("DropDownList1") as DropDownList);
            string Uid = (row.Cells[0].Text);
            string Userid = (row.Cells[1].Text);
            string RDate = (row.Cells[2].Text);
            string LeaveType = (row.Cells[6].Text);
            string DFrom = (row.Cells[7].Text);
            string DTO = (row.Cells[8].Text);
            int TotalDay = Convert.ToInt32(row.Cells[10].Text);
            if (dlist.Text != "Pending")
            {
                if (dlist.Text == "Approved")
                {
                    updatero(Uid, dlist.Text);
                }
                else
                {
                    updatero(Uid, dlist.Text);
                }
            }
        }
        GridView1.DataBind();
    }
    private void updatero(string Uid, String markstatus)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        conn.Open();
        string updtHOD = "UPDATE LeaveRequest set [HODCurrent] = @status, [HOD] = @newstatus where UID='" + Uid + "'";
        SqlCommand comm = new SqlCommand(updtHOD, conn);
        comm.Parameters.AddWithValue("@newstatus", markstatus);
        comm.Parameters.AddWithValue("@status", markstatus);
        comm.ExecuteNonQuery();
        Response.Write("<script language=javascript>confirm('Data Updated');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
}