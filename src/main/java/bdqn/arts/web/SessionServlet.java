package bdqn.arts.web;

import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.service.session.SessionServiceImpl;
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
                smap.put(s.getId(),service.ExamineSession(s.getId(),price,newproduct));
            }
            session.setAttribute("smap",smap);
            req.getRequestDispatcher("/atrs/pre/special.jsp").forward(req,resp);
        }

        if("detail".equals(ty)){
           Integer id = Integer.parseInt(req.getParameter("id"));
            String zonghe = req.getParameter("zonghe");
            String price = req.getParameter("price");
            String newproduct = req.getParameter("newproduct");
            Session se = service.ExamineSession(id, price, newproduct);
            ArrayList<Product> slist = se.getSlist();
            session.setAttribute("slist",slist);
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
