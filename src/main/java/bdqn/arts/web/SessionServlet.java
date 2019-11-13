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
        HttpSession session = req.getSession();
        System.out.println(ty+"*************************************");
        if ("session".equals(ty)){
            SessionService service = new SessionServiceImpl();
            Map<Integer,Session> smap= new HashMap<>();
            ArrayList<Session> examine = service.Examine();
            for (Session s : examine){
                smap.put(s.getId(),service.ExamineSession(s.getId()));
            }
            session.setAttribute("smap",smap);
            req.getRequestDispatcher("/atrs/pre/special.jsp").forward(req,resp);
        }

        if("detail".equals(ty)){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Map<Integer,Session> smap = (Map<Integer,Session>)session.getAttribute("smap");
            ArrayList<Product> slist = smap.get(id).getSlist();
            session.setAttribute("slist",slist);
            req.getRequestDispatcher("/atrs/pre/special_detail.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doGet(req,resp);
    }
}
