package mgopang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MenuBean;
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
	public void insertMenu(String menuname){
		sqlSessionFactory.openSession().insert("insertMenu", menuname);
	}
}
