<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-lg-4 col-md-6">                
        <div class="flex-start margin-left">
            <a href="produtos" class="img-logo"></a>
        </div>                   
    </div>
    <div class="col-lg-5">
        <div class="margin-left pesquisa">
            <div class="borda-inferior">
                <i class="glyphicon glyphicon-search icon-search"></i>  
            </div>
            <input type="text" class="txtPesquisa" placeholder="O que você procura?" />   
        </div>     
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
                    <a href="checkout" style="text-decoration: none;">
                        <span class="glyphicon glyphicon-shopping-cart icons" style="color: black;"></span>                    

                    </a>
                    <span class="badge">0</span>
                </div>  
            </div>
        </div>
    </div>                
</div>
<div class="menu">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <div class="flex-center">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="produtos">Home</a></li>
                        <li><a href="#">Feminino</a></li>
                        <li><a href="#">Masculino</a></li>
                        <li><a href="#">Infantil</a></li>
                        <li><a href="#">Contato</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </nav>
</div>
