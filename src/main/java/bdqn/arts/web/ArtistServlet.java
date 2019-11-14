package bdqn.arts.web;

import bdqn.arts.pojo.Artist;
import bdqn.arts.service.Artist.ArtistServicImpl;
import bdqn.arts.service.Artist.ArtistService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns={"/ArtistServlet"},name = "ArtistServlet")
public class ArtistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArtistService artis = new ArtistServicImpl();
        HttpSession session = req.getSession();
        String ty = req.getParameter("ty");
        if ("ar".equals(ty)){
            List<Artist> alist =artis.showArtist();
            session.setAttribute("alist",alist);
            req.getRequestDispatcher("/atrs/pre/artist.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
