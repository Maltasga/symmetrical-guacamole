package com.senac.tads4b;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author While True
 */
@WebServlet("/produto-detalhe")
public class ProdutoDetalheServlet extends HttpServlet {

    ListaProdutos produtos = new ListaProdutos();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int produtoId = Integer.parseInt(request.getParameter("id"));
        ProdutoModel model = produtos.getById(produtoId);
        request.setAttribute("model", model);

        request.getRequestDispatcher("/WEB-INF/produtoDetalhe.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
