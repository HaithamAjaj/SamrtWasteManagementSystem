using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class Dashboard : System.Web.UI.Page
{
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Display.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS12;AttachDbFilename=C:\Project\App_Data\Database.mdf;Integrated Security=True;User Instance=True");

        SqlDataAdapter da = new SqlDataAdapter("SELECT TrashNo FROM TrashDe WHERE TrashNo='" + TextBox1.Text + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            Label1.Text = "All field are empty";
            Label1.Visible = true;
        }
        else if (TextBox1.Text == "")
        {
            Label1.Text = "Trash number field is empty";
            Label1.Visible = true;
        }
        else if (TextBox2.Text == "")
        {
            Label1.Text = "Postion field is empty";
            Label1.Visible = true;
        }


        else if (dt.Rows.Count >= 1)
        {
            Label1.Text = "Trash number existing already";
            Label1.Visible = true;
        }
        
    
        
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO TrashDe (TrashNo,Postion) VALUES (@TrashNo,@Postion)", con);
            con.Open();

            cmd.Parameters.AddWithValue("@TrashNo", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Postion", TextBox2.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Successed";
            Label1.Visible = true;
        }
        

    }
    }
