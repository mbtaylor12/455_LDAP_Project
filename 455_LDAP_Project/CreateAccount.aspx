<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="_455_LDAP_Project.CreateAccount" %>

<!------ Create Account code for layout is used from this source: https://bootsnipp.com/snippets/featured/register-page ---------->
<!DOCTYPE html>
<html lang="en">
    <head runat="server"> 		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <style>
/* Create Account css code for layout is used from this source: https://bootsnipp.com/snippets/featured/register-page 
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */

body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background-color: #d3d3d3;
 	font-family: 'Oxygen', sans-serif;
    text-align: center;
}

.main{
 	margin-top: 70px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 330px;
    padding: 40px 40px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}
        </style>
        <script>
            function createUsername()
            {
                var firstnametext = document.getElementById("<%= firstname.ClientID %>").value;
                var lastnametext = document.getElementById("<%= lastname.ClientID %>").value;

                var username = firstnametext.charAt(0) + lastnametext;

                document.getElementById('<%= output.ClientID %>').innerHTML = username;
                document.getElementById('<%= output.ClientID %>').value = username;
            }
  function passwordMatchCheck()
       {
    //Store the password fields
    var confirm_password = document.getElementById('confirm');
	var password = document.getElementById('<%= password.ClientID %>');
    //output message 
    var output = document.getElementById('<%= error.ClientID %>');
    //Set the colors 
    var noMatch = "#FA8072";
	var Match = "#66CDAA";
    //Compare the values in the password field 
    if(password.value == confirm_password.value){
        confirm_password.style.backgroundColor = Match;
        output.style.color = Match;
        output.innerHTML = "Passwords Match.";
    }else{
        confirm_password.style.backgroundColor = noMatch;
        output.style.color = noMatch;
        output.innerHTML = "Passwords Do Not Match.";
       }
    }  
   /* Create Account code is used from this source: https://bootsnipp.com/snippets/featured/register-page 
    * that I modified to fit our site
    /*
        </script>
		<title>Create Account</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
                      
	               		<h1 class="title" >ITEC 455 Final Semester Project</h1>
                         <h2 class="title" >Michael Taylor & Sabrina Romano</h2>
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" id="form1" runat="server" method="post" action="#">
						 <h2 class="title" >Create Account</h2>
                         <asp:Label id="error" runat="server" ForeColor="#FF3300"></asp:Label>
                        <br /> 
						<div class="form-group">
							<label for="firstname" class="cols-sm-2 control-label">Your First Name: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                     <asp:TextBox ID="firstname" class="form-control" name="firstname" onchange="createUsername()" placeholder="Enter your Firstname" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="lastname" class="cols-sm-2 control-label">Your Lastname:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									  <asp:TextBox ID="lastname" class="form-control" name="lastname" onchange="createUsername()" placeholder="Enter your Lastname" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label"> Your Username is: </label>
							<div class="cols-sm-10">
								<div class="input-group">
								<asp:Label ID="output" runat="server"  class="cols-sm-2 control-label" Text=""></asp:Label>
								</div>
							</div>
						</div>
                        <div class="form-group">
							<label for="phone" class="cols-sm-2 control-label">Your Phone Number:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									  <asp:TextBox ID="phone" class="form-control" name="phone" placeholder="Enter your Phone Number" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									  <asp:TextBox type="password" ID="password" class="form-control" onchange="passwordMatchCheck()" placeholder="Enter your Password" name="password" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  onkeyup="passwordMatchCheck()"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<button type="button" runat="server" onServerClick="btnCreateAccount_Click" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						<div class="login-register">
				            <a href="Login.aspx">Login</a>
				         </div>
					</form>
				</div>
			</div>
		</div>

		
	</body>
</html>
