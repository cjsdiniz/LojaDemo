<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginNew.aspx.cs" Inherits="ProjectoFinal.LoginNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title>Login V15</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
        <style type="text/css">
            .contact100-form-checkbox {
                width: 109px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">

	 <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign UP
					</span>
				</div>
			</div>
				<div class="login100-form validate-form">
					<asp:ValidationSummary ID="vlsLogin" runat="server" ForeColor="Red" DisplayMode="SingleParagraph" />
					<asp:Label ID="lblMensagem" runat="server" ForeColor="Red"></asp:Label>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Nome obritatório">
					    <asp:Label class="label-input100" ID="lblNome" runat="server" Text="Nome"></asp:Label>
					    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName" ErrorMessage="Indique um nome." ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbName" runat="server" class="input100" type="text" name="name" placeholder="Indique o utilizador"></asp:TextBox>
						<%--<span class="focus-input100"></span>--%>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Utilizador obrigatório.">
					    <asp:Label class="label-input100" ID="lblUsername" runat="server" Text="Utilizador"></asp:Label>
					    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="tbUsername" ErrorMessage="Utilizador inválido." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbUsername" runat="server" class="input100" type="text" name="username" placeholder="Indique o utilizador" TabIndex="1"></asp:TextBox>
						<%--<span class="focus-input100"></span>--%>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate = "Password é obrigatória.">
					    <asp:Label class="label-input100" ID="lblPassword" runat="server" Text="Password"></asp:Label>
					    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password inválida." ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                       <asp:TextBox ID="tbPassword" runat="server" class="input100" type="password" name="pass" placeholder="Indique a password" TabIndex="2"></asp:TextBox>
						<%--<span class="focus-input100"></span>--%>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate = "">
					    <asp:Label class="label-input100" ID="lblEmail" runat="server" Text="E-Mail"></asp:Label>
					    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email inválido." ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
					    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail" 
							ErrorMessage="Email mal formado." ForeColor="Red" 
							ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" TabIndex="3"></asp:RegularExpressionValidator>
                       <asp:TextBox ID="tbEmail" runat="server" class="input100" type="email" name="email" placeholder="Indique o email"></asp:TextBox>
	<%--					<span class="focus-input100">
                        </span>--%>
					</div>
                   <div class="wrap-input100 validate-input m-b-26" data-validate = "Perfil é obrigatório.">
						<asp:Label  class="label-input100" ID="lblPerfil" runat="server" Text="Perfil"></asp:Label>
                        <asp:DropDownList ID="ddlPerfil" runat="server" DataSourceID="sqldsCiteforma" DataTextField="nome_perfil" DataValueField="id_perfil" Width="213px" AppendDataBoundItems="True" Height="26px" TabIndex="4"></asp:DropDownList>
					    <asp:SqlDataSource ID="sqldsCiteforma" runat="server" ConnectionString="<%$ ConnectionStrings:citeformaCS %>" SelectCommand="SELECT * FROM [perfil]"></asp:SqlDataSource>
					</div>
					<div class="container-login100-form-btn">
                        <asp:Button class="login100-form-btn" ID="btnLoginNew" runat="server" Text="Adicionar" OnClick="btnLoginNew_Click" />
					</div>
			</div>
		</div>
	 </div>
	<!--===============================================================================================-->
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
		<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
		<script src="vendor/bootstrap/js/popper.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
		<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
		<script src="vendor/daterangepicker/moment.min.js"></script>
		<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
		<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
		<script src="js/main.js"></script>


    </form>
    <p>
        [citeforma]</p>
</body>
</html>
