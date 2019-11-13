package bdqn.arts.web;

import bdqn.arts.pojo.Product;
import bdqn.arts.service.Product.ProductService;
import bdqn.arts.service.Product.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns={"/ProductServlet"},name = "ProductServlet")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ty=req.getParameter("ty");
        if ("pro".equals(ty)) {
            ProductService pro=new ProductServiceImpl();
            List<Product> list=pro.seclectAll();
            HttpSession session=req.getSession();
            session.setAttribute("list",list);
            req.getRequestDispatcher("/atrs/pre/mall.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }


}
