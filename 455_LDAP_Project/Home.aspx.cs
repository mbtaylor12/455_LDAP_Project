﻿using System;
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

                /*System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "FirstName"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "LastName"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "UserName"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "Phone"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "Email"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "LastBadLogin"));
                System.Diagnostics.Debug.WriteLine(ad.getUserInfo(username, "LastPasswordReset"));*/
            }


        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1d);
            Response.Redirect("Login.aspx");
        }
    }
}