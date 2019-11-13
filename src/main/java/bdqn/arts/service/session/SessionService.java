package bdqn.arts.service.session;

import bdqn.arts.pojo.Session;

import java.util.ArrayList;

public interface SessionService {
    //查询专场信息
   Session ExamineSession(int id);
    ArrayList<Session> Examine();

}
