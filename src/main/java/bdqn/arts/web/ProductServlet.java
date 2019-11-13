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
        HttpSession session=req.getSession();
        ProductService pro=new ProductServiceImpl();
        String ty = req.getParameter("ty");
        System.out.println(ty);
        if ("pro".equals(ty)){

            List<Product> list=pro.seclectAll();
            session.setAttribute("list",list);
            req.getRequestDispatcher("/atrs/pre/mall.jsp").forward(req,resp);
        }
        if ("commodit".equals(ty)){
            Integer pid = Integer.parseInt(req.getParameter("pid"));
            Product product = pro.getProduct(pid);
            List<Product> list= pro.seclectAll();
            session.setAttribute("pr",product);
            session.setAttribute("list",list);
            req.getRequestDispatcher("/atrs/pre/pro_detail.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }


}
