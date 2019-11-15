package bdqn.arts.web;

import bdqn.arts.pojo.User;
import bdqn.arts.service.user.UserService;
import bdqn.arts.service.user.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * ClassName:GoginServlet
 * Package:bdqn.arts.web
 * Description:
 *
 * @Date:2019/11/15 22:37
 * @author:guoxin@bjpowernode.com
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserService userService = new UserServiceImpl();
        List<User> userList = userService.getUserList();
        int flag = 0;
        for (User users : userList) {
            if (users.getName().equals(username) && users.getPassword().equals(password)) {
                flag = 1;
                resp.sendRedirect("/atrs/pre/index.jsp");
            }
        }
        if(flag == 0){
            resp.sendRedirect("/atrs/pre/sign.jsp");
        }
    }
}
