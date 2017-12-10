<!DOCTYPE html>
<%@page import="Models.Usuario"%>
<html lang="pt-br">
<% 
    if(request.getParameter("security") == null) {
        response.sendRedirect("index.jsp");
    }
    Usuario user = (Usuario)session.getAttribute("user");
%>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/sol.png">
    <link rel="icon" type="image/png" href="assets/img/sol.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Hotel Mira-Sol</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https:                      Usuario user = (Usuario)session.getAttribute("user");//fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body class="login-page sidebar-collapse">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
      <div class="container">
          <div class="navbar-translate">
              <a class="navbar-brand" href="perfil.html" rel="tooltip" title="Hotel Mira-Sol" data-placement="bottom">
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
                <a class="nav-link" href="" onclick="scrollToLogin()">
                  <i class="now-ui-icons ui-1_check" aria-hidden="true"></i>
                  <p>Realizar Reserva</p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#cancelar" onclick="scrollToLogin()">
                  <i class="now-ui-icons ui-1_simple-remove" aria-hidden="true"></i>
                  <p>Cancelar Reserva</p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Sair.jsp" onclick="">
                  <i class="fa fa-sign-out" aria-hidden="true"></i>
                  <p>Sair</p>
                </a>
              </li>
            </ul>
          </div>
      </div>
  </nav>
  <!-- End Navbar -->
    <div class="page-header" filter-color="orange">
        <div class="page-header-image" style="background-image:url(assets/img/curtir1.jpg)"></div>
        <div class="container">
            <div class="col-md-4 content-center">
              <div class="text-left"><h2 class="title">Olá, <%=user.getNome()%>!</h2>
              <h5>Bem vindo a sua página pessoal em nosso site.</h5>
              <h5>Aqui você pode obter maiores informações sobre o hotel, realizar reservas, entrar em contato direto pelo email especial de clientes, acesso a promoções exclusivas e participar do nosso clube de benefícios ganhando pontos de fidelidade.</h5>
              </div>
            </div>
        </div>
    </div>




    <div class="wrapper">
        <div class="section section-about-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 ml-auto mr-auto text-center">
                        <h2 class="title">Faça uma reserva já!</h2>
                        <h5 class="description">Venha fazer parte do seleto grupo de pessoas que já tiveram a experiência de se hospedar no Hotel Mira-Sol.</h5>
                        <a href="#button" class="btn btn-primary btn-round btn-lg"><i class="now-ui-icons ui-1_check" aria-hidden="true"></i> Realizar Reserva</a>
                    </div>
                </div>
                <div class="separator separator-primary"></div>
                <div class="section-story-overview">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="image-container image-left" style="background-image: url('assets/img/feliz1.jpg')">
                                <!-- First image on the left side -->
                                <p class="blockquote blockquote-primary">"Experiência incrível, pois além da ótima infraestrutura e do excelente serviço prestado, a beleza natural é inexplicável. Com certeza, em breve, voltarei!"
                                    <br>
                                    <br>
                                    <small>-Felipe Santos</small>
                                    <br>Cliente
                                </p>
                            </div>
                            <!-- Second image on the left side of the article -->
                            <div class="image-container" style="background-image: url('assets/img/feliz2.jpg')"></div>
                        </div>
                        <div class="col-md-5">
                            <!-- First image on the right side, above the article -->
                            <div class="image-container image-right" style="background-image: url('assets/img/feliz3.jpg')"></div>
                            <h3>Clube de Benefícios</h3>
                            <p>Quanto mais reservas você fizer, mais pontos você ganha. Esses pontos podem ser trocados por produtos em nossas lojas a até uma férias com tudo pago.</p>
                            <p>- 100 pontos por reserva diária.</p>
                            <p>- 60 pontos por passeios feitos conosco.</p>
                            <p>- 30 pontos por compras acima de R$100,00 em nossas lojas.</p>
                            <p>- 5 pontos por interação em nossas mídias sociais.</p>
                            <p>Seus Pontos podem ser trocados no momento que você atingir um dos níveis de pontuação:</p>
                            <p>- 1000 pontos = R$100,00 em compras em nossas lojas</p>
                            <p>- 5000 pontos = R$1000,00 em compras em nossas lojas</p>
                            <p>- 10000 pontos = R$3000,00 em compras em nossas lojas</p>
                            <p>- 50000 pontos = Uma férias com tudo pago*</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section section-team text-center">
            <div class="container">
                <h2 class="title">Promoções do Mês</h2>
                <div class="team">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="team-player">
                                <img src="assets/img/miniquarto2.jpg" alt="Thumbnail Image" class="rounded-circle img-fluid img-raised">
                                <h4 class="title">Quarto Individual</h4>
                                <p class="category text-primary">Nível Básico</p>
                                <p class="description">Diárias:</p>
                                <p class="description" style="text-decoration: line-through;">De: R$ 80,00</p>
                                <p class="description">Por: R$ 50,00</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-player">
                                <img src="assets/img/miniquarto5.jpg" alt="Thumbnail Image" class="rounded-circle img-fluid img-raised">
                                <h4 class="title">Quarto Família</h4>
                                <p class="category text-primary">Nível Intermediário</p>
                                <p class="description">Diárias:</p>
                                <p class="description" style="text-decoration: line-through;">De: R$ 230,00</p>
                                <p class="description">Por: R$ 190,00</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-player">
                                <img src="assets/img/miniquarto7.jpg" alt="Thumbnail Image" class="rounded-circle img-fluid img-raised">
                                <h4 class="title">Quarto Família</h4>
                                <p class="category text-primary">Nível Luxuoso</p>
                                <p class="description">Diárias:</p>
                                <p class="description" style="text-decoration: line-through;">De: R$ 890,00</p>
                                <p class="description">Por: R$ 790,00</p>
                            </div>
                        </div>
                        <div class="col-md-8 ml-auto mr-auto text-center">
                            <h4 class="title">Não perca tempo, faça agora uma reserva!</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto text-center">
                    <h2 class="title" id="cancelar">Cancelamento de Reservas</h2>
                    <a href="#button" class="btn btn-primary btn-round btn-lg"><i class="now-ui-icons ui-1_simple-remove" aria-hidden="true"></i> Cancelar Reserva</a>
                </div>
            </div>
          </div>
        <div class="section section-contact-us text-center">
            <div class="container">
                <h2 class="title">Está com alguma dúvida?</h2>
                <p class="description">Sua satisfação é extremamente importante para nós.</p>
                <div class="row">
                    <div class="col-lg-6 text-center col-md-8 ml-auto mr-auto">
                        <div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="fa fa-pencil" aria-hidden="true"></i>
                            </span>
                            <textarea class="form-control" name="name" rows="4" cols="80" placeholder="Escreva sua mensagem..."></textarea>
                        </div>
                        <div class="send-button">
                            <a href="#pablo" class="btn btn-primary btn-round btn-block btn-lg"><i class="now-ui-icons ui-1_send"></i> Enviar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
              </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

</html>