using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogin"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (GridView2.Visible)
        {
            GridView2.Visible = false;
            Button2.Text = "Show All Record";
        }
        else
        {
            GridView2.Visible = true;
            Button2.Text = "Hide All Record";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        GridViewRow g = GridView1.SelectedRow;
        TextBox1.Text = g.Cells[1].Text;
        TextBox2.Text = g.Cells[2].Text;
        TextBox3.Text = g.Cells[3].Text;
        TextBox4.Text = g.Cells[4].Text;
        TextBox5.Text = g.Cells[5].Text;
        TextBox6.Text = g.Cells[6].Text;
        TextBox7.Text = g.Cells[7].Text;
        TextBox8.Text = g.Cells[8].Text;
        TextBox9.Text = g.Cells[9].Text;
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow g = GridView2.SelectedRow;
        TextBox1.Text = g.Cells[1].Text;
        TextBox2.Text = g.Cells[2].Text;
        TextBox3.Text = g.Cells[3].Text;
        TextBox4.Text = g.Cells[4].Text;
        TextBox5.Text = g.Cells[5].Text;
        TextBox6.Text = g.Cells[6].Text;
        TextBox7.Text = g.Cells[7].Text;
        TextBox8.Text = g.Cells[8].Text;
        TextBox9.Text = g.Cells[9].Text;
    }
}