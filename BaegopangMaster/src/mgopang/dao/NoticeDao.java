package mgopang.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mgopang.bean.MasterBean;
import mgopang.bean.NoticeBean;
import mgopang.bean.OrderBean;
import mgopang.bean.StoreBean;
import mgopang.util.SqlSessionFactoryManager;


public class NoticeDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public NoticeDao(){
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
		
	}
	public List<NoticeBean>noticeSel(){
		return sqlSessionFactory.openSession().selectList("noticeSel");
	}
	public NoticeBean selNoticeOne(String title){
		return sqlSessionFactory.openSession().selectOne("selNoticeOne", title);
	}
	


}
