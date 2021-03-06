
<% 
    if(request.getParameter("security") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/sol.png">
    <link rel="icon" type="image/png" href="assets/img/sol.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Hotel Mira-Sol</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="./assets/css/demo.css" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="#pagina_principal" onclick="scrollToPaginaPrincipal()" rel="tooltip" title="Hotel Mira-Sol" data-placement="bottom">
                    <img src="assets/img/sol.png" class="logonav"> Hotel Mira-Sol
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="./assets/img/blurred-image-1.jpg">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#login" onclick="scrollToLogin()">
                          <i class="fa fa-user-o" aria-hidden="true"></i>
                          <p>Login</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Cadastrar.jsp">
                          <i class="fa fa-sign-in" aria-hidden="true"></i>
                          <p>Cadastre-se</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Siga-nos no Twitter" data-placement="bottom" href="https://twitter.com" target="_blank">
                            <i class="fa fa-twitter"></i>
                            <p class="d-lg-none d-xl-none">Twitter</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Curta-nos no Facebook" data-placement="bottom" href="https://www.facebook.com" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                            <p class="d-lg-none d-xl-none">Facebook</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Siga-nos no Instagram" data-placement="bottom" href="https://www.instagram.com" target="_blank">
                            <i class="fa fa-instagram"></i>
                            <p class="d-lg-none d-xl-none">Instagram</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="wrapper pagina_principal" id="pagina_principal">
        <div class="page-header clear-filter" filter-color="orange">
            <div class="page-header-image" data-parallax="true" style="background-image: url('assets/img/praia.jpg');">
            </div>
            <div class="container">
                <div class="content-center brand">
                    <img class="n-logo" src="./assets/img/sol.png" alt="">
                    <h1 class="h1-seo">Hotel Mira-Sol</h1>
                    <h3>Feito para voc�!</h3>
                    <h5>Viva, sinta, ame, venha aproveitar nossas instala��es e as belezas naturais que nos cercam!</h5>
                </div>
            </div>
        </div>
        <div class="main">
          <div class="section" id="carousel">
            <div class="row justify-content-center">
              <div class="col-8">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                      <img class="d-block" src="assets/img/praia11.jpg" alt="First slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Pontal do Atalaia, Arraial do Cabo</h5>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block" src="assets/img/praia12.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Prainha, Arraial do Cabo</h5>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block" src="assets/img/praia9.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Praia Grande, Arraial do Cabo</h5>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block" src="assets/img/area2.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Sacada - Hotel Mira-Sol, Arraial do Cabo</h5>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block" src="assets/img/sacada2.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>�rea de Lazer - Hotel Mira-Sol, Arraial do Cabo</h5>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block" src="assets/img/piscina4.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Piscina - Hotel Mira-Sol, Arraial do Cabo</h5>
                      </div>
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <i class="now-ui-icons arrows-1_minimal-left"></i>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <i class="now-ui-icons arrows-1_minimal-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="section section-signup login" id="login" style="background-image: url('assets/img/hotel2.jpg'); background-size: cover; background-position: top center; min-height: 908px;">
          <div class="container">
            <div class="row">
              <div class="card card-signup" data-background-color="orange">
                <form class="form" method="POST" action="Login">
                  <div class="header text-center">
                    <h4 class="title title-up">Login</h4>
                    <div class="social-line">
                      <a href="#pablo" class="btn btn-neutral btn-facebook btn-icon btn-round">
                        <i class="fa fa-facebook-square"></i>
                      </a>
                      <a href="#pablo" class="btn btn-neutral btn-twitter btn-icon btn-lg btn-round">
                        <i class="fa fa-twitter"></i>
                      </a>
                      <a href="#pablo" class="btn btn-neutral btn-google btn-icon btn-round">
                        <i class="fa fa-google-plus"></i>
                      </a>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="input-group form-group-no-border">
                      <span class="input-group-addon">
                        <i class="now-ui-icons ui-1_email-85"></i>
                      </span>
                        <input type="text" name="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="input-group form-group-no-border">
                      <span class="input-group-addon">
                        <i class="now-ui-icons objects_key-25" aria-hidden="true"></i>
                      </span>
                      <input type="password" name="password" class="form-control" placeholder="Senha">
                    </div>
                  </div>
                  <div class="footer text-center">
                      <input type="submit" class="btn btn-neutral btn-round btn-lg" value="Login">
                  </div>
                </form>
              </div>
            </div>
            <div class="col text-center">
                <a href="Cadastrar.jsp" class="btn btn-neutral btn-round btn-lg">Cadastre-se</a>
            </div>
          </div>
        </div>
            <div class="section section-download" id="#download-section" data-background-color="black">
                <div class="container">
                    <br>
                    <br>
                    <br>
                    <div class="row text-center mt-5">
                        <div class="col-md-8 ml-auto mr-auto">
                            <h2>Venha nos visitar!</h2>
                            <h4 class="description">Estamos localizados na AV. Beira Mar, 1541 - Arraial do Cabo/RJ</h4>
                            <h5 class="description">Maiores informa��es pelo telefone (22)9999-9999 ou atrav�s de nossas redes sociais.</h5>
                            <h5 class="description">O Hotel Mira-Sol aguarda sua visita!</h5>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row justify-content-md-center sharing-area text-center">
                        <div class="text-center col-md-12 col-lg-8">
                            <h3>Nos siga nas redes sociais</h3>
                        </div>
                        <div class="text-center col-md-12 col-lg-8">
                            <a target="_blank" href="https://www.twitter.com" class="btn btn-neutral btn-icon btn-twitter btn-round btn-lg" rel="tooltip">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a target="_blank" href="https://www.facebook.com" class="btn btn-neutral btn-icon btn-facebook btn-round btn-lg" rel="tooltip">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                            <a target="_blank" href="https://www.instagram.com" class="btn btn-neutral btn-icon btn-instagram btn-round btn-lg" rel="tooltip">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();
    });

    function scrollToLogin() {

        if ($('.login').length != 0) {
            $("html, body").animate({
                scrollTop: $('.login').offset().top
            }, 1000);
        }
    }

    function scrollToPaginaPrincipal() {

        if ($('.pagina_principal').length != 0) {
            $("html, body").animate({
                scrollTop: $('.pagina_principal').offset().top
            }, 1000);
        }
    }
</script>

</html>
