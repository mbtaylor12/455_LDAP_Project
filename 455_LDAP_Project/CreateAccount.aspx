<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="_455_LDAP_Project.CreateAccount" %>

<!------ Create Account code for layout is used from this source: https://bootsnipp.com/snippets/featured/register-page ---------->
<!DOCTYPE html>
<html lang="en">
    <head runat="server"> 
       
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		
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
                         <asp:Label ID="error" runat="server" ForeColor="#FF3300"></asp:Label>
						<div class="form-group">
							<label for="firstname" class="cols-sm-2 control-label">Your First Name: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                     <asp:TextBox ID="firstname" lass="form-control" name="firstname" placeholder="Enter your Firstname" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="lastname" class="cols-sm-2 control-label">Your Lastname:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									  <asp:TextBox ID="lastname" lass="form-control" name="lastname" placeholder="Enter your Lastname" runat="server"></asp:TextBox>
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
									  <asp:TextBox ID="phone" lass="form-control" name="phone" placeholder="Enter your Phone Number" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									  <asp:TextBox ID="password" lass="form-control" name="password" runat="server"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
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

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	</body>
</html>
