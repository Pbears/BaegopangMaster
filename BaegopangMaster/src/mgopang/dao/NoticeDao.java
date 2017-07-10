package mgopang.dao;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.bean.NoticeBean;
import mgopang.bean.OrderBean;
import mgopang.bean.StoreBean;
import mgopang.util.SqlSessionFactoryManager;


public class NoticeDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public NoticeDao(){
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
	public List<NoticeBean>noticeSel(){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("noticeSel");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}

	}
	public NoticeBean selNoticeOne(String title){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selNoticeOne", title);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	


}
