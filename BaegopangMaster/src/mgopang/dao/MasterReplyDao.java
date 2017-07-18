package mgopang.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterReplyBean;
import mgopang.util.SqlSessionFactoryManager;
import org.apache.ibatis.session.SqlSession;
import java.util.List;


/*public class MasterReplyDao {
	private SqlSessionFactory sqlSessionFactory;

	public MasterReplyDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public void insertReply(MasterReplyBean bean) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertReply", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	public Integer selectRepSeq() throws Exception {
		return sqlSessionFactory.openSession().selectOne("selectRepSeq");
	}

	public List<MasterReplyBean> selectReply(String storeName) {
		return sqlSessionFactory.openSession().selectList("selectReply", storeName);
	}
=======*/

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterReplyBean;
import mgopang.bean.MasteraskadminBean;
import mgopang.bean.NoticeBean;
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
	public List<MasterReplyBean>selectReply(HashMap<String, Object>map){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectReply",map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public int getRTotalRows(String storename) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("getRTotalRows",storename);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			closeSqlSession(sqlSession);
		}
     }
	public int checkReply(HashMap<String, Object>ckmap) throws Exception{
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("checkReply",ckmap);
		} catch (Exception e) {
			/*e.printStackTrace();*/
			return -1;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
}
