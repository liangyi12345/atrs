package bdqn.arts.service.session;

import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.utils.MyBatisUtil;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class SessionServiceImpl implements SessionService {

    @Override
    public Session ExamineSession(int id , String price, String newproduct, Paging paging) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Session session = sqlSession.getMapper(SessionMapper.class).ExamineSession(id,price,newproduct,paging);
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }
    public ArrayList<Session> Examine() {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        ArrayList<Session> sessions = sqlSession.getMapper(SessionMapper.class).Examine();
        MyBatisUtil.closeSqlSession(sqlSession);
        return sessions;
    }

    @Override
    public Integer getSessionPro(Integer id, String price, String newproduct) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Integer count = sqlSession.getMapper(SessionMapper.class).getSessionPro(id, price, newproduct);
        MyBatisUtil.closeSqlSession(sqlSession);
        return count;
    }
}
