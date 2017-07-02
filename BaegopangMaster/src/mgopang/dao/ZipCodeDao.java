package mgopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.ZipcodeBean;
import mgopang.util.SqlSessionFactoryManager;

public class ZipCodeDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public ZipCodeDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public List<ZipcodeBean> searchAddress(String dong){
		return sqlSessionFactory.openSession().selectList("searchAddress", dong);
	}
}