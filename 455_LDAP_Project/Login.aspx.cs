using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices.AccountManagement;

namespace _455_LDAP_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    protected void btnLogin_Click(object sender, EventArgs e)
        {
            ActiveDirectory ad = new ActiveDirectory();
            Boolean success = ad.ValidateCredentials(username.Text, password.Text);
            System.Diagnostics.Debug.WriteLine(success);
            if (success)
            {
                Response.Cookies["userName"].Value = username.Text;
                Response.Cookies["userName"].Expires = DateTime.Now.AddDays(1);

                HttpCookie logincookie = new HttpCookie("logincookie");
                logincookie.Value = DateTime.Now.ToString();
                logincookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(logincookie);

                Response.Redirect("Home.aspx"); 
            }
            else
            {
                username.Text = "";
                password.Text = "";
                error.Text = "Invalid Credentials";
            }
            

        }
    }
}