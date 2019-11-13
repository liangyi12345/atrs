package bdqn.arts.service.Genre;

import bdqn.arts.dao.GenreMapper;
import bdqn.arts.pojo.Genre;
import bdqn.arts.pojo.Session;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class GenreServiceImpl implements GenreService {
    @Override
    public ArrayList<Genre> select() {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        ArrayList<Genre> session=sqlSession.getMapper(GenreMapper.class).select();
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }


}
