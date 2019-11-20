package bdqn.arts.utils;

import bdqn.arts.dao.ArtistMapper;
import bdqn.arts.dao.ProductMapper;
import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.Session;
import com.mysql.fabric.xmlrpc.base.Param;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class Tist {
    public static void main(String[] args) {

  /*      SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Paging paging = new Paging();
        paging.setCurrentPage(2);
        paging.setPageSize(3);
        paging.setPageTotal(10);
        paging.setPageCount(1);
        paging.setBegin(3);
        Session session = sqlSession.getMapper(SessionMapper.class).ExamineSession(1, "tru", null, paging);

        for (Product p :session.getSlist() ) {
            System.out.println(p.getName());
        }*/
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Paging paging=new Paging();
        paging.setBegin(1);
        paging.setPageSize(12);
        List<Product> list = sqlSession.getMapper(ProductMapper.class).selectNews(0, 0, 20000.0,null,null,paging);
        for (Product P:list) {
            System.out.println(P.getCurrent());
        }
    }
}
