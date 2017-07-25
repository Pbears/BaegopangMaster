package mgopang.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.ZipcodeBean;
import mgopang.util.SqlSessionFactoryManager;

public class ZipCodeDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public ZipCodeDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	private void closeSqlSession(Closeable c) {
		try {
			if (c != null)
				c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ZipcodeBean> searchAddress(String dong){
		SqlSession sqlSession = null;
		System.out.println(dong);
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("searchAddress", dong);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}
}