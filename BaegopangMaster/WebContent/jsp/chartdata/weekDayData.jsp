<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="mgopang.bean.WeekDayDataBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.bean.GenderDataBean"%>
<%@page import="mgopang.dao.DataDao"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.PrintWriter"%>
<%
	// MasterBean master=(MasterBean)request.getSession().getAttribute("master");
	//String storename = master.getStorename();
	HashMap<String, Object> map = new HashMap<String, Object>();
	//map.put("storename", storename);
	map.put("storename", "굽네치킨-역삼1동점");
	DataDao dao = new DataDao();
	List<WeekDayDataBean> list = dao.selectWeekDayData(map);
	out.print(list);

	JSONObject[] dayObj = { new JSONObject(), new JSONObject(), new JSONObject(), new JSONObject(),
			new JSONObject(), new JSONObject(), new JSONObject() };
	
	JSONArray[] subArray = { new JSONArray(), new JSONArray(), new JSONArray(), new JSONArray(),
			new JSONArray(), new JSONArray(), new JSONArray() };
	JSONArray totalArray = new JSONArray();

	for (int i = 0; i < list.size(); i++) {
		WeekDayDataBean bean=list.get(i);
		String[] dayRatio=new String[7];
		
		
		if (bean.equals("월")) {
			if(dayRatio[0]==null){
				dayRatio[0]=String.valueOf(bean.getRatioday());
			    dayObj[0].put("type","원요일");
			    dayObj[0].put("percent",dayRatio[0]);
			    dayObj[0].put("color","#ff9e01");
			    dayObj[0].put("subs", subArray[0]);
			    
			    }
			if(bean.getRank()==1 ||bean.getRank()==2){
				JSONObject subObj=new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());		
			}
			

		} else if (list.get(i).getWeekday().equals("화")) {

		} else if (list.get(i).getWeekday().equals("수")) {

		} else if (list.get(i).getWeekday().equals("목")) {

		} else if (list.get(i).getWeekday().equals("금")) {

		} else if (list.get(i).getWeekday().equals("토")) {

		} else if (list.get(i).getWeekday().equals("일")) {

		}

	}
	
	totalArray.add(dayObj[0]);

	//현재페이지의 목록데이터
	out.print(totalArray);

	PrintWriter pw = response.getWriter();
	pw.print(totalArray);
	pw.flush();
	pw.close();
%>