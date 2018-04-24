using System;
using System.Collections.Generic;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Web;

namespace _455_LDAP_Project
{
    public class ActiveDirectory
    {
        Server sv = new Server();

        public bool ValidateCredentials(string username, string password)
        {
            String domain = sv.getIP();

            using (var context = new PrincipalContext(ContextType.Domain, domain))
            {
                return context.ValidateCredentials(username, password);
            }
        }

        public String CreateAccount(String firstName, String lastName, String password, String phoneNum, String username)
        {
            String error = "";

            try
            {
                using (var pc = new PrincipalContext(ContextType.Domain, sv.getIP(), sv.getGenericUsername(), sv.getGenericPassword()))
                {
                    using (var up = new UserPrincipal(pc))
                    {
                        up.SamAccountName = firstName[0] + lastName; // Username
                        up.EmailAddress = firstName[0] + lastName + "@security.edu"; // Email
                        up.SetPassword(password); // Password
                        up.Surname = firstName; //firstname
                        up.Name = firstName + " " + lastName; //full name
                        up.GivenName = lastName; //lastname
                        up.DisplayName = firstName + " " + lastName; //displayname
                        up.VoiceTelephoneNumber = phoneNum; //Phone
                        up.Enabled = true;
                        up.Save();
                    }
                }
            }
            catch(System.DirectoryServices.AccountManagement.PasswordException pwe)
            {
                error = "Password needs special characters. !@#$%^&*";
            }
            catch(System.DirectoryServices.AccountManagement.PrincipalExistsException aee)
            {
                error = "Account already exists.";
            }
            catch (Exception e)
            {
                error = e.ToString();
            }

            return error;
        }
    }
}