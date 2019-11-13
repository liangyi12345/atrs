package bdqn.arts.service.Artist;

import bdqn.arts.dao.ArtistMapper;
import bdqn.arts.pojo.Artist;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ArtistServicImpl implements ArtistService {
    @Override
    public List<Artist> showArtist() {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Artist> session=sqlSession.getMapper(ArtistMapper.class).showArtist();
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }
}
