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
        SqlSession sqlSession = MyBatisUtil.createSqlSession();

        Artist
        artistList=sqlSession.getMapper(ArtistMapper.class).gettist(1);
        for (Product artist:artistList.getAlist()){

                System.out.println(artist.getName());

        }
    }
}
