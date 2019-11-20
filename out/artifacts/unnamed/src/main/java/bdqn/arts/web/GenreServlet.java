package bdqn.arts.web;

import bdqn.arts.pojo.Genre;
import bdqn.arts.service.Genre.GenreService;
import bdqn.arts.service.Genre.GenreServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/GenreServlet"},name = "GenreServlet")
public class GenreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GenreService service=new GenreServiceImpl();
        ArrayList<Genre> arrayList=service.select();
        for (Genre ge:arrayList) {

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
