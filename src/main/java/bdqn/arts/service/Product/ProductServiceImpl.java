package bdqn.arts.service.Product;

import bdqn.arts.dao.ProductMapper;
import bdqn.arts.pojo.Product;
import bdqn.arts.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    @Override
    public List<Product> seclectAll() {
        SqlSession sqlSession= MyBatisUtil.createSqlSession();
        List<Product> session=sqlSession.getMapper(ProductMapper.class).seclectAll();
        MyBatisUtil.closeSqlSession(sqlSession);
        return session;
    }
}
