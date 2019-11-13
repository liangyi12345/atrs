package bdqn.arts.dao;

import bdqn.arts.pojo.Product;

import java.util.List;

public interface ProductMapper {
    //查询商品信息
    public List<Product> seclectAll();
}
