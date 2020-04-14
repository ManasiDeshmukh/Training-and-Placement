using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SearchStudentInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void Show(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter da;
        DataSet ds;

        scon = new SqlConnection("server=Mrudhika\\SQLEXPRESS;uid=sa;password=mrudhika;database=master");
        scon.Open();

        if (DropDownList1.SelectedItem.Value == "1")
        {
            scmd = new SqlCommand("Select * from Students;", scon);
            //da = new SqlDataAdapter(scmd);

        }
        else
        if (DropDownList1.SelectedItem.Value == "2")
        {
           // Label1.Text = "Enter the Branch";
            string bt = Convert.ToString(TextBox1.Text);
            scmd = new SqlCommand("Select * from students where branch =@b;", scon);
            scmd.Parameters.AddWithValue("b", bt);

        }
        else
        {
            string id = TextBox1.Text;
            //Label1.Text = "Enter the Roll Number";
            scmd = new SqlCommand("select* from Students where rollno =@r;", scon);
            scmd.Parameters.AddWithValue("r", id);

        }

        da = new SqlDataAdapter(scmd);
        ds = new DataSet();
        da.Fill(ds, "students");
        GridView1.DataSource = ds;
        GridView1.DataBind();

        
        scon.Close();
    }
}