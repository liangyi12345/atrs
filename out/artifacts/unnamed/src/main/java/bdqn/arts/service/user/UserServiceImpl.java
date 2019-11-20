package bdqn.arts.service.user;

import bdqn.arts.dao.UserMapper;
import bdqn.arts.pojo.User;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;


public class UserServiceImpl implements UserService {

    @Override
    public List<User> getUserList() {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<User> userList = sqlSession.getMapper(UserMapper.class).getUserList();
        System.out.println(userList.toString());
        MyBatisUtil.closeSqlSession(sqlSession);
        return userList;
    }
}
