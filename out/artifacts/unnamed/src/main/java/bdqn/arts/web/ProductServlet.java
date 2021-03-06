package bdqn.arts.web;

import bdqn.arts.pojo.Product;
import bdqn.arts.service.Product.ProductService;
import bdqn.arts.service.Product.ProductServiceImpl;
import bdqn.arts.utils.Paging;

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
        Paging paging = new Paging();
        String ty = req.getParameter("ty");
        System.out.println(ty);
        if ("pro".equals(ty)){
            //每页显示条数
            Integer pageSize = 3;
            //总条数
            Integer pageTotal= pro.getCount();
                //当前页码
                String newcUrrentPage = req.getParameter("currentPage");
                Integer currentPage;
                if(newcUrrentPage==null){
                    currentPage =1;
                }else{
                    currentPage = Integer.parseInt(newcUrrentPage);
                }
                paging.setBegin((currentPage-1)*pageSize);
                paging.setPageSize(pageSize);
                paging.setPageTotal(pageTotal);
                if(currentPage<1){
                    currentPage =1;
                }else if(currentPage>paging.getPageCount()){
                    currentPage = paging.getPageCount();
                }
                paging.setCurrentPage(currentPage);
            List<Product> list=pro.seclectAll(paging);
            session.setAttribute("paging",paging);
            session.setAttribute("list",list);
            req.getRequestDispatcher("/atrs/communal/page.jsp").forward(req,resp);
        }



        if ("commodit".equals(ty)){
            Integer pid = Integer.parseInt(req.getParameter("pid"));
            Product product = pro.getProduct(pid);
            List<Product> list= pro.getPro();
            session.setAttribute("pr",product);
            session.setAttribute("list",list);
            req.getRequestDispatcher("/atrs/pre/pro_detail.jsp").forward(req,resp);
        }
        if ("paix".equals(ty)){
            String price = req.getParameter("price");
            String newproduct = req.getParameter("newproduct");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }


}
