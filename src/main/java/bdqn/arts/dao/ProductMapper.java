package bdqn.arts.dao;

import bdqn.arts.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    //查询商品信息
    public List<Product> seclectAll();
    //根据id查询商品信息
    Product getProduct(@Param("id")Integer id);
}
