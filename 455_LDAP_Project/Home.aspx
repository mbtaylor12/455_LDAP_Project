<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_455_LDAP_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Home</h1>
            <asp:Button id="logout" runat="server" Text="Logoff" style="float:right" OnClick="logout_Click"/>
            <br />
            <br />
&nbsp;<asp:Label ID="welcomeback"  runat="server"></asp:Label>!
            <br />
            <br />
            
            <asp:Label ID="title" runat="server" Text="View All your Information Below: "></asp:Label>
            <br />
            <br />
          <b> Username: </b> <asp:Label ID="userName"  runat="server"></asp:Label>
            <br />
           <b> Email: </b> <asp:Label ID="email"  runat="server"></asp:Label>
            <br />
           <b> Firstname: </b> <asp:Label ID="firstname"  runat="server"></asp:Label>
            <br />
           <b> Lastname: </b> <asp:Label ID="lastname"  runat="server"></asp:Label>
            <br />
            <b>Phone Number: </b><asp:Label ID="phone"  runat="server"></asp:Label>
            <br />
            <b>Date of last bad login: </b><asp:Label ID="badLogin"  runat="server"></asp:Label>
            <br />
            <b>Date of last password reset: </b><asp:Label ID="passwordReset"  runat="server"></asp:Label>
             <br />
             <br />
             <br />
            <asp:Label ID="error"  runat="server"></asp:Label>
             <br />
            <b> Reset your password</b>
            <br />
            <asp:Label ID="pwdReset" runat="server" Text="New Password: "></asp:Label>
            <br />
            <asp:TextBox ID="pwdRest" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="resetBtn" runat="server" Text="Submit" OnClick="resetBtn_Click" />

          </div>
    </form>
</body>
</html>
