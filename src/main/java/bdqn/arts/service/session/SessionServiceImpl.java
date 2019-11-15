package bdqn.arts.service.session;

import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Session;
import bdqn.arts.service.session.SessionService;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class SessionServiceImpl implements SessionService {

    @Override
    public Session ExamineSession(int id , String price,String newproduct) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        System.out.println(price+"999999999999999999999999999999999999999999999999999");
        Session session = sqlSession.getMapper(SessionMapper.class).ExamineSession(id,price,newproduct);
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
