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

        public String getUserInfo(String username, String infoType)
        {
            PrincipalContext context = new PrincipalContext(ContextType.Domain, sv.getIP(), sv.getGenericUsername(), sv.getGenericPassword());
            UserPrincipal user = UserPrincipal.FindByIdentity(context, username);

            if (infoType.Equals("FirstName"))
                return user.Surname;
            else if (infoType.Equals("LastName"))
                return user.GivenName;
            else if (infoType.Equals("Email"))
                return user.EmailAddress;
            else if (infoType.Equals("Phone"))
                return user.VoiceTelephoneNumber;
            else if (infoType.Equals("UserName"))
                return user.SamAccountName;
            else if (infoType.Equals("LastBadLogin"))
                return user.LastBadPasswordAttempt.Value.AddHours(-7).ToString();
            else if (infoType.Equals("LastPasswordReset"))
                return user.LastPasswordSet.Value.AddHours(-7).ToString();
            else
                return "Invalid Info Type.";
    
        }

        public String resetPassword(String username, String password)
        {
            String error = "";

            PrincipalContext context = new PrincipalContext(ContextType.Domain, sv.getIP(), sv.getGenericUsername(), sv.getGenericPassword());
            UserPrincipal user = UserPrincipal.FindByIdentity(context, username);

            try
            {
                user.SetPassword(password);
            }
            catch (System.DirectoryServices.AccountManagement.PasswordException pwe)
            {
                error = "Password needs special characters. !@#$%^&*";
            }
            catch(Exception e)
            {
                error = e.ToString();
            }

            return error;
        }
    }
}