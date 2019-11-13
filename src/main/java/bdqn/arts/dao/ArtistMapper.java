package bdqn.arts.dao;

import bdqn.arts.pojo.Artist;

import java.util.List;

public interface ArtistMapper {
    //查询艺术家信息
    public List<Artist> showArtist();

}
