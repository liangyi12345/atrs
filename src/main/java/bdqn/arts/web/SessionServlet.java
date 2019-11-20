package bdqn.arts.web;

import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.service.session.SessionServiceImpl;
import bdqn.arts.utils.Paging;
import jdk.internal.org.objectweb.asm.tree.IincInsnNode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns={"/sessionServlet"},name = "sessionServlet")
public class SessionServlet extends HttpServlet {
    Integer id = 0;
    String zonghe = null;
    String price =null;
    String newproduct =null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ty = req.getParameter("ty");
        SessionService service = new SessionServiceImpl();
        HttpSession session = req.getSession();
        System.out.println(ty+"*************************************");
        if ("session".equals(ty)){
            String price = req.getParameter("price");
            String newproduct = req.getParameter("newproduct");
            Map<Integer,Session> smap= new HashMap<>();
            ArrayList<Session> examine = service.Examine();
            for (Session s : examine){
                smap.put(s.getId(),service.ExamineSession(s.getId(),price,newproduct,null));
            }
            session.setAttribute("smap",smap);
            req.getRequestDispatcher("/atrs/pre/special.jsp").forward(req,resp);
        }

        if("detail".equals(ty)){
             id = Integer.parseInt(req.getParameter("id"));
             zonghe = req.getParameter("zonghe");
             price = req.getParameter("price");
             newproduct = req.getParameter("newproduct");
            Paging paging = new Paging();
            //每页显示条数
            Integer pageSize = 3;
            //总条数
            Integer pageTotal= service.getSessionPro(id,price,newproduct);
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
            session.setAttribute("paging",paging);



            Session se = service.ExamineSession(id, price, newproduct,paging);
            ArrayList<Product> slist = se.getSlist();
            session.setAttribute("slist",slist);
            if (zonghe!=null || price != null || newproduct != null){
                req.getRequestDispatcher("/atrs/communal/shangp.jsp").forward(req,resp);
            }else {
                req.getRequestDispatcher("/atrs/pre/special_detail.jsp").forward(req,resp);
            }

        }
        if ("detailpage".equals(ty)){
            Paging paging = new Paging();
            //每页显示条数
            Integer pageSize = 3;
            //总条数
            Integer pageTotal= service.getSessionPro(id,price,newproduct);
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


            Session se = service.ExamineSession(id, price, newproduct,paging);
            ArrayList<Product> slist = se.getSlist();
            session.setAttribute("slist",slist);
            session.setAttribute("paging",paging);
            if (zonghe!=null || price != null || newproduct != null){
                req.getRequestDispatcher("/atrs/communal/shangp.jsp").forward(req,resp);
            }else {
                req.getRequestDispatcher("/atrs/pre/special_detail.jsp").forward(req,resp);
            }


        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doGet(req,resp);
    }
}
