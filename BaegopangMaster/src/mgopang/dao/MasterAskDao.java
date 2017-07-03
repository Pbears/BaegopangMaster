package mgopang.dao;


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
	public List<MasteraskadminBean>selectAsk(String masterid){
		return sqlSessionFactory.openSession().selectList("selectAsk",masterid);
	}
}
