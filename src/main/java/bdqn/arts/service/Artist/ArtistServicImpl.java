package bdqn.arts.service.Artist;

import bdqn.arts.dao.ArtistMapper;
import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Genre;
import bdqn.arts.utils.MyBatisUtil;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ArtistServicImpl implements ArtistService {
    @Override
    public List<Artist> showArtist(Integer gid,@Param("paging")Paging paging) {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Artist> session=sqlSession.getMapper(ArtistMapper.class).showArtist(gid,paging);
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }

    @Override
    public Artist getArtist(Integer id) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Artist artist = sqlSession.getMapper(ArtistMapper.class).getArtist(id);
        MyBatisUtil.closeSqlSession(sqlSession);
        return artist;
    }

    @Override
    public Artist gettist(Integer id) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Artist artist = sqlSession.getMapper(ArtistMapper.class).gettist(id);
        MyBatisUtil.closeSqlSession(sqlSession);
        return artist;
    }

    @Override
    public int getArtistge(Integer id) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Integer count = sqlSession.getMapper(ArtistMapper.class).getArtistge(id);
        MyBatisUtil.closeSqlSession(sqlSession);
        return count;
    }

    @Override
    public Integer getCount(Integer gid) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Integer count = sqlSession.getMapper(ArtistMapper.class).getCount(gid);
        MyBatisUtil.closeSqlSession(sqlSession);
        return count;
    }


}
