package bdqn.arts.web;

import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.User;
import bdqn.arts.service.Artist.ArtistServicImpl;
import bdqn.arts.service.Artist.ArtistService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet(urlPatterns={"/ArtistServlet"},name = "ArtistServlet")
public class ArtistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArtistService artis = new ArtistServicImpl();
        HttpSession session = req.getSession();
        String ty = req.getParameter("ty");
        if ("ar".equals(ty)){
            List<Artist> alist =artis.showArtist();
            session.setAttribute("amap",alist);
            req.getRequestDispatcher("/atrs/pre/artist.jsp").forward(req,resp);
        }

        if("adetail".equals(ty)){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Artist ae = artis.getArtist(id);
            User user = ae.getUser();
            Artist gettist = artis.gettist(id);
            List<Product> alist = gettist.getAlist();
            System.out.println(ae.getName()+"999999999999999999999999999999999999999999");
            Integer count =artis.getArtistge(id);
            session.setAttribute("count",count);
            session.setAttribute("ae",ae);
            session.setAttribute("st",alist);
            session.setAttribute("user",user);
            req.getRequestDispatcher("/atrs/pre/artist-detail.jsp").forward(req,resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
