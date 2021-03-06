<%-- 
    Document   : minhaContaGerente
    Created on : 24/05/2021, 23:28:38
    Author     : THAISCRISTINADASILVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.JavaBeans"%>
<% 
String nome = request.getAttribute("usuario").toString();
%>

<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      
    <!--Iconic CSS-->
      
    <link href="iconic/font/css/open-iconic-bootstrap.css"  rel="stylesheet">
      
    <!--Fontwaesome CSS-->
    <link rel="stylesheet" href="fontawesome/css/all.css">

    
    <title>Minha Conta</title>
      
  </head> 
  <body style="background-image: url(img/papel-parede.png)">
    
    <header><!--Cabeçalho Inicio-->
        
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger"><!--Navegação Inicio-->
            <div>
                <a href=""><img src="img/logo.png" width=100px></a>
            </div><!--Logo-->
            <button class="navbar-toggler" data-toggle="collapse" data-target="#nav-target">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <!--Navegação-->
            <div class="collapse navbar-collapse" id="nav-target">
                
                <ul class="navbar-nav ml-auto">
                    <li class="navbar-item">
                        <a class="nav-link" href="index.html">Pagina Inicial</a>
                    </li>
                    <li class="navbar-item">
                        <a class="nav-link"  href="cardapio.html">Cardápio</a>
                    </li>
                    <li class="navbar-item">
                        <a class="nav-link" href="login.html">Login</a>
                    </li>
                    <li class="navbar-item">
                        <a class="nav-link" href="#">Cadastro</a>
                    </li>
                    <li class="navbar-item">
                        <a class="nav-link" href="#">Ajuda</a>
                    </li>

                </ul>
            </div>
        </nav> <!--Navegação Final-->
        </header><!--Cabeçalho Final-->
        
       <div class="container bg-dark p-3 mt-5 rounded text-white w-50">
            <div class="row">
                <div class="col-12 col-md-9 col-e m-auto">
                    <label>GERENTE: <%=nome%></label>
                    <br/><br/><br/> 
                    <div>
                        <a href="estatisticas.html" class="btn btn-danger" type="submit"><img src="img/statistic.png" width=100px>ESTATÍSTICAS</a>
                        <a href="#" class="btn btn-danger" type="submit"><img src="img/user.png" width="100px">PERFIL</a>
                    </div>
                    <br/>
                    <div>
                        <a href="#" class="btn btn-danger" type="submit"><img src="img/promotion.png" width="100px">PROMOÇÃO</a>
                        <a href="#" class="btn btn-danger" type="submit"><img src="img/pizza.png" width="100px">PRODUTOS</a>
                    </div>
                </div>
            </div>
        </div>
        
      <footer class="bg-danger text-center fixed-bottom">
            <div>
                <div>
                    <ul class="nav justify-content-center">
                        <li class="nav-item">
                            <a class="nav-link text-light " href="">Restaurantes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light " href="">Pesquisa de Satisfação</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="">Termos de Uso</a>
                        </li>
                    </ul>
                </div>
                <span class="text-light">© Todos os Direitos Reservados</span>
            </div>
        </footer>
     

      
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body> 
</html>
