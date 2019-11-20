package bdqn.arts.service.user;

import bdqn.arts.pojo.User;

import java.util.List;

/**
 * ClassName:UserService
 * Package:bdqn.arts.service.user
 * Description:
 *
 * @Date:2019/11/15 23:02
 * @author:guoxin@bjpowernode.com
 */
public interface UserService {
    //查询用户
    List<User> getUserList();
}
