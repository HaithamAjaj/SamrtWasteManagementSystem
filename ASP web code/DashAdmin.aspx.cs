using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class DashAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
         protected void Button_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DisplayAdmin.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");

    }
    

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}