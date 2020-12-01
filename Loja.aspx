<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loja.aspx.cs" Inherits="ProjectoFinal.Loja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="keywords" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="Grayrids"/>
    <title>A Loja dos Livros</title>

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
<div class="menu-wrap">
        <nav class="menu navbar">
          <div class="icon-list navbar-collapse">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#video-area" style="height: 53px; width: 260px">Home</a>
              </li>
<%--              <li class="nav-item">
                <a class="nav-link" href="#destaques">Destaques</a>
              </li> --%>
      
              <li class="nav-item">
                <a class="nav-link" href="#livros">Livros</a>
              </li>           
               <li class="nav-item">
                <a class="nav-link" href="#">Carrinho de Compras</a>
              </li>  
              <li class="nav-item">
                <a class="nav-link" href="#carrinho">Blog</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="#contactos">Contactos</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="#newsletter">Newsletter</a>
              </li>              
              <li class="nav-item">
                <a class="nav-link" href="PwChange.aspx">Alterar password</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.aspx">Sair</a>
              </li>
            </ul>
          </div>
        </nav> 
        <button class="close-button" id="close-button"><i class="lnr lnr-cross"></i></button>
      </div>      
  	<!-- Header -->

    <header id="video-area" data-stellar-background-ratio="0.5">    
      <div id="block" data-vide-bg="video/Library.mp4"></div>
      <%--<div id="block" data-vide-bg="video/video"></div>--%>
      <div class="fixed-top">
          <div class="container">
            <div class="logo-menu">
                <a href="index.aspx" class="logo"><span class="lnr lnr-book"></span>Home</a>        
                <button class="menu-button" id="open-button" ><i class="lnr lnr-menu"></i></button>    
            </div>           
          </div>
      </div>
      <div class="overlay overlay-2"></div>      
      <div class="container">
        <div class="row justify-content-md-center">
<%--          <div class="contents text-left">
          </div>  --%>
          <div class="col-md-10">
            <div class="contents text-center">
            <h1 class="lead wow fadeIn" data-wow-duration="1000ms" data-wow-delay="400ms">Bem vindo <span>
                <asp:Label ID="lblUser" runat="server" Text="User"></asp:Label></span></h1>
              <h1 class="wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">A Loja do Livro</h1>
              <p class="lead  wow fadeIn" data-wow-duration="1000ms" data-wow-delay="400ms">Encontre aqui os livros que mais gosta.</p>
              <%--<a href="#" class="btn btn-common wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms"><i class="lnr lnr-download"></i> Download</a>--%>
            </div>
          </div>
        </div> 
      </div>      
    </header>
    <!-- Fim Header -->

    <!-- Início secção Livros -->
    <section id="livros" class="section">
      <!-- Início Container -->
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Os nossos <span>livros</span></h2>
          <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
          <p class="section-subtitle wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">Encontre aqui a maior variedade de livros no mercado.</p>
        </div>
        <div class="row">          
          <div class="col-md-12">
            <!-- Portfolio Controller/Buttons -->
            <div class="controls text-center wow fadeInUp" data-wow-delay=".6s">
              <a class="control mixitup-control-active btn btn-common" data-filter="all">
                Todos 
              </a>
              <a class="control btn btn-common" data-filter=".romance">
                Romance 
              </a>
              <a class="control btn btn-common" data-filter=".prosa">
                Prosa
              </a>
              <a class="control btn btn-common" data-filter=".poesia">
                Poesia 
              </a>
            </div>
            <!-- Portfolio Controller/Buttons Ends-->          

            <!-- Portfolio Recent Projects -->
            <div id="portfolio" class="row wow fadeInUp" data-wow-delay="0.8s">
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance historico">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro1.jpg">
                      <img src="images/Livros/Livro1.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro2.jpg">
                      <img src="images/Livros/Livro2.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro3.jpg">
                      <img src="images/Livros/Livro3.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance prosa">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro4.jpg">
                      <img src="images/Livros/Livro4.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix poesia prosa">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro5.jpg">
                      <img src="images/Livros/Livro5.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro6.jpg">
                      <img src="images/Livros/Livro6.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>

              <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro7.jpg">
                      <img src="images/Livros/Livro7.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>
            <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro8.jpg">
                      <img src="images/Livros/Livro8.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>

            <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro9.jpg">
                      <img src="images/Livros/Livro9.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>

            <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 mix romance">
                <div class="portfolio-item">
                  <div class="shot-item">
                    <a class="overlay lightbox" href="images/Livros/Livro10.jpg">
                      <img src="images/Livros/Livro10.jpg" alt="" />  
                      <i class="lnr lnr-plus-circle item-icon"></i>
                    </a>
                  </div>               
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
      <!-- Container Ends -->
    </section>
    <!-- Fim secção Livros --> 


    <!-- Início secção Contactos -->
    <section id="contactos" class="section">
      <div class="container">
        <div class="row justify-content-md-center">          
          <div class="col-md-9 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">            
            <div class="contact-block">
              <div class="section-header">          
                <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Contactos</h2>
                <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
              </div>
              <div id="contactForm"> 
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input type="text" class="form-control" id="name" name="name" placeholder="Nome" required="" data-error="Escreve o teu nome"/>
                      <div class="help-block with-errors"></div>
                    </div>                                 
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input type="text" placeholder="Email" id="email" class="form-control" name="name" required="" data-error="Escreve o endereço de Email"/>
                      <div class="help-block with-errors"></div>
                    </div> 
                  </div>
                   <div class="col-md-12">
                    <div class="form-group">
                      <input type="text" placeholder="Assunto" id="msg_subject" class="form-control" required="" data-error="Escreve o assunto"/>
                      <div class="help-block with-errors"></div>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group"> 
                      <textarea class="form-control" placeholder="Mensagem" rows="11" data-error="Escreve a tua mensagem" required=""></textarea>
                      <div class="help-block with-errors"></div>
                    </div>
                    <div class="submit-button text-center">
                      <button class="btn btn-common" id="submit" type="submit">Enviar mensagem</button>
                      <div id="msgSubmit" class="h3 text-center hidden"></div> 
                      <div class="clearfix"></div> 
                    </div>
                  </div>
                </div>            
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Fim secção Contactos -->

    <!-- Início secção Subscrição -->
    <div id="newsletter" class="section">
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Subscrever <span>Newsletter</span></h2>
          <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
          <p class="section-subtitle wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Faça a subscrição para receber as últimas informações.</p>
        </div>
        <div class="row justify-content-md-center">
          <div class="col-md-8">
              <div class="text-center form-inline wow fadeInUp" data-wow-delay="0.3s">
                <input class="mb-20 form-control" name="email" placeholder="Email"/>
                <button class="sub_btn">subscrever</button>
              </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim secção Subscrição -->

    <!-- Inicio secção Footer -->
    <footer>          
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="social-icons wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">
              <ul>
                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                <li class="dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              </ul>
            </div>
            <div class="site-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0.3s">
              <p>&copy; 2020 - Powered by Dinix - <a href="#">A Loja dos Livros</a></p>
            </div>  
          </div>
        </div>
      </div>
    </footer>
    <!-- Fim secção Footer --> 

    <!-- Ir para topo -->
    <a href="#" class="back-to-top">
      <i class="lnr lnr-arrow-up"></i>
    </a>

    <div id="loader">
      <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
      </div>
    </div>    

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="base/js/jquery-min.js"></script>
    <script src="base/js/tether.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/classie.js"></script>
    <script src="base/js/mixitup.min.js"></script>
    <script src="base/js/nivo-lightbox.js"></script>
    <script src="base/js/owl.carousel.min.js"></script>    
    <script src="base/js/jquery.stellar.min.js"></script>    
    <script src="base/js/jquery.nav.js"></script>    
    <script src="base/js/smooth-scroll.js"></script>    
    <script src="base/js/smooth-on-scroll.js"></script>    
    <script src="base/js/wow.js"></script>    
    <script src="base/js/menu.js"></script>
    <script src="base/js/jquery.vide.js"></script>
    <script src="base/js/jquery.counterup.min.js"></script>    
    <script src="base/js/jquery.magnific-popup.min.js"></script>    
    <script src="base/js/waypoints.min.js"></script>    
    <script src="base/js/form-validator.min.js"></script>
    <script src="base/js/contact-form-script.js"></script>     
    <script src="base/js/main.js"></script>
    

    </form>
</body>
</html>
