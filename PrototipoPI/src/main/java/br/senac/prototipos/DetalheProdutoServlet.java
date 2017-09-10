package br.senac.prototipos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author while true
 */
public class DetalheProdutoServlet extends HttpServlet {
    
    ProdutoDAO dao = new ProdutoDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String param = request.getParameter("id");
        if (param == null || "".equals(param)) {
            param = "1";
        }
        int produtoId = Integer.parseInt(param);
        
        request.setAttribute("model", dao.getById(produtoId));
        
        request.getRequestDispatcher("/WEB-INF/detalheProduto.jsp")
                .forward(request, response);
        
    }
}
