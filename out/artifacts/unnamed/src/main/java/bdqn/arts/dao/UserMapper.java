package bdqn.arts.dao;

import bdqn.arts.pojo.User;

import java.util.List;


public interface UserMapper {

    //查询用户
    List<User> getUserList();
}

