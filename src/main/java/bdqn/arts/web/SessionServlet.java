package bdqn.arts.web;

import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.service.session.SessionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@WebServlet(urlPatterns={"/sessionServlet"},name = "sessionServlet")
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("********");
        SessionService service = new SessionServiceImpl();
        Map<Integer,Session> smap= new HashMap<>();
        ArrayList<Session> examine = service.Examine();
        for (Session s : examine){
            smap.put(s.getId(),service.ExamineSession(s.getId()));
        }
        Set<Integer> integers = smap.keySet();
        for (int i:integers){
            System.out.println(smap.get(i));
        }
        HttpSession session = req.getSession();
        System.out.println(smap.size());
        session.setAttribute("smap",smap);
        req.getRequestDispatcher("/atrs/pre/special.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doGet(req,resp);
    }
}
