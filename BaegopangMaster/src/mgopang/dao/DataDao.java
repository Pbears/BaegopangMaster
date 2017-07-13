package mgopang.dao;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.GenderDataBean;
import mgopang.bean.OrderBean;
import mgopang.util.SqlSessionFactoryManager;

public class DataDao {	
	
		private SqlSessionFactory sqlSessionFactory;
		
		public DataDao(){
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
		
		
		public void insertOrderData(HashMap<String, Object>map){
			SqlSession session = sqlSessionFactory.openSession();
			try {
				session.insert("insertOrderData",map);
				session.commit();
			} catch (Exception e) {
				session.rollback();
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		
		public List<GenderDataBean>selectGenderData(HashMap<String, Object>map){
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				return sqlSession.selectList("selectGenderData",map);
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}finally {
				closeSqlSession(sqlSession);
			}
		}

}
