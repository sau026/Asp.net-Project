using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LeaveRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            GenerateAutoId();
        }
        LblDept.Text = Session["Dept"].ToString();
        LabelSMN.Text = Session["UserLogin"].ToString();
        LabelUserid.Text = Session["user"].ToString();
    }
    private void GenerateAutoId()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
        con.Open();
        string empID = "UID";
        SqlCommand cmd = new SqlCommand("select count(UID) from LeaveRequest", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        LabelUID.Text = empID + i.ToString();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
         TxtBoxDate.Text = CalendarDate.SelectedDate.ToShortDateString();
         CalendarDate.Visible = false;
    }
    protected void imgBtnCalender1_Click(object sender, ImageClickEventArgs e)
    {
        if (CalendarDate.Visible)
        {
            CalendarDate.Visible = false;
        }
        else
        {
            CalendarDate.Visible = true;
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            int CalcuD = Convert.ToInt32(LabelTLDay.Text);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
            con.Open();
            string CheckUser = "select Count(Username) from LeaveRecord where Username='" + LabelUserid.Text + "'";
            SqlCommand cam = new SqlCommand(CheckUser, con);
            int temp1 = Convert.ToInt32(cam.ExecuteScalar().ToString());
            if (temp1 == 1)
            {
                if (DDSLT.SelectedValue == "Medical Leave")
                {
                    string CheckDay = "select UML from LeaveRecord where Username='" + LabelUserid.Text + "'";
                    SqlCommand comm = new SqlCommand(CheckDay, con);
                    int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                        if (temp + CalcuD <= 8)
                        {
                            if (CalcuD == 0)
                            {
                                Session["valid"] = "0";
                                Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                            }
                            else
                            {
                                Session["valid"] = "1";
                            }
                        }
                }
                else if (DDSLT.SelectedValue == "Casual Leave")
                {
                    string CheckDay = "select UCL from LeaveRecord where Username='" + LabelUserid.Text + "'";
                    SqlCommand comm = new SqlCommand(CheckDay, con);
                    int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                    if (temp + CalcuD <= 12)
                    {
                        if (CalcuD == 0)
                        {
                            Session["valid"] = "0";
                            Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                        }
                        else
                        {
                            Session["valid"] = "1";
                        }
                    }
                }
                else if (DDSLT.SelectedValue == "Earned Leave")
                {
                    string CheckDay = "select UEL from LeaveRecord where Username='" + LabelUserid.Text + "'";
                    SqlCommand comm = new SqlCommand(CheckDay, con);
                    int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                    if (temp + CalcuD <= 16)
                    {
                        if (CalcuD == 0)
                        {
                            Session["valid"] = "0";
                            Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                        }
                        else
                        {
                            Session["valid"] = "1";
                        }
                    }
                }
                else
                {
                    if (CalcuD == 0)
                    {
                        Session["valid"] = "0";
                        Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                    }
                    else
                    {
                        Session["valid"] = "1";
                    }

                }
            }
            else
            {
                if (DDSLT.SelectedValue == "Medical Leave")
                {
                    if (CalcuD <= 8)
                    {
                        if (CalcuD == 0)
                        {
                            Session["valid"] = "0";
                            Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                        }
                        else
                        {
                            Session["valid"] = "1";
                        }
                    }
                }
                else if (DDSLT.SelectedValue == "Casual Leave")
                {
                    if (CalcuD <= 12)
                    {
                        if (CalcuD == 0)
                        {
                            Session["valid"] = "0";
                            Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                        }
                        else
                        {
                            Session["valid"] = "1";
                        }
                    }
                }
                else if (DDSLT.SelectedValue == "Earned Leave")
                {
                    if (CalcuD <= 16)
                    {
                        if (CalcuD == 0)
                        {
                            Session["valid"] = "0";
                            Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                        }
                        else
                        {
                            Session["valid"] = "1";
                        }
                    }
                }
                else
                {
                    if (CalcuD == 0)
                    {
                        Session["valid"] = "0";
                        Response.Write("<script language=javascript>confirm('Minimum Total Day Should Be 1');</script>");
                    }
                    else
                    {
                        Session["valid"] = "1";
                    }
                }
            }
            if (Session["valid"] == "1" && Session["date"] == "1")
            {
                GenerateAutoId();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDataConnectionString"].ConnectionString);
                conn.Open();
                string insertDetail = "insert into LeaveRequest (UID,Username,RDATE,Designation,LeaveType,DateFrom,DateTo,Reason,TotalDay,NofLabo,NofLec,StationLP,HODCurrent,HOD,PrincipalCurrent,Principal,DirectorCurrent,Director) values (@UID,@userid ,@Rdate ,@Desig ,@LeaveT ,@DFrom ,@DTo,@Reason ,@TotalD ,@NOLABO ,@NOLEC ,@StationLP ,@HodC ,@Hod ,@PrincC ,@Princ ,@DirectC ,@Direct)";
                SqlCommand com = new SqlCommand(insertDetail, conn);
                com.Parameters.AddWithValue("@UID", LabelUID.Text);
                com.Parameters.AddWithValue("@userid", LabelUserid.Text);
                com.Parameters.AddWithValue("@Rdate", TxtBoxDate.Text);
                com.Parameters.AddWithValue("@Desig", DDdesignation.SelectedValue);
                com.Parameters.AddWithValue("@LeaveT", DDSLT.SelectedValue);
                com.Parameters.AddWithValue("@DFrom", TxtBoxLDF.Text);
                com.Parameters.AddWithValue("@DTo", TxtBoxLDT.Text);
                com.Parameters.AddWithValue("@Reason", TxtBoxRFL.Text);
                com.Parameters.AddWithValue("@TotalD", LabelTLDay.Text);
                com.Parameters.AddWithValue("@NOLABO", DDNLabo.Text);
                com.Parameters.AddWithValue("@NOLEC", DDNLec.Text);
                com.Parameters.AddWithValue("@StationLP", DDSLP.Text);
                com.Parameters.AddWithValue("@HodC", "Pending");
                com.Parameters.AddWithValue("@Hod", "Pending");
                com.Parameters.AddWithValue("@PrincC", "NULL");
                com.Parameters.AddWithValue("@Princ", "NULL");
                com.Parameters.AddWithValue("@DirectC", "NULL");
                com.Parameters.AddWithValue("@Direct", "NULL");
                com.ExecuteNonQuery();
                Response.Write("<script language=javascript>confirm('Detail Send');</script>");

                string checkUser = "select count(*) from LeaveRecord where Username='" + LabelUserid.Text + "'";
                SqlCommand comm = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if (temp < 1)
                {
                    string insertLeave = "insert into LeaveRecord (Username,UEL,REL,UCL,RCL,UML,RML,USL) values (@Userid ,@UEL ,@REL ,@UCL ,@RCL ,@UML ,@RML ,@USL)";
                    SqlCommand com1 = new SqlCommand(insertLeave, conn);
                    com1.Parameters.AddWithValue("@Userid", LabelUserid.Text);
                    com1.Parameters.AddWithValue("@UEL", "0");
                    com1.Parameters.AddWithValue("@REL", "16");
                    com1.Parameters.AddWithValue("@UCL", "0");
                    com1.Parameters.AddWithValue("@RCL", "12");
                    com1.Parameters.AddWithValue("@UML", "0");
                    com1.Parameters.AddWithValue("@RML", "8");
                    com1.Parameters.AddWithValue("@USL", "0");
                    com1.ExecuteNonQuery();
                }
                if (Session["Role"] == "HOD" || Session["Role"] == "Admin" || Session["Role"] == "Director")
                {
                    string updateStatus = "UPDATE LeaveRequest set [HOD]=@NHOD, [HODCurrent]=@NHODC where username='" + LabelUserid.Text + "'";
                    SqlCommand camm = new SqlCommand(updateStatus, conn);
                    camm.Parameters.AddWithValue("@NHOD", "Approved");
                    camm.Parameters.AddWithValue("@NHODC", "Approved");
                    camm.ExecuteNonQuery();
                    conn.Close();
                }
                else if (Session["Role"] == "Principal")
                {
                    string updateStatus = "UPDATE LeaveRequest set [HOD]=@NHOD, [HODCurrent]=@NHODC, [Principal]=@Princ, [PrincipalCurrent]=@PrincC where username='" + LabelUserid.Text + "'";
                    SqlCommand camm = new SqlCommand(updateStatus, conn);
                    camm.Parameters.AddWithValue("@NHOD", "-");
                    camm.Parameters.AddWithValue("@NHODC", "-");
                    camm.Parameters.AddWithValue("@Princ", "-");
                    camm.Parameters.AddWithValue("@PrincC", "-");
                    camm.ExecuteNonQuery();
                    conn.Close();
                }
                Session["valid"] = "0";
                GenerateAutoId();
                
            }
            else if (Session["Date"] != "1")
            {
                Response.Write("<script language=javascript>confirm('Sorry!!From Date Must Be Less Than To date');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>confirm('Sorry!!Insufficent Number of Leave Please Check Your Leave Statistics');</script>");
            }
        }
    }
    protected void CalendarLDF_SelectionChanged(object sender, EventArgs e)
    {
        TxtBoxLDF.Text = CalendarLDF.SelectedDate.ToShortDateString();
        CalendarLDF.Visible = false;
    }
    protected void TxtBoxLDF_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void ImgBtnCalender2_Click(object sender, ImageClickEventArgs e)
    {
        if (CalendarLDF.Visible)
        {
            CalendarLDF.Visible = false;
        }
        else
        {
            CalendarLDF.Visible = true;
        }
    }
    protected void CalendarLDT_SelectionChanged(object sender, EventArgs e)
    {
        TxtBoxLDT.Text = CalendarLDT.SelectedDate.ToShortDateString();
        CalendarLDT.Visible = false;
        DateTime dt1 = Convert.ToDateTime(TxtBoxLDF.Text);
        DateTime dt2 = Convert.ToDateTime(TxtBoxLDT.Text);
        if (dt1 > dt2)
        {
            Session["date"] = "0";
            Response.Write("<script language=javascript>confirm('From Date Must Be Less Than To date');</script>");
            TimeSpan ts = dt1 - dt2;
            int days = ts.Days;
            LabelTLDay.Text = days.ToString();
        }
        else
        {
            Session["date"] = "1";
            TimeSpan ts = dt2 - dt1;
            int days = ts.Days;
            LabelTLDay.Text = days.ToString();    
        }
    }
    protected void ImgBtnCalender3_Click(object sender, ImageClickEventArgs e)
    {
      if(CalendarLDT.Visible)
      {
           CalendarLDT.Visible = false;
      }
      else
      {
           CalendarLDT.Visible = true;
      }
    }
    protected void TxtBoxLDT_TextChanged(object sender, EventArgs e)
    {
           
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void CalendarLDT_Click(object sender, EventArgs e)
    {
       
    }
    protected void DDSLT_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void DDdesignation_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}