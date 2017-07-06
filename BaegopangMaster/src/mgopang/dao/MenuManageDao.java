package mgopang.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MenuBean;
import mgopang.bean.MenuByStoreBean;
import mgopang.util.SqlSessionFactoryManager;

public class MenuManageDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public MenuManageDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}  
	
	public List<MenuBean>selectMenu(String id){
		return sqlSessionFactory.openSession().selectList("selectMenu", id);
	}
	public List<MenuBean>selectMenuOne(String picture){
		return sqlSessionFactory.openSession().selectOne("selectMenuOne", picture);
	}
	public List<MenuBean>myStoreMenu(String storename){
		return sqlSessionFactory.openSession().selectList("myStoreMenu",storename);
	}
	public void insertMenu(HashMap<String, String>map){
		  SqlSession sqlSession=sqlSessionFactory.openSession();
		  try {
			  sqlSession.insert("insertMenu", map);
			  sqlSession.commit();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
	}
}
