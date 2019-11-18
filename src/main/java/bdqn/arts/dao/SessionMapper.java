package bdqn.arts.dao;

import bdqn.arts.pojo.Session;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface SessionMapper {
    //查询专场信息
        Session ExamineSession(@Param("id")Integer id, @Param("price")String price, @Param("newproduct")String newproduct, @Param("paging")Paging paging);
        ArrayList<Session> Examine();
   //查询当前专场的信息条数
    Integer getSessionPro(@Param("id")Integer id, @Param("price")String price, @Param("newproduct")String newproduct);
}
