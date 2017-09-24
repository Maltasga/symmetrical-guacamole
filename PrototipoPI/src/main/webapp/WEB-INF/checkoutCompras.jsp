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
        <link href="${url}/content/kkcoolwear.sitestyle.detalhe.css" rel="stylesheet" type="text/css"/>
        <script src="${url}/content/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${url}/content/libs/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="${url}/content/kkcoolwear.sitestyle.css" rel="stylesheet" type="text/css"/>
        <script src="${url}/content/js/Carrinho.js" type="text/javascript"></script>

    </head>
    <body>
        <!-- MENU -->
        <%@include file="../WEB-INF/cabecalho.jsp" %>
        <!-- MENU -->
        <div class="container fundo">
            <h1>Carrinho de compras</h1>
            <div class="row">
                <div class="table-responsive teste">
                    <table class="table table-striped tabela-pedidos" style="width:100%">
                        <thead>
                        <th>ITEN(S) COLOCADO(S) NA CARRINHO</th>
                        <th>PREÇO UNITÁRIO</th>
                        <th>QUANTIDADE</th>
                        <th>SUBTOTAL</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${carrinho}" var="produto">
                                <tr>
                                    <td>
                                        <div class="flex">
                                            <div>
                                                <img class="img-responsive" style="width: 95px;" src="${url}/content/imagens/${produto.imagem.nome}" alt="${model.imagem.alt}"/>
                                            </div>
                                            <div class="produto-descricao">
                                                <div>
                                                    ${produto.nome}    
                                                </div>
                                                <div>
                                                    ${produto.descricao}   
                                                </div>          
                                            </div>
                                        </div>
                                    </td>                    
                                    <td>
                                        <div class="margem-valores valor">
                                            ${produto.valor}
                                        </div>
                                    </td>
                                    <td>
                                        <div class="margem-valores">
                                            <input class="quantidade" produtoID="${produto.id}"  valor="${produto.valor}" style="text-align: center;" type="number" name="quantity" min="1" max="6" value="1">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="margem-valores sub-total">
                                            <span produtoID="${produto.id}">
                                                ${produto.valor}
                                            </span>

                                        </div>
                                    </td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>   
                    <div class="botao flex-end" style="justify-content: space-between;">
                        <div>
                            <a href="produtos">
                                <button class="btn btn-info">Continuar comprando</button>
                            </a> 
                        </div>

                        <div>
                            <button class="btn btn-success">Finalizar a compra</button>
                        </div>

                    </div>
                </div>          
            </div>
        </div>

    </body>
</html>
