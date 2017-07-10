package mgopang.dao;

import java.io.Closeable;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sun.prism.RTTexture;

import mgopang.bean.MenuBean;
import mgopang.bean.MenuByStoreBean;
import mgopang.util.SqlSessionFactoryManager;

public class MenuManageDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public MenuManageDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
	}  
	private void closeSqlSession(Closeable c) {
		try {
			if (c != null)
				c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteMenu(String menuname){
		  SqlSession sqlSession=sqlSessionFactory.openSession();
		  try {
			  sqlSession.insert("deleteMenu", menuname);
			  sqlSession.commit();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
	}
	public List<MenuBean>selectMenu(String id){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectMenu", id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
	}
	public List<MenuBean>selectMenuOne(String picture){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selectMenuOne", picture);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
		
	}
	public List<MenuBean>myStoreMenu(String storename){
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("myStoreMenu",storename);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			closeSqlSession(sqlSession);
		}
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
