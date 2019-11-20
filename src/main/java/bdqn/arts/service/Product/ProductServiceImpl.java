package bdqn.arts.service.Product;

import bdqn.arts.dao.ProductMapper;
import bdqn.arts.pojo.Product;
import bdqn.arts.utils.MyBatisUtil;
import bdqn.arts.utils.Paging;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    @Override
    public Integer getCount(Integer gid, Integer size, Double current) {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        Integer count = sqlSession.getMapper(ProductMapper.class).getCount(gid,size,current);
        MyBatisUtil.closeSqlSession(sqlSession);
        return count;
    }

    @Override
    public List<Product> seclectAll(Paging paging) {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Product> list=sqlSession.getMapper(ProductMapper.class).seclectAll(paging);
        MyBatisUtil.closeSqlSession(sqlSession);
        return list;
    }

    @Override
    public Product getProduct(Integer id) {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        Product product = sqlSession.getMapper(ProductMapper.class).getProduct(id);
        MyBatisUtil.closeSqlSession(sqlSession);
        return product;
    }


    @Override
    public List<Product> getPro() {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Product> list=sqlSession.getMapper(ProductMapper.class).getPro();
        MyBatisUtil.closeSqlSession(sqlSession);
        return list;
    }


    @Override
    public List<Product> selectNews(Integer gid, Integer size, Double current,String price, String newproduct,Paging paging) {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Product> list=sqlSession.getMapper(ProductMapper.class).selectNews(gid,size,current,price,newproduct,paging);
        MyBatisUtil.closeSqlSession(sqlSession);
        return list;
    }
}
