package bdqn.arts.dao;

import bdqn.arts.pojo.Product;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    //查询商品信息分页
    public List<Product> seclectAll(@Param("paging") Paging paging);
    //根据id查询商品信息
    Product getProduct(@Param("id")Integer id);
    //查询商品数量
    Integer getCount(@Param("gid") Integer gid,@Param("size") Integer size,@Param("current") Double current);
    //查询所有商品信息
    public List<Product> getPro();
    //分类查询商品
    public List<Product> selectNews(@Param("gid") Integer gid,@Param("size") Integer size,@Param("current") Double current, @Param("price")String price, @Param("newproduct")String newproduct,@Param("paging")Paging paging);
}
