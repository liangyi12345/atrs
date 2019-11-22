package bdqn.arts.web;

import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Genre;
import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.User;
import bdqn.arts.service.Artist.ArtistServicImpl;
import bdqn.arts.service.Artist.ArtistService;
import bdqn.arts.utils.Paging;

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
    Integer gid=0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArtistService artis = new ArtistServicImpl();
        HttpSession session = req.getSession();
        Paging paging = new Paging();
        String ty = req.getParameter("ty");

        if ("ar".equals(ty)) {
            /*Genre getclassify = artis.getclassify(id);*/
       /*     List<Artist> genres = getclassify.getGenres();*/
            String newgid = req.getParameter("gid");
            if ( newgid!= null) {
                gid = Integer.parseInt(newgid);
            }

            //每页显示条数
            Integer pageSize =3;
            //总条数
            Integer pageTotal= artis.getCount(gid);
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

            List<Artist> alist =artis.showArtist(gid,paging);
            session.setAttribute("paging",paging);
            session.setAttribute("amap",alist);
            /*session.setAttribute("genres",genres);*/
            req.getRequestDispatcher("atrs/communal/art.jsp").forward(req,resp);
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
