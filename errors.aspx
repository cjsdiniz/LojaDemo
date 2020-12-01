<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="errors.aspx.cs" Inherits="ProjectoFinal.erros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Required meta tags -->
    <meta charset="utf-8"/>

    <!-- Template by Colorlib -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Erro 404 HTML - A Loja dos Livros - Template by Colorlib</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700" rel="stylesheet">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="errors/css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    <!-- general -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="keywords" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="Grayrids"/>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="base/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="base/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="base/css/line-icons.css"/>
    <link rel="stylesheet" href="base/css/owl.carousel.css"/>
    <link rel="stylesheet" href="base/css/owl.theme.css"/>
    <link rel="stylesheet" href="base/css/nivo-lightbox.css"/>
    <link rel="stylesheet" href="base/css/magnific-popup.css"/>
    <link rel="stylesheet" href="base/css/animate.css"/>
    <link rel="stylesheet" href="base/css/menu_sideslide.css"/>
    <link rel="stylesheet" href="base/css/main.css"/>    
    <link rel="stylesheet" href="base/css/responsive.css"/>
</head>
<body>
    <form id="form1" runat="server">
<!-- Header -->

    <header id="video-area" data-stellar-background-ratio="0.5">    
      <%--<div id="block" data-vide-bg="video/video"></div>--%>
      <%--<div id="block" data-vide-bg="video/buch6.mp4"></div>--%>
      <%--<div id="block" align="center"><img src="images/bg-s.jpg" /> </div>--%>
      <div class="fixed-top">
          <div class="container">
            <div class="logo-menu">
              <a href="index.aspx" class="logo"><span class="lnr lnr-book"></span>A Loja dos Livros</a>
              <button class="menu-button" id="open-button" ><i class="lnr lnr-menu"></i></button>    
            </div>           
          </div>
      </div>
      <div class="overlay overlay-2"></div>      
      <div class="container">
        <div class="row justify-content-md-center">
          <div class="col-md-10">
            <div class="contents text-center">
              <h1 class="wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">A Loja dos Livros</h1>
              <p class="lead  wow fadeIn" data-wow-duration="1000ms" data-wow-delay="400ms">Encontre aqui os livros que mais gosta.</p>
              <%--<a href="#" class="btn btn-common wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms"><i class="lnr lnr-download"></i> Download</a>--%>
            </div>
          </div>
        </div> 
      </div>      
    </header>
        <div id="notfound">
	        <div class="notfound">
		        <div class="notfound-404">
		            <h1>404</h1>
		        </div>
		        <h2>Oops, The Page you are looking for can't be found!</h2>
		        <form class="notfound-search">
		            <input type="text" placeholder="Search..."/>
		            <button type="button">Search</button>
		        </form>
		        <a href="#"><span class="arrow"></span>Voltar</a>
	        </div>
        </div>
    </form>

    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</body>
</html>
