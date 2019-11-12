package bdqn.arts.utils;

import bdqn.arts.dao.SessionMapper;
import bdqn.arts.pojo.Session;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class Tist {
    public static void main(String[] args) {
        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        Session session = sqlSession.getMapper(SessionMapper.class).ExamineSession(2);
        System.out.println(session.getId());


    }
}
