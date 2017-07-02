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
	
	public boolean idCheck(String id){
		String userId = sqlSessionFactory.openSession().selectOne("idCheck", id);
		return id.equals(userId)?true:false;
	}
	
	public boolean memberCheck(String id, String pw){
		String userPw = sqlSessionFactory.openSession().selectOne("memberCheck", id);
		return pw.equals(userPw)?true:false;
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