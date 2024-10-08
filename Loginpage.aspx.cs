using System;
using System.Data;
using System.Globalization;
using System.Text;
using System.Web.UI;
public partial class Loginpage : System.Web.UI.Page
{
    DataSet ds;
    APIProcedure objdb = new APIProcedure();
    CommanddlFill objddl = new CommanddlFill();
    CultureInfo cult = new CultureInfo("gu-IN", true);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
        }
    }
    protected void Loginbtn_Click1(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            string msg = "";

            if (msg.Trim() == "")
            {

                ds = objdb.ByProcedure("SpEmp",
                         new string[] { "flag",
                         "Email",
                         "Password"
                         },
                         new string[] { "6",
                         txtUserId.Text,
                         txtPass.Text, }, "dataset");
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["Email"].ToString() == txtUserId.Text && ds.Tables[0].Rows[0]["Password"].ToString() == txtPass.Text)
                    {
                        Session["Emp_Id"] = ds.Tables[0].Rows[0]["Emp_Id"].ToString();
                        Session["EmpName"] = ds.Tables[0].Rows[0]["EmpName"].ToString();
                        Session["PImageName"] = ds.Tables[0].Rows[0]["PImageName"].ToString();
                        Response.Redirect("~/mis/Common/Chart.aspx");

                    }
                    else
                    {
                        txtUserId.Text = "";
                        txtPass.Text = "";
                        lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", "Error! :" + "Invalid Email.");

                    }
                }

                else
                {
                    lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", "Error! :" + "Invalid Email.");

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
    protected void Forgetbtn_Click(object sender, EventArgs e)
    {
        Card.Visible = false;
        Forget.Visible = true;
    }
    public string EMailBody(string email, string expirecode)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("<div style='font-family:Arial,sans-serif;max-width:600px;margin:0 auto; padding:20px;border:1px solid #e0e0e0;border-radius:8px'>");
        sb.Append("<div style='text-align:center;padding:10px;background-color:#f5f5f5;border-radius:8px 8px 0 0' >");
        sb.Append("<h2 style='color:#007bff;margin:0'>Password Reset Request</h2>");
        sb.Append("</div>");
        sb.Append("<div style='padding:20px;color: #333'>");
        sb.Append(" <p style='font-size:16px'>Hi,</p>");
        sb.Append("<p style ='font-size:16px'>You recently requested to reset your password. Click the button below to proceed with the password reset:</p>");
        string Link = "http://localhost:50080/ResetPassword.aspx?Emp_Id=" + email + "&&expirecode=" + expirecode;
        sb.Append("<div style=\"'display: inline-block; padding: 14px 24px; font-size: 18px; font-weight: bold; color: white; background-color: #007bff; text-decoration: none; border-radius: 5px'\" rel=\"'noreferrer\" target=\"_blank'\"><a href='" + Link + "'>Reset Password</a></div>");


        //sb.Append("<a href = '#' style='"display:inline-block;padding:14px 24px;font-size:18px;font-weight:bold;color:white;background-color:#007bff;text-decoration:none;border-radius:5px"'target='"_blank"'> Reset Password </a> ");
        sb.Append("<hr style='border:none;border-top:1px solid #e0e0e0'>");
        sb.Append("<p style ='font-size:12px;color:#666;text-align:center'> This link will expire in 10 minutes for your security. If you did not request this, no further action is required.</p>");
        sb.Append("<p style = 'font - size: 12px; color: #666; text-align: center'>Test Email</p>");
        sb.Append("</div>");
        sb.Append("</div>");
        return sb.ToString();
    }
    protected void SendMailbtnClick(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            string msg = "";
            if (msg.Trim() == "")
            {
                DataSet ds;
                ds = null;
                ds = objdb.ByProcedure("SpEmp",
                         new string[] { "flag",
                         "Email",
                         },

                         new string[] { "7",
                         txtEmail.Text, }, "dataset");


                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    Session["Emp_Id"] = ds.Tables[0].Rows[0]["Emp_Id"].ToString();
                    Session["EmpName"] = ds.Tables[0].Rows[0]["EmpName"].ToString();

                    string dateTime = DateTime.Now.AddMinutes(10).ToString("ddMMyyyyHHmmss");
                    ExpiryLink();
                    string body = EMailBody(objdb.Encrypt(txtEmail.Text), objdb.Encrypt(dateTime));
                    Sendemail obj = new Sendemail();
                    obj.SENDEMAIL(txtEmail.Text, "reset password", body);

                    try
                    {
                        lblMsg1.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", "Email Sent successfully!");
                        txtEmail.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
                    }
                }
                else
                {
                    txtEmail.Text = "";
                    lblMsg1.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", " Error! :" + "Invalid Email.");
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

    public void ExpiryLink()
    {
        try
        {

            //string Link = "http://localhost:50080/ResetPassword.aspx?Emp_Id=";

            DataSet ds;
            ds = objdb.ByProcedure("SpExpirelink",
                          new string[] { "flag",
                          "Email",
                          "Datetime"

                          },

                          new string[] { "1" ,
                          txtEmail.Text,
                         DateTime.Now.AddMinutes(10).ToString("ddMMyyyyHHmmss")

                      }, "dataset");
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {

            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = objdb.Alert("fa-ban", "alert-danger", "Sorry!", ex.Message.ToString());
        }
    }
}


