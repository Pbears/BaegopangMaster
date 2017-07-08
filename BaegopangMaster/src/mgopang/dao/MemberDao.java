package mgopang.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.util.SqlSessionFactoryManager;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public MemberDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public MasterBean memberCheck(String id){
		return sqlSessionFactory.openSession().selectOne("memberCheck", id);
	}
	
	public void masterInsert(MasterBean bean){
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
	
	public MasterBean selectMasterOne (String id){
		return sqlSessionFactory.openSession().selectOne("selectMasterOne", id);
	}
	
}