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
        <link href="${url}/content/kkcoolwear.sitestyle.css" rel="stylesheet" type="text/css"/>
        <script src="${url}/content/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${url}/content/libs/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <!-- MENU -->
        <%@include file="../WEB-INF/cabecalho.jsp" %>
        <!-- MENU -->
        <div class="container">
            <div class="col-xs-12 col-md-6 col-lg-6">
                <div class="miniaturas col-sm-2 col-md-2 col-lg-2">
                    <a href="#" class="thumbnail"><img class="img-responsive" src="${url}/content/imagens/${model.imagem.nome}" alt="${model.imagem.alt}" /></a>
                    <a href="#" class="thumbnail"><img class="img-responsive" src="${url}/content/imagens/${model.imagem.nome}" alt="${model.imagem.alt}" /></a>
                    <a href="#" class="thumbnail"><img class="img-responsive" src="${url}/content/imagens/${model.imagem.nome}" alt="${model.imagem.alt}" /></a>
                </div>
                <div class="col-sm-6 col-md-10 col-lg-10">
                    <img class="img-responsive" src="${url}/content/imagens/${model.imagem.nome}" alt="${model.imagem.alt}"/>
                </div>
            </div>
            <div class="col-xs-7 col-md-6 col-lg-6">
                <div class="container-borda">
                    <p class="p-titulo">
                        ${model.nome}
                    </p>
                    <p class="p-descricao">
                        ${model.descricao}
                    </p>
                    <p class="p-preco">
                        <fmt:formatNumber value="${model.valor}" type="currency" currencySymbol="R$ " ></fmt:formatNumber>
                        </p>
                    </div>
                </div>
                <div class="col-xs-5 col-md-6 col-lg-6">
                    <form method="POST" action="checkout">
                        <input type="hidden" value="${model.id}" name="id"/>
                    <div class="container-opcoes">
                        <div class="row">
                            <p>Cores disponíveis</p>
                            <select class="form-control" name="cor">
                                <option value=""></option>
                                <c:forEach items="${cores}" var="item">
                                    <option value="${item.key}">${item.value}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="row">
                            <p>Tamanho</p>
                            <select class="form-control" name="tamanho">
                                <option value=""></option>
                                <c:forEach items="${tamanhos}" var="item">
                                    <option value="${item.key}">${item.value}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="row linha-btn">
                            <input type="submit" class="btn btn-primary" value="Comprar" />
                        </div>
                </form>
                <div class="row">
                    <div id="parcelamento">
                        <p>Parcelamento</p>
                        <img src="${url}/content/imagens/bandeiras-parcelamento.gif" alt="Bandeiras de cartões de crédito aceitas" />  
                        <table class="table table-striped table-responsive">
                            <c:forEach begin="1" end="5" var="i">
                                <tr>
                                    <td>
                                        <c:out  value="${i}"></c:out> x <fmt:formatNumber value="${model.valor / i}" type="currency" currencySymbol="R$ " ></fmt:formatNumber> sem juros
                                        </td>
                                    </tr>
                            </c:forEach>
                        </table>   
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
