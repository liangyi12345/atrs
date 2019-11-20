package bdqn.arts.dao;

import bdqn.arts.pojo.Genre;

import java.util.ArrayList;

public interface GenreMapper {
    //查询油画分类
    public ArrayList<Genre> select();
}
