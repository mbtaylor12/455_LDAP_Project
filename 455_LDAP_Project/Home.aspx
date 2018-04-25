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
            <asp:Label ID="username"  runat="server"></asp:Label>
            <asp:Label ID="email"  runat="server"></asp:Label>
            <asp:Label ID="firstname"  runat="server"></asp:Label>
            <asp:Label ID="lastname"  runat="server"></asp:Label>
            <asp:Label ID="phone"  runat="server"></asp:Label>
            


        </div>
    </form>
</body>
</html>
