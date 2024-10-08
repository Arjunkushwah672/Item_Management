using System;
using System.Data;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductPageUI : System.Web.UI.Page
{
    DataSet ds;
    APIProcedure objdb = new APIProcedure();
    CommanddlFill objddl = new CommanddlFill();
    CultureInfo cult = new CultureInfo("gu-IN", true);



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BIndRp_Product();

        }

    }


    public void BIndRp_Product()
    {
        try
        {

            ds = null;
            ds = objdb.ByProcedure("SpProduct1",
                new string[] { "flag" },
                new string[] { "11" }, "dataset");

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                Rp_Product.DataSource = ds;
                Rp_Product.DataBind();
            }


        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }

    protected void Cardbtn_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            string msg = "";

            var btn = (Button)sender;
            var item = (RepeaterItem)btn.NamingContainer;
            Button Cardbtn = (Button)item.FindControl("Cardbtn");
            Label lblProductName = (Label)item.FindControl("lblProductName");
            Label lblPrice = (Label)item.FindControl("lblPrice");
            Label lblimag1 = (Label)item.FindControl("lblimag1");
            Label lblImagepath = (Label)item.FindControl("lblImagepath");


            ds = null;
            ds = objdb.ByProcedure("SpCart",
                     new string[] { "flag",
                             "User_Id",
                             "Name",
                             "Price",
                             "PImageName",
                             "PImagePath",
                             "CreatedBy"
                     },
                     new string[] { "2",
                         "1",
                         lblProductName.Text,
                          lblPrice.Text,
                         lblimag1.Text,
                         lblImagepath.Text,
                              "1"
                     }, "dataset");

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {


                string Success = ds.Tables[0].Rows[0]["ErrorMsg"].ToString();
                //txtProductName.Text = "";
                //txtPrice.Text = "";
                //txtStock.Text = "";
                //FillGrid();
                lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", Success);
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
