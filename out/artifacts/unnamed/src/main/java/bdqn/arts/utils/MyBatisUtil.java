package bdqn.arts.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MyBatisUtil {
	private static SqlSessionFactory factory;
	
	static{//在静态代码块下，factory只会被创建一次
		try {
			InputStream is = Resources.getResourceAsStream("mybatis_config.xml");
			factory = new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	public static SqlSession createSqlSession(){
		return factory.openSession(false);//true 为自动提交事务
	}
	
	public static void closeSqlSession(SqlSession sqlSession){
		if(null != sqlSession) 
			sqlSession.close();
	}
}
