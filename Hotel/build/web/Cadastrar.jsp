<!DOCTYPE html>
<html lang="pt-br">

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
              <a class="navbar-brand" href="index.html" rel="tooltip" title="Hotel Mira-Sol" data-placement="bottom">
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
    <div class="page-header" filter-color="orange">
        <div class="page-header-image" style="background-image:url(assets/img/praia2.jpg)"></div>
        <div class="container">
            <%
                if(session.getAttribute("error") != null) { %>
                    <p class="alert alert-danger"><%=session.getAttribute("error")%></p>
            <%
                session.removeAttribute("error");
               }
            %>
            <div class="col-md-4 content-center">
                <div class="card card-login card-plain">
                    <form class="form" method="POST" action="Cadastrar">
                        <div class="header header-primary text-center">
                            <div class="logo-container">
                                <img src="../assets/img/now-logo.png" alt="">
                            </div>
                        </div>
                        <div class="content">
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input type="text" name="nome" class="form-control" placeholder="Nome Completo">
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons business_badge"></i>
                                </span>
                                <input type="text" name="cpf" placeholder="CPF" class="form-control" />
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons ui-1_email-85"></i>
                                </span>
                                <input type="text" name="email" placeholder="E-mail" class="form-control" />
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons objects_key-25"></i>
                                </span>
                                <input type="password" name="senha" placeholder="Senha" class="form-control" />
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons objects_key-25"></i>
                                </span>
                                <input type="password" name="confirmSenha" placeholder="Confirmação de senha" class="form-control" />
                            </div>
                        </div>
                        <div class="footer text-center">
                            <input type="submit" class="btn btn-primary btn-round btn-lg btn-block" value="Cadastrar    ">
                        </div>
                    </form>
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