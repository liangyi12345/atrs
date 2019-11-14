package bdqn.arts.utils;

import bdqn.arts.dao.ArtistMapper;
import bdqn.arts.dao.ProductMapper;
import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Product;
import bdqn.arts.pojo.Session;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class Tist {
    public static void main(String[] args) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();

        List<Artist> list1 = sqlSession.getMapper(ArtistMapper.class).showArtist();
        for (Artist a:list1){
            System.out.println(a.getName()+"\n"+a.getSynopsis()+"\n"+a.getImagePath());
        }

    }
}
