using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _455_LDAP_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Request.Cookies["userName"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    String username = Request.Cookies["userName"].Value;
                    welcomeback.Text = "Welcome Back " + username;
                    ActiveDirectory ad = new ActiveDirectory();
                    userName.Text = ad.getUserInfo(username, "UserName");
                    firstname.Text = ad.getUserInfo(username, "FirstName");
                    lastname.Text = ad.getUserInfo(username, "LastName");
                    phone.Text = ad.getUserInfo(username, "Phone");
                    email.Text = ad.getUserInfo(username, "Email");
                if (ad.getUserInfo(username, "LastBadLogin") != null)
                {
                    badLogin.Text = ad.getUserInfo(username, "LastBadLogin");
                    passwordReset.Text = ad.getUserInfo(username, "LastPasswordReset");
                }
            }


        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1d);
            Response.Redirect("Login.aspx");
        }

        protected void resetBtn_Click(object sender, EventArgs e)
        {
            ActiveDirectory ad = new ActiveDirectory();
            var errorMsg = ad.resetPassword(Request.Cookies["userName"].Value, pwdRest.Text);
            if (errorMsg.Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                error.Text = errorMsg;
                pwdRest.Text = "";
            }

        }
    }
}