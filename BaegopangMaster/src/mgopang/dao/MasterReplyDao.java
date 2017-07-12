package mgopang.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterReplyBean;
import mgopang.util.SqlSessionFactoryManager;
import org.apache.ibatis.session.SqlSession;
import java.util.List;


public class MasterReplyDao {
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
}
