using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class PrincipalApprove : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         foreach (GridViewRow row in GridView1.Rows)
        {
            DropDownList dlist = (row.Cells[15].FindControl("DropDownList1") as DropDownList);
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
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
                    conn.Open();
                    /*string updateDetail = "UPDATE LeaveRecord set [RDate] = @NRDate, [LeaveType] = @NLT, [DateFrom] = @NDFrom, [DateTo] = @NDTo where Username='" + Userid + "'";
                    SqlCommand com = new SqlCommand(updateDetail, conn);
                    com.Parameters.AddWithValue("@NRDate", RDate);
                    com.Parameters.AddWithValue("@NLT", LeaveType);
                    com.Parameters.AddWithValue("@NDFrom", DFrom);
                    com.Parameters.AddWithValue("@NDTo", DTO);
                    com.ExecuteNonQuery();

                    string insertData = "insert into AllLeaveRecord (Username,RDate,LeaveType,DateFrom,DateTo,TotalDay) values (@Uname ,@RDate ,@LT ,@DFrom ,@DTo ,@TDay)";
                    SqlCommand com1 = new SqlCommand(insertData, conn);
                    com1.Parameters.AddWithValue("@uname", Userid);
                    com1.Parameters.AddWithValue("@RDate", RDate);
                    com1.Parameters.AddWithValue("@LT", LeaveType);
                    com1.Parameters.AddWithValue("@DFrom", DFrom);
                    com1.Parameters.AddWithValue("@DTo", DTO);
                    com1.Parameters.AddWithValue("@TDay", TotalDay);
                    com1.ExecuteNonQuery();*/
                    if (LeaveType == "Earned Leave                  ")
                    {
                        string checkUEL = "select UEL from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand stockcom = new SqlCommand(checkUEL, conn);
                        int UEL = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                        int NUEL = UEL + TotalDay;
                        string checkREL = "select REL from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand com5 = new SqlCommand(checkREL, conn);
                        int REL = Convert.ToInt32(com5.ExecuteScalar().ToString());
                        int NREL = REL - TotalDay;
                        if (NUEL > 16)
                        {
                            Session["execute"] = "0";
                            Response.Write("<script language=javascript>confirm('Sorry!!Remaining Earned Leave of this User is Not Sufficient');</script>");
                        }
                        else
                        {
                            Session["execute"] = "1";
                            string updtDay = "UPDATE LeaveRecord set [UEL] = @NUEL, [REL] = @NREL where Username='" + Userid + "'";
                            SqlCommand camm = new SqlCommand(updtDay, conn);
                            camm.Parameters.AddWithValue("@NUEL", NUEL);
                            camm.Parameters.AddWithValue("@NREL", NREL);
                            camm.ExecuteNonQuery();
                        }
                    }
                    else if (LeaveType == "Casual Leave                  ")
                    {
                        string checkUCL = "select UCL from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand stockcom = new SqlCommand(checkUCL, conn);
                        int UCL = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                        int NUCL = UCL + TotalDay;
                        string checkRCL = "select RCL from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand com4 = new SqlCommand(checkRCL, conn);
                        int RCL = Convert.ToInt32(com4.ExecuteScalar().ToString());
                        int NRCL = RCL - TotalDay;
                        if (NUCL > 12)
                        {
                            Session["execute"] = "0";
                            Response.Write("<script language=javascript>confirm('Sorry!!Remaining Earned Leave of this User is Not Sufficient');</script>");
                        }
                        else
                        {
                            Session["execute"] = "1";
                            string updtDay = "UPDATE LeaveRecord set [UCL] = @NUCL, [RCL] = @NRCL where Username='" + Userid + "'";
                            SqlCommand camm = new SqlCommand(updtDay, conn);
                            camm.Parameters.AddWithValue("@NUCL", NUCL);
                            camm.Parameters.AddWithValue("@NRCL", NRCL);
                            camm.ExecuteNonQuery();
                        }
                    }
                    else if (LeaveType == "Medical Leave                 ")
                    {
                        string checkUML = "select UML from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand stockcom = new SqlCommand(checkUML, conn);
                        int UML = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                        int NUML = UML + TotalDay;
                        string checkRML = "select RML from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand com2 = new SqlCommand(checkRML, conn);
                        int RML = Convert.ToInt32(com2.ExecuteScalar().ToString());
                        int NRML = RML - TotalDay;
                        if (NUML > 8)
                        {
                            Session["execute"] = "0";
                            Response.Write("<script language=javascript>confirm('Sorry!!Remaining Earned Leave of this User is Not Sufficient');</script>");
                        }
                        else
                        {
                            Session["execute"] = "1";
                            string updtDay = "UPDATE LeaveRecord set [UML] = @NUML, [RML] = @NRML where Username='" + Userid + "'";
                            SqlCommand camm = new SqlCommand(updtDay, conn);
                            camm.Parameters.AddWithValue("@NUML", NUML);
                            camm.Parameters.AddWithValue("@NRML", NRML);
                            camm.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        Session["execute"] = "1";
                        string checkUSL = "select USL from LeaveRecord where Username='" + Userid + "'";
                        SqlCommand stockcom = new SqlCommand(checkUSL, conn);
                        int USL = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                        int NUSL = USL + TotalDay;
                        string updtDay = "UPDATE LeaveRecord set [USL] = @NUSL  where Username='" + Userid + "'";
                        SqlCommand camm = new SqlCommand(updtDay, conn);
                        camm.Parameters.AddWithValue("@NUSL", NUSL);
                        camm.ExecuteNonQuery();
                    }
     
                    if(Session["execute"] != "0")
                    {
                    updatero(Uid, dlist.Text);
                    }
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
        string updtPrincipal = "UPDATE LeaveRequest set [PrincipalCurrent] = @status, [Principal] = @newstatus where UID='" + Uid + "'";
        SqlCommand comm = new SqlCommand(updtPrincipal, conn);
        comm.Parameters.AddWithValue("@newstatus", markstatus);
        comm.Parameters.AddWithValue("@status", markstatus);
        comm.ExecuteNonQuery();
        Response.Write("<script language=javascript>confirm('Data Updated');</script>");
    }
    
}