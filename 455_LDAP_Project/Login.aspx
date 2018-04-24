<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_455_LDAP_Project.Login" %>

<!------ Login code is used from this source: https://bootsnipp.com/snippets/featured/register-page ---------->
<!DOCTYPE html>
<html lang="en">
    <head runat="server">        
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <style>
/* Login css code for layout is used from this source: https://bootsnipp.com/snippets/featured/register-page 
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
		<title>Login Page</title>

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
					<form class="form-horizontal" id="form2" runat="server" method="post" action="#">
                          <asp:Label ID="error" runat="server" ForeColor="#FF3300"></asp:Label>
						 <h2 class="title" >Login</h2>
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Your Username: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                      <asp:TextBox ID="username" runat="server" class="form-control" name="username"  placeholder="Enter your Username"></asp:TextBox>
								</div>
							</div>
						</div>
                        
						
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password: </label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <asp:TextBox  type="password" ID="password" runat="server" class="form-control" name="password"  placeholder="Enter your Password"></asp:TextBox>
								</div>
							</div>
						</div>


						<div class="form-group ">
							<button type="button" runat="server" onServerClick="btnLogin_Click" class="btn btn-primary btn-lg btn-block login-button">Login</button>
						</div>
						<div class="login-register">
				            <a href="CreateAccount.aspx">Create Account</a>
				         </div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
