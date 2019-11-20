package bdqn.arts.filter;

import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Product;
import bdqn.arts.service.Artist.ArtistServicImpl;
import bdqn.arts.service.Artist.ArtistService;
import bdqn.arts.service.Product.ProductService;
import bdqn.arts.service.Product.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class IndexFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setCharacterEncoding("utf-8");
        HttpServletRequest rq=(HttpServletRequest)servletRequest;
        HttpServletResponse rp=(HttpServletResponse)servletResponse;
        System.out.println("这是测试");
        ArtistService asi=new ArtistServicImpl();
        ProductService ps=new ProductServiceImpl();
        List<Artist> list=asi.showArtist();
        List<Product> lists=ps.getPro();
        Product product1=ps.getProduct(3);
        Product product2=ps.getProduct(5);
        Product product3=ps.getProduct(7);
        Product product4=ps.getProduct(9);
        rq.setAttribute("artist", list);
        rq.setAttribute("products",lists );
        rq.setAttribute("product1",product1);
        rq.setAttribute("product2",product2);
        rq.setAttribute("product3",product3);
        rq.setAttribute("product4",product4);
        filterChain.doFilter(rq,rp);
    }

    @Override
    public void destroy() {

    }
}
