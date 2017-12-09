
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>
    </head>
    <body>
        <h1>Cadastro de usuários!</h1>
        <form action="Cadastrar" method="POST">
            <input type="email" name="email" placeholder="Email"><br>
            <input type="password" name="senha" placeholder="Senha"><br>
            <input type="text" name="nome" placeholder="Digite seu nome"><br>
            <input type="submit">
        </form>
    </body>
</html>
