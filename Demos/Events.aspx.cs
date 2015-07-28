using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.CompilerServices;

public partial class Demos_Events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WriteMessage();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WriteMessage();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        WriteMessage();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        WriteMessage();
    }

    private void WriteMessage([CallerMemberName] string handlerName = "")
    {
        if (Page.IsPostBack)
        {
            PostBack.Text += handlerName + "<br />";
        }
        else
        {
            NoPostBack.Text += handlerName + "<br />";
        }
    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        WriteMessage("Page_PreRenderComplete<br />------------");
    }
}