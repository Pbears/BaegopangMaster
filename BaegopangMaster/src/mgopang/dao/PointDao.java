package mgopang.dao;


import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasteraskadminBean;
import mgopang.bean.PointBean;
import mgopang.util.SqlSessionFactoryManager;

public class PointDao {
	private SqlSessionFactory sqlSessionFactory;  
	
	public PointDao(){
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
	public List<PointBean>brandPoint(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("brandPoint", storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public List<PointBean>guPoint(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("guPoint", storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public PointBean mybrandPoint(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("mybrandPoint", storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public PointBean myguPoint(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("myguPoint", storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
}
