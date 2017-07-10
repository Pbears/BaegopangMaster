package mgopang.dao;

import java.io.Closeable;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.util.SqlSessionFactoryManager;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;

	public MemberDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public MasterBean memberCheck(String id) {
		return sqlSessionFactory.openSession().selectOne("memberCheck", id);
	}

	private void closeSqlSession(Closeable c) {
		try {
			if (c != null)
				c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void masterInsert(MasterBean bean) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.insert("masterInsert", bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
	}

	public MasterBean selectMasterOne(String id) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selectMasterOne", id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}

	}

}