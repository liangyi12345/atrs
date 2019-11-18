package bdqn.arts.service.session;

import bdqn.arts.pojo.Session;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface SessionService {
    //查询专场信息
   Session ExamineSession(int id, String price, String newproduct, Paging paging);
    ArrayList<Session> Examine();
    //查询当前专场的信息条数
    Integer getSessionPro(@Param("id")Integer id, @Param("price")String price, @Param("newproduct")String newproduct);


}
