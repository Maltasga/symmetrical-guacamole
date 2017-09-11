<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="url"></c:set>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KK Coolwear</title>

        <link href="${url}/content/libs/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${url}/content/kkcoolwear.sitestyle.css" rel="stylesheet" type="text/css"/>
        <script src="${url}/content/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${url}/content/libs/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>   

        <div class="row">
            <div class="col-lg-9 col-md-6">                
<!--                <div class="row">-->
                    <div class="flex-start margin-left">
                        <div></div>
                        <span class="img-logo"></span>
<!--                        <img class="img-responsive" src="${url}/content/imagens/logo-lg.png" alt=""/>-->
                    </div>                   
<!--                </div>-->
<!--                <div class="row">-->
                    <div class="flex-start margin-left pesquisa">
                        <div class="borda-inferior">
                            <i class="glyphicon glyphicon-search icon-search"></i>  
                        </div>
                        <input type="text" class="txtPesquisa" placeholder="O que você procura?" />   
                    </div>
<!--                </div>-->
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="row">
                    <div class="flex-end contaner-icons">
                        <div class="col-lg-4 col-md-2">
                            <span class="glyphicon glyphicon-list-alt flex-center icons"></span>
                            <div class="flex-center">   
                                <span class="font-text">Pedidos</span> 
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-2">
                            <span class="glyphicon glyphicon-user flex-center icons"></span>
                            <div class="flex-center">
                                <span class="font-text">Minha conta</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-2">
                            <span class="glyphicon glyphicon-shopping-cart icons"></span>                    
                            <span class="badge">0</span>
                        </div>  
                    </div>
                </div>
            </div>                
        </div>
        <div class="container"> 
            <c:forEach items="${produtos}" var="item">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="produto">
                        <center>
                            <img class="img-responsive" src="${url}/content/imagens/${item.imagem.nome}" alt="${item.imagem.alt}" />
                        </center>
                        <hr />
                        <p class="nome">${item.nome}</p>
                        <p class="descricao">${item.descricao}</p>
                        <p class="valor"><fmt:formatNumber value="${item.valor}" currencySymbol="R$ " type="currency"></fmt:formatNumber></p>
                        <div class="btn-comprar"><a href="detalhe?id=${item.id}">
                                <button type="button" class="btn btn-info">
                                    Detalhes
                                </button></a>
                        </div>
                    </div>
                </div>
            </c:forEach>   
        </div>
    </body>
</html>
