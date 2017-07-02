package mgopang.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.OrderBean;
import mgopang.util.SqlSessionFactoryManager;


public class OrderDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public OrderDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
		
	}
	public int getTotalRow(HashMap<String, Object>map) throws Exception{
		return sqlSessionFactory.openSession().selectOne("getTotalRow",map);
     }
	public List<OrderBean>selectOrder(HashMap<String, Object>map){
		return sqlSessionFactory.openSession().selectList("selectOrder",map);
	}

}
