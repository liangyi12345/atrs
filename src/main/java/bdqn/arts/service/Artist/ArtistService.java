package bdqn.arts.service.Artist;

import bdqn.arts.pojo.Artist;
import bdqn.arts.pojo.Genre;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArtistService {
    //查询艺术家信息
    public List<Artist> showArtist(@Param("gid") Integer gid,@Param("paging")Paging paging);

    public Artist getArtist(@Param("id")Integer id);

    public Artist gettist(@Param("id")Integer id);

    public int  getArtistge(@Param("id")Integer id);
    //查询商品数量
    Integer getCount(@Param("gid") Integer gid);


}
