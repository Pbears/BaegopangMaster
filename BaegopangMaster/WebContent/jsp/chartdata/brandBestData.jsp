<%@page import="java.util.HashMap"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="mgopang.bean.BrandDataBean"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="mgopang.dao.DataDao"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.PrintWriter"%>
<%
    MasterBean master=(MasterBean)request.getSession().getAttribute("master");
	String storename = master.getStorename();
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("storename", storename);
	//map.put("storename", "굽네치킨-역삼1동점");

	DataDao dao = new DataDao();
	List<BrandDataBean> list = dao.selectBrandData(map);
	//out.print(list);
	
	JSONArray totalArray=new JSONArray();
	

	
	int metc = 0;

	for (int i = 0; i < list.size(); i++) {
		BrandDataBean bean = list.get(i);

		

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc += bean.getRatiomenu();
			}

		
	}
	
	if(metc!=0){
		JSONObject obj=new JSONObject();
		obj.put("country", "기타");
		obj.put("litres", metc);
		totalArray.add(obj);
		
	}

	for (int i = 0; i < list.size(); i++) {
		BrandDataBean bean = list.get(i);
		
		if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
			JSONObject obj=new JSONObject();
			obj.put("country", bean.getMenuname());
			obj.put("litres", bean.getRatiomenu());
			totalArray.add(obj);
		}
		

	}

	//현재페이지의 목록데이터
	out.print(totalArray.toString());

	 	PrintWriter pw = response.getWriter();
		pw.print(totalArray.toString());
		pw.flush();
		pw.close();  
%>