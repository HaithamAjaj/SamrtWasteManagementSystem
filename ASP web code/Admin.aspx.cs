using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblErMe.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS12;AttachDbFilename=C:\Project\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT(1) FROM tblAd WHERE username =@username AND password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 1)
        {
            Session["username"] = TextBox1.Text.Trim();
            Response.Redirect("DashAdmin.aspx");

        }
        else if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            LblErMe.Text = "The email and password field are empty";
            LblErMe.Visible = true;
        }
        else if (TextBox1.Text == "")
        {
            LblErMe.Text = "The email is empty";
            LblErMe.Visible = true;
        }
        else if (TextBox2.Text == "")
        {
            LblErMe.Text = "The password is empty";
            LblErMe.Visible = true;
        }
        else if (count == 0)
        {
            LblErMe.Text = "The password or email is incorrect";
            LblErMe.Visible = true;
        }
        else
            LblErMe.Visible = true;

    }
}