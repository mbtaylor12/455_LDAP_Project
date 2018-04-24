using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _455_LDAP_Project
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            ActiveDirectory ad = new ActiveDirectory();
            String errorMessage = ad.CreateAccount(firstname.Text, lastname.Text, password.Text, phone.Text, output.Text);

            if(errorMessage.Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                error.Text = errorMessage;
            }
        }
    }
}