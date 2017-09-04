<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.annotation.Resources"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KK Coolwear</title>
        <%@include file="/WEB-INF/jspf/_references.jspf" %>
    </head>
    <body>
        <%@include file="/WEB-INF/jspf/_header.jspf"  %>
        <%@include file="/WEB-INF/jspf/_menu.jspf" %>

        <div class="container">
            <div class="col-md-2">
                <div id="thumb">
                    <div class="col-md-8">
                        <c:forEach items="${model.imagens}" var="i">                        
                            <a href="#" class="thumbnail" carousel-item="0">
                                <img src="${pageContext.request.contextPath}/img/${i}" alt="">
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div id="fotos-carousel" class="carousel slide">
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="${pageContext.request.contextPath}/img/calca_jeans_forum_destaque.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/calca_jeans_forum_frente.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/calca_jeans_forum_costas.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/calca_jeans_forum_detalhe.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                &nbsp;
            </div>
            <div class="col-md-4">
                <div class="row produto-titulo">
                    ${model.titulo}
                    <h1 class="produto-nome">${model.nome}</h1>
                </div>
                <div class="row">
                    <div>
                        de <span class="preco-especial"><fmt:formatNumber value="${model.valor}" type="currency"></fmt:formatNumber></span>
                        </div>
                        <div>
                            por <span class="preco-valor"><fmt:formatNumber value="${model.valorPromocional}" type="currency"></fmt:formatNumber></span>
                    </div>
                </div>
            </div>

        </div>
        <script>
            $("#fotos-carousel").carousel({
                interval: false
            });
            $("#thumb .thumbnail").on("click", function () {
                var id = parseInt($(this).attr("carousel-item"));
                $("#fotos-carousel").carousel(id);
            });
        </script>
    </body>
</html>
