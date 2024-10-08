using System;
using System.Data;
using System.Globalization;
using System.Web.UI;

public partial class ResetPassword : System.Web.UI.Page
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
            if (Session["Emp_Id"] != null)
            {
                ViewState["Emp_Id"] = Session["Emp_Id"].ToString();
            }
            ViewState["PID"] = objdb.Decrypt(Request.QueryString["Emp_Id"].ToString());
            ViewState["expirecode"] = objdb.Decrypt(Request.QueryString["expirecode"].ToString());
            string dateTime = DateTime.Now.ToString("ddMMyyyyHHmmss");
            if (Convert.ToInt64(ViewState["expirecode"].ToString()) > Convert.ToInt64(dateTime))
            {
                LinkValidate();
            }
            else
            {
                Response.Redirect("~/Service/LinkExpiredPage.aspx");
            }
            //ViewState["Emp_Id"] = Session["Emp_Id"].ToString();
        }
    }
    protected void Resetbtn_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";

            DataSet ds;
            ds = objdb.ByProcedure("SpEmp",
                     new string[] { "flag",
                     "Email",
                     "Password",
                     "ConfirmPassword",
                     "UpdateBy"
                     },

                     new string[] { "8",
                     ViewState["PID"].ToString(),
                     txtPass.Text,
                     txtConfirmPass.Text,
                     ViewState["Emp_Id"].ToString()
                     }, "dataset"); ;

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                string Success = ds.Tables[0].Rows[0]["ErrorMsg"].ToString();
                txtPass.Text = "";
                txtConfirmPass.Text = "";
                //FillPageDetail();
                lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", Success);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "alert();", true);
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }

    public void LinkValidate()
    {
        try
        {

            lblMsg.Text = "";
            DataSet ds;
            ds = objdb.ByProcedure("SpExpirelink",
                     new string[] { "flag",
                     "Email"
                     },
                     new string[] { "2",
                       ViewState["Emp_Id"].ToString()
                     }, "dataset");

            if ((ViewState["expirecode"].ToString()) == ds.Tables[0].Rows[0]["Datetime"].ToString())
            {

            }
            else
            {
                Response.Redirect("~/Service/LinkExpiredPage.aspx");
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }






}