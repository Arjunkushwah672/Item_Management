using System;
using System.Data;
using System.Globalization;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["EmpName"] != null)
            {
                lbluser.Text = Convert.ToString(Session["EmpName"]);
                lbluser2.Text = Convert.ToString(Session["EmpName"]);
            }

            if (Session["PImageName"] != null)
            {
                Image1.ImageUrl = "/mis/Common/UploadImage/" + Session["PImageName"].ToString();
            }


            //lbluser.Text = Convert.ToString(Session["EmpName"]);
            //lbluser2.Text = Convert.ToString(Session["EmpName"]);
            ////Image1.ImageUrl = ds.Tables[0].Rows[0](Session["PImagePath"].ToString);
            //Image1.ImageUrl = "/mis/Common/UploadImage/" + Session["PImageName"].ToString();
        }
    }




    protected void Btnlogout_Click(object sender, EventArgs e)
    {
        //if (Session["Emp_Id"] == null)
        //{
        //}
        //else
        //{
        //    Response.Redirect("/Loginpage.aspx");
        //}

    }
}
