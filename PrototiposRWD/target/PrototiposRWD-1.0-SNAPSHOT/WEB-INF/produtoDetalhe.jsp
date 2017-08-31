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
                        <a href="#" class="thumbnail" carousel-item="0"><img src="${pageContext.request.contextPath}/img/calca_jeans_forum_destaque.jpg" alt=""></a>
                        <a href="#" class="thumbnail" carousel-item="1"><img src="${pageContext.request.contextPath}/img/calca_jeans_forum_frente.jpg" alt=""></a>
                        <a href="#" class="thumbnail" carousel-item="2"><img src="${pageContext.request.contextPath}/img/calca_jeans_forum_costas.jpg" alt=""></a>
                        <a href="#" class="thumbnail" carousel-item="3"><img src="${pageContext.request.contextPath}/img/calca_jeans_forum_detalhe.jpg" alt=""></a>
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
                    Forum
                    <h1 class="produto-nome">Calça Jeans Forum Reta Paul Azul-Marinho</h1>
                </div>
                <div class="row">
                    <div>
                        de <span class="preco-especial">R$ 209,00</span>
                    </div>
                    <div>
                        por <span class="preco-valor">R$ 109,90</span>
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
