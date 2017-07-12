package mgopang.dao;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.bean.OrderBean;
import mgopang.bean.OrderDataBean;
import mgopang.bean.StoreBean;
import mgopang.util.SqlSessionFactoryManager;


public class OrderDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public OrderDao(){
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

	public int getTotalRow(HashMap<String, Object>map) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getTotalRow",map);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			closeSqlSession(sqlSession);
		}
     }
	
	public int getTotalRowCom(HashMap<String, Object>map) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getTotalRowCom",map);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			closeSqlSession(sqlSession);
		}
     }
	public List<OrderBean>selectOrder(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectOrder",map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public List<OrderBean>selectOrderCom(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectOrderCom",map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public void updateOrder(HashMap<String, Object>map){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("updateOrder",map);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public MasterBean selectMaster(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selectMaster",map);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public StoreBean selectStore(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selectStore",map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	
	public void updateStore(HashMap<String, Object>map){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("updateStore",map);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public void updateMaster(HashMap<String, Object>map){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("updateMaster",map);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	
	public void dropMaster(MasterBean bean){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.insert("dropMaster",bean);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
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
	
	
}
