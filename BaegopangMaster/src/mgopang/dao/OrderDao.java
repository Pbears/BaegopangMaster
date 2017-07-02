package mgopang.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.bean.OrderBean;
import mgopang.bean.StoreBean;
import mgopang.util.SqlSessionFactoryManager;


public class OrderDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public OrderDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
		
	}
	public int getTotalRow(HashMap<String, Object>map) throws Exception{
		System.out.println(map.get("Q"));
		System.out.println(map.get("D"));
		return sqlSessionFactory.openSession().selectOne("getTotalRow",map);
     }
	public List<OrderBean>selectOrder(HashMap<String, Object>map){
		System.out.println(map.get("query"));
		System.out.println(map.get("data"));
		return sqlSessionFactory.openSession().selectList("selectOrder",map);
	}
	public void updateOrder(HashMap<String, Object>map){
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("updateOrder",map);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public MasterBean selectMaster(HashMap<String, Object>map){
	
		return sqlSessionFactory.openSession().selectOne("selectMaster",map);
	}
	public StoreBean selectStore(HashMap<String, Object>map){
		return sqlSessionFactory.openSession().selectOne("selectStore",map);
	}

}
