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
        <div class="container">  
            <div class="row">
                <!-- CABEÇALHO PEQUENO -->
                <div class="header-sm col-xs-2">
                    <img class="img-responsive" src="${url}/content/imagens/logo-sm.png" alt="Logotipo kk coolwear" />
                </div>
                <div class="header-sm col-xs-5">
                    <input type="text" class="form-control" />
                </div>
                <div class="header-sm col-xs-5 clearfix">
                    <div class="header-sm icone"><span class="glyphicon glyphicon-list-alt glyphicon-large"></span></div>
                    <div class="header-sm icone"><span class="glyphicon glyphicon-shopping-cart glyphicon-large"></span></div>
                    <div class="header-sm icone"><span class="glyphicon glyphicon-user glyphicon-large"></span></div>
                </div>
                <!-- FIM CABEÇALHO PEQUENO -->

                <!-- CABEÇALHO MEDIO/GRANDE -->
                <div class="header-lg col-lg-3"></div>
                <div class="header-lg col-md-6 col-lg-6">                
                    <div class="row">
                        <img class="img-responsive" src="${url}/content/imagens/logo-lg.png" alt=""/>
                    </div>
                    <div class="row">
                        <input type="text" class="form-control" />
                    </div>
                </div>
                <div class="header-lg col-lg-3">
                    <div class="row">
                        <div class="col-lg-6">
                            <span class="glyphicon glyphicon-list-alt glyphicon-large"></span>
                            <br />
                            <span>Pedidos</span>
                        </div>
                        <div class="col-md-4 col-lg-6">
                            <span class="glyphicon glyphicon-user glyphicon-large"></span>
                            <br />
                            <span>Minha conta</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-lg-6">&nbsp;</div>
                        <div class="col-lg-6">
                            <span class="glyphicon glyphicon-shopping-cart glyphicon-large"></span>                    
                            <span class="badge">0</span>
                        </div>
                    </div>
                </div>                
                <!-- FIM CABEÇALHO MEDIO/GRANDE -->

            </div>

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
                            <div class="btn-comprar">
                                <button type="button" class="btn btn-info">Comprar</button>
                            </div>
                        </div>
                    </div>
            </c:forEach>   
        </div>
    </body>
</html>
