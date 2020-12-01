<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProjectoFinal.index" %>

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
              <li class="nav-item">
                <a class="nav-link" href="#listas">Listas</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="#livros">Livros</a>
              </li>            
              <li class="nav-item">
                  <%--<a class="nav-link" href="#loja">Loja</a>--%>
                <a class="nav-link" href="Login.aspx">Loja</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#noticiasaominuto">Notícias</a>
              </li>     
              <li class="nav-item">
                <a class="nav-link" href="#blog">Blog</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="#contactos">Contactos</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="#newsletter">Newsletter</a>
              </li>
            </ul>
          </div>
        </nav> 
        <button class="close-button" id="close-button"><i class="lnr lnr-cross"></i></button>
      </div>      
  	<!-- Header -->

    <header id="video-area" data-stellar-background-ratio="0.5">    
        <%--<div id="block" data-vide-bg="video/video"></div>--%>
      <div id="block" data-vide-bg="video/buch6"></div>
      <div class="fixed-top">
          <div class="container">
            <div class="logo-menu">
              <a href="Login.aspx" class="logo"><span class="lnr lnr-book"></span>Comprar</a>
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
    <!-- Fim Header --> 


    <!-- Inicio secção Listas -->
    <section id="listas" class="section">
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">As nossas <span>Listas</span></h2>
          <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
          <p class="section-subtitle wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Listas de Autores, Editoras e Livros.</p>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="item-boxes wow fadeInDown" data-wow-delay="0.2s">
              <div class="icon">
                <i class="lnr lnr-pencil"></i>
              </div>
              <h4>Autores</h4>
              <p>Lista de Autores</p>
              <div>
                  <asp:GridView ID="grvAutores" align="center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDSAutores" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                      <Columns>
                          <asp:BoundField DataField="AutorNome" HeaderText="" SortExpression="AutorNome" />
                      </Columns>
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="sqlDSAutores" runat="server" ConnectionString="<%$ ConnectionStrings:citeformaCS %>" SelectCommand="sp_autores_nome" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="item-boxes wow fadeInDown" data-wow-delay="0.4s">
              <div class="icon">
                <i class="lnr lnr-cog"></i>
              </div>
              <h4>Editoras</h4>
              <p>Lista de Editoras</p>
              <div>
                  <asp:GridView ID="grvEditoras" align="center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDSEditoras" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                      <Columns>
                          <asp:BoundField DataField="EditoraNome" HeaderText="" SortExpression="EditoraNome" />
                      </Columns>
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="sqlDSEditoras" runat="server" ConnectionString="<%$ ConnectionStrings:citeformaCS %>" SelectCommand="sp_editoras_nome" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="item-boxes wow fadeInDown" data-wow-delay="0.6s">
              <div class="icon">
                <i class="lnr lnr-chart-bars"></i>
              </div>
              <h4>Livros por Autor</h4>
              <p>Lista de livros por Autor</p>
                <div>
                  <asp:GridView ID="grvPorAutor" align="center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDSporAutor" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="grvPorAutor_SelectedIndexChanged">
                      <Columns>
                          <asp:BoundField DataField="AutorNome" HeaderText="" SortExpression="AutorNome" />
                          <asp:BoundField DataField="LivroTitulo" HeaderText="" SortExpression="LivroTitulo" />
                      </Columns>
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>
                    <asp:SqlDataSource ID="sqlDSporAutor" runat="server" ConnectionString="<%$ ConnectionStrings:citeformaCS %>" SelectCommand="sp_livros_por_autor" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
              </div>


            </div>
                    <asp:Button ID="btnPDF" runat="server" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CausesValidation="False" OnClick="btnPDF_Click" Text="Exportar para PDF" />
          </div>
        </div>
      </div>
    </section>
    <!-- Fim secção Destaques -->


    <!-- Início secção Noticias -->
 <%--            <section id="noticias" class="section" data-stellar-background-ratio="0.2">
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s"><span> Notícias</span></h2>
          <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
          <p class="section-subtitle wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br/> nibh euismod tincidunt ut laoreet dolore magna.</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="content-left text-right wow fadeInLeft animated" data-wow-offset="10">
              <div class="box-item left">
                <span class="icon">
                  <i class="lnr lnr-rocket"></i>
                </span>
                <div class="text">
                  <h4>Aeroespacial</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
              </div>
              <div class="box-item left">
                <span class="icon">
                  <i class="lnr lnr-laptop-phone"></i>
                </span>
                <div class="text">
                  <h4>Informática</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
              </div>
              <div class="box-item left">
                <span class="icon">
                  <i class="lnr lnr-cog"></i>
                </span>
                <div class="text">
                  <h4>Mecânica</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="show-box wow fadeInDown animated" data-wow-offset="10">
              <img src="base/img/features/feature.jpg" alt=""/>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="content-right text-left wow fadeInRight animated" data-wow-offset="10">
              <div class="box-item right">
                <span class="icon">
                  <i class="lnr lnr-camera-video"></i>
                </span>
                <div class="text">
                  <h4>Video</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                </div>
              </div>
              <div class="box-item right">
                <span class="icon">
                  <i class="lnr lnr-magic-wand"></i>
                </span>
                <div class="text">
                  <h4>Ilusionismo</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
              </div>
              <div class="box-item right">
                <span class="icon">
                  <i class="lnr lnr-spell-check"></i>
                </span>
                <div class="text">
                  <h4>Correção ortográfica</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
 --%>
    <!-- Fim secção Notícias -->    
    <!-- Início secção  Video promo  -->
    <section class="video-promo section" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">
              <div class="video-promo-content text-center">
                <h2 class="wow zoomIn" data-wow-duration="1000ms" data-wow-delay="100ms">Vídeo</h2>
                <p class="wow zoomIn" data-wow-duration="1000ms" data-wow-delay="100ms">Fique a saber mais sobre nós</p>
                <a href="video/Globus.mp4" class="video-popup wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0.3s"><i class="lnr lnr-film-play"></i></a>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Fim secção Video Promo -->

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
            <!-- Livros Controller/Buttons Ends-->          

            <!-- Livros Recent Projects -->
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
            </div>
          </div>
        </div>
      </div>
      <!-- Container Ends -->
    </section>
    <!-- Fim secção Livros --> 

    <!-- Início secção Counter -->
    <div class="counters section" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row"> 
          <div class="col-sm-6 col-md-3 col-lg-3">
            <div class="wow fadeInUp" data-wow-delay=".1s">
              <div class="facts-item"> 
                <div class="icon">
                  <i class="lnr lnr-magic-wand"></i>
                </div>                
                <div class="fact-count">
                  <h3><span class="counter">100</span>%</h3>
                  <h4>Satisfação</h4>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3 col-lg-3">
            <div class="wow fadeInUp" data-wow-delay=".2s">
              <div class="facts-item">
                <div class="icon">
                  <i class="lnr lnr-coffee-cup"></i>
                </div>                
                <div class="fact-count">
                  <h3><span class="counter">700</span></h3>
                  <h4>Recomendações</h4>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3 col-lg-3">
            <div class="wow fadeInUp" data-wow-delay=".3s">
              <div class="facts-item">
                <div class="icon">
                  <i class="lnr lnr-user"></i>
                </div>                
                <div class="fact-count">
                  <h3><span class="counter">5403</span>+</h3>
                  <h4>Nº clientes</h4>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3 col-lg-3">
            <div class="wow fadeInUp" data-wow-delay=".4s">
              <div class="facts-item">
                <div class="icon">
                  <i class="lnr lnr-heart"></i>
                </div>                
                <div class="fact-count">
                  <h3><span class="counter">2640</span></h3>
                  <h4>Amigos no Facebook</h4>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim secção Counter -->

    <section id="noticiasaominuto" class="section" data-stellar-background-ratio="0.2">
                     <asp:Xml ID="Xml1" runat="server" TransformSource="~/ultimas_3_noticias.xslt"></asp:Xml>
    </section>

    <!-- secção Blog -->
    <section id="blog" class="section">

      <!-- Container Starts -->
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">Últimos <span>Blogs</span></h2>
          <hr class="lines wow zoomIn" data-wow-delay="0.3s"/>
          <p class="section-subtitle wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="0.3s">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br/> nibh euismod tincidunt ut laoreet dolore magna.</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper wow fadeInUp" data-wow-delay="0.3s">
              <div class="blog-item-img">
                <a href="single-post.html">
                  <img src="base/img/blog/img1.jpg" alt=""/>
                </a>                
              </div>
              <div class="blog-item-text"> 
                <h3>
                <a href="#">PC ou MAC ?</a>
                </h3>
                <div class="meta-tags">
                  <span class="date"><i class="lnr lnr-calendar-full"></i>Mar 23, 2020</span>
                  <span class="comments"><a href="#"><i class="lnr lnr-bubble"></i> 24 Comentários</a></span>
                </div>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... 
                </p>
                <a href="#" class="btn btn-common btn-rm">mais ...</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper wow fadeInUp" data-wow-delay="0.6s">
              <div class="blog-item-img">
                <a href="single-post.html">
                  <img src="base/img/blog/img2.jpg" alt=""/>
                </a>                
              </div>
              <div class="blog-item-text"> 
                <h3>
                  <a href="#">Vês mal ?</a>
                </h3>
                <div class="meta-tags">
                  <span class="date"><i class="lnr lnr-calendar-full"></i>Mar 29, 2020</span>
                  <span class="comments"><a href="#"><i class="lnr lnr-bubble"></i> 24 Comentários</a></span>
                </div>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... 
                </p>
                <a href="#" class="btn btn-common btn-rm">mais ...</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper wow fadeInUp" data-wow-delay="0.9s">
              <div class="blog-item-img">
                <a href="single-post.html">
                  <img src="base/img/blog/img3.jpg" alt=""/>
                </a>                
              </div>
              <div class="blog-item-text">    
                <h3>
                  <a href="#">Baza, vamos beber café</a>
                </h3>
                <div class="meta-tags">
                  <span class="date"><i class="lnr lnr-calendar-full"></i>21 Abr, 2020</span>
                  <span class="comments"><a href="#"><i class="lnr lnr-bubble"></i> 24 Comentários</a></span>
                </div>
                <p>
                 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... 
                </p>
                <a href="#" class="btn btn-common btn-rm">mais ...</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>
        </div>
      </div>
    </section>
    <!-- Fim secção blog -->

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
                      <%--<input type="text" class="form-control" id="name" name="name" placeholder="Nome"/>--%>
                      <input type="text"  runat="server" class="form-control" id="name" name="name" placeholder="Nome" required="" data-error="Escreve o teu nome"/>
                      <div class="help-block with-errors"></div>
                    </div>                                 
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <%--<input type="text" placeholder="Email" id="email" class="form-control" name="name"/>--%>
                      <input type="text"  runat="server" placeholder="Email" id="email" class="form-control" name="name" required="" data-error="Escreve o endereço de Email"/>
                      <div class="help-block with-errors"></div>
                    </div> 
                  </div>
                   <div class="col-md-12">
                    <div class="form-group">
                      <%--<input type="text" placeholder="Assunto" id="msg_subject" class="form-control"/>--%>
                      <input type="text"  runat="server" placeholder="Assunto" id="msg_subject" class="form-control" required="" data-error="Escreve o assunto"/>
                      <div class="help-block with-errors"></div>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group"> 
                      <%--<textarea class="form-control" placeholder="Mensagem" rows="11"></textarea>--%>
                      <textarea class="form-control" placeholder="Mensagem" rows="11" data-error="Escreve a tua mensagem" required=""></textarea>
                      <div class="help-block with-errors"></div>
                    </div>
                    <div class="submit-button text-center">
                      <button class="btn btn-common"  runat="server" id="submit" type="submit">Enviar mensagem</button>
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
