using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CriteriaChecking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }

    protected void show(object sender, EventArgs e)
    {
        //GridView1.Visible = true;
        try
        {
            SqlConnection scon;
            SqlCommand scmd;
            SqlDataAdapter da;
            DataSet ds;
            double mk = Convert.ToDouble(TextBox1.Text);
            scon = new SqlConnection("server=Mrudhika\\SQLEXPRESS;uid=sa;password=mrudhika;database=master");
            
            scmd = new SqlCommand("select *from students where Diplomamarks>=@m;",scon);
            scmd.Parameters.AddWithValue("m", mk);
            da = new SqlDataAdapter(scmd);
            ds = new DataSet();
            da.Fill(ds, "stud");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
        }

        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }




    }
}