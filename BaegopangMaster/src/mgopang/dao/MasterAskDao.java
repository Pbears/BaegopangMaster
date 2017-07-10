package mgopang.dao;


import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasteraskadminBean;
import mgopang.util.SqlSessionFactoryManager;

public class MasterAskDao {
	private SqlSessionFactory sqlSessionFactory;  
	
	public MasterAskDao(){
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

	public void insertAsk(MasteraskadminBean bean){
		  SqlSession sqlSession=sqlSessionFactory.openSession();
		  try {
			  sqlSession.insert("insertAsk", bean);
			  sqlSession.commit();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
	}
	
	public int getTotalRows(String masterid) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getTotalRows",masterid);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			closeSqlSession(sqlSession);
		}
		
     }
	
	public List<MasteraskadminBean>selectAsk(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectAsk",map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public MasteraskadminBean selQuestionOne(String title){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selQuestionOne", title);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
		
	}
}
