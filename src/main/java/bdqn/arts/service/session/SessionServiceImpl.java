package bdqn.arts.service.session;

import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class SessionServiceImpl implements SessionService {

    @Override
    public Session ExamineSession(int id) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Session session = sqlSession.getMapper(SessionMapper.class).ExamineSession(id);
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }
    public ArrayList<Session> Examine() {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        ArrayList<Session> sessions = sqlSession.getMapper(SessionMapper.class).Examine();
        MyBatisUtil.closeSqlSession(sqlSession);
        return sessions;
    }
}
