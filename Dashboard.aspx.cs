using System;
using System.Data;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    

    DataSet ds;
    APIProcedure objdb = new APIProcedure();
    CommanddlFill objddl = new CommanddlFill();
    CultureInfo cult = new CultureInfo("gu-IN", true);
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Form.Attributes.Add("enctype", "multipart/form-data");

        if (!IsPostBack)
        {
            if (Session["Emp_ID"] != null)
            {
                ViewState["Emp_ID"] = Session["Emp_ID"].ToString();
                FillGrid();
            }
            else
            {
                Response.Redirect("/Login.aspx");
            }
        }
    }





    public void FillGrid()
    {
        try
        {

            GridView1.DataSource = null;
            GridView1.DataBind();
            ds = null;
            ds = objdb.ByProcedure("SpCity",
                new string[] { "flag" },
                new string[] { "1" }, "dataset");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }

    

    protected void lblststus_Click1(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            int selRowIndex = ((GridViewRow)(((LinkButton)sender).Parent.Parent)).RowIndex;
            LinkButton lblststus = (LinkButton)GridView1.Rows[selRowIndex].FindControl("lblststus");
            string City_Id = lblststus.CommandArgument;

            string Is_Active = "0";

            if (lblststus.Text == "Publish")
            {
                Is_Active = "1";
            }

            objdb.ByProcedure("SpCity",
                       new string[] { "flag", "Is_Active", "City_Id" },
                       new string[] { "4", Is_Active, City_Id }, "dataset");

            lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", "Status Updated successfully!");
            FillGrid();
        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }

    }


    protected void lbDelete_Click1(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            int selRowIndex = ((GridViewRow)(((LinkButton)sender).Parent.Parent)).RowIndex;
            LinkButton lbDelete = (LinkButton)GridView1.Rows[selRowIndex].FindControl("lbDelete");

            //Image Image1 = (Image)GridView1.Rows[selRowIndex].FindControl("Image1");
            Label lbl1 = (Label)GridView1.Rows[selRowIndex].FindControl("lbl1");
            Label lbl2 = (Label)GridView1.Rows[selRowIndex].FindControl("lbl2");

            string City_Id = lbDelete.CommandArgument;

            ds = null;
            ds = objdb.ByProcedure("SpCity",
                       new string[] { "flag", "City_Id" },
                       new string[] { "5", City_Id }, "dataset");

            if (ds.Tables[0].Rows[0]["Msg"].ToString() == "Ok")
            {


                lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", "Record Successfully Deleted");

            }
            else
            {
                lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", "Error! :" + "Not Deleted.");
            }



            lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", "Information successfully Delete!");
            FillGrid();
        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }


    protected void Btnsave_Click1(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            string msg = "";



            if (txtCityName.Text == "")
            {
                msg += "Entar City Name. \\n";
            }

            if (txtDescription.Text == "")
            {
                msg += "Entar Description. \\n";
            }




            if (msg.Trim() == "")
            {



                DataSet ds;
                ds = objdb.ByProcedure("SpCity",
                         new string[] { "flag",
                         "City_Name",
                         "Description",
                         "CreatedBy"
                         },
                         new string[] { "2",
                         txtCityName.Text,
                         txtDescription.Text,

                         }, "dataset");

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {


                    string Success = ds.Tables[0].Rows[0]["ErrorMsg"].ToString();
                    txtCityName.Text = "";
                    txtDescription.Text = "";
                    //txtbannerName.Text = "";
                    FillGrid();
                    lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", Success);
                }

            }

            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "alert('" + msg + "');", true);
            }
        }

        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }


    }



}
