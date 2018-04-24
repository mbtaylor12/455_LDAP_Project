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
            Boolean success = ad.ValidateCredentials("mtaylor131", "security1#");
            System.Diagnostics.Debug.WriteLine(success);

        }
    }
}