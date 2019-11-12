package bdqn.arts.dao;

import bdqn.arts.pojo.Session;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface SessionMapper {
    //查询专场信息
        Session ExamineSession(@Param("id")Integer id);
        ArrayList<Session> Examine();
}
