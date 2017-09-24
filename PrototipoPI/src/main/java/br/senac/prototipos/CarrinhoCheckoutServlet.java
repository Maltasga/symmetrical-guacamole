package br.senac.prototipos;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author while true
 */
public class CarrinhoCheckoutServlet extends HttpServlet {

    ProdutoDAO dao = new ProdutoDAO();
    ArrayList<ProdutoModel> carrinho = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/checkoutCompras.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String tamanho = request.getParameter("tamanho");
        String cor = request.getParameter("cor");

        ProdutoModel produto = dao.getById(id);
        carrinho.add(produto);

        request.setAttribute("cor", cor);
        request.setAttribute("tamanho", tamanho);
//        request.setAttribute("produto", produto);

        HttpSession session = request.getSession();
        session.setAttribute("carrinho", carrinho);
        
        request.getRequestDispatcher("/WEB-INF/checkoutCompras.jsp")
                .forward(request, response);
//        response.sendRedirect(request.getContextPath() + "/checkout");
    }
}
