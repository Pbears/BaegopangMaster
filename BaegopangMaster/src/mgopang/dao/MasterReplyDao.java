package mgopang.dao;


import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterReplyBean;
import mgopang.bean.MasteraskadminBean;
import mgopang.util.SqlSessionFactoryManager;

public class MasterReplyDao {
	private SqlSessionFactory sqlSessionFactory;  
	
	public MasterReplyDao(){
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
	public List<MasterReplyBean>selectReply(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectReply",storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}

}
