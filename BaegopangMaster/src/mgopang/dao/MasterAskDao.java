package mgopang.dao;


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
		return sqlSessionFactory.openSession().selectOne("getTotalRows",masterid);
     }
	
	public List<MasteraskadminBean>selectAsk(HashMap<String, Object>map){
		System.out.println(map.get("end"));
		System.out.println(map.get("start"));
		return sqlSessionFactory.openSession().selectList("selectAsk",map);
	}
}
