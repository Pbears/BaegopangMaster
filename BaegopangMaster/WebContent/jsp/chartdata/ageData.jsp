<%@page import="mgopang.bean.AgeDataBean"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.DataDao"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.PrintWriter"%>
<%
	//MasterBean master=(MasterBean)request.getSession().getAttribute("master");
	//String storename = master.getStorename();
	HashMap<String, Object> map = new HashMap<String, Object>();
	//map.put("storename", storename);
	map.put("storename", "굽네치킨-역삼1동점");
	DataDao dao = new DataDao();
	List<AgeDataBean> list = dao.selectAgeData(map);
	//out.print(list);

	 JSONObject[] ageObj2 = { new JSONObject(), new JSONObject(), new JSONObject(), new JSONObject(),
			new JSONObject()};

	JSONArray[] subArray2 = { new JSONArray(), new JSONArray(), new JSONArray(), new JSONArray(),
			new JSONArray()};
	JSONArray totalArray2 = new JSONArray();
	String[] ageRatio2 = new String[5];
	int[] metc2 = new int[5];

	for (int i = 0; i < list.size(); i++) {
		AgeDataBean bean = list.get(i);

		if (bean.getAge()==10) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc2[0] += bean.getRatiomenu();
			}

		} else if (bean.getAge()==20) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc2[1] += bean.getRatiomenu();
			}

		} else if (bean.getAge()==30) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc2[2] += bean.getRatiomenu();
			}

		} else if (bean.getAge()==40) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc2[3] += bean.getRatiomenu();
			}

		} else if (bean.getAge()==50) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc2[4] += bean.getRatiomenu();
			}

		}
	}
	
	for(int i=0;metc2.length<i;i++){
	if(metc2[i]!=0){
		
		JSONObject subObj = new JSONObject();
		subObj.put("type", "기타");
		subObj.put("percent", metc2[i]);
		subArray2[i].add(subObj);
		
	 }
	}
	
	

	for (int i = 0; i < list.size(); i++) {
		AgeDataBean bean = list.get(i);

		if (bean.getAge()==10) {
			if (ageRatio2[0] == null) {
				ageRatio2[0] = String.valueOf(bean.getRatioage());
				ageObj2[0].put("type", "10대");
				ageObj2[0].put("percent", ageRatio2[0]);
				ageObj2[0].put("color", "#FF0F00");
				ageObj2[0].put("subs", subArray2[0]);
				totalArray2.add(ageObj2[0]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray2[0].add(subObj);
			} 

		} else if (bean.getAge()==20) {
			if (ageRatio2[1] == null) {
				ageRatio2[1] = String.valueOf(bean.getRatioage());
				ageObj2[1].put("type", "20대");
				ageObj2[1].put("percent", ageRatio2[1]);
				ageObj2[1].put("color", "#FF9E01");
				ageObj2[1].put("subs", subArray2[1]);
				totalArray2.add(ageObj2[1]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray2[1].add(subObj);
			}
		} else if (bean.getAge()==30) {
			if (ageRatio2[2] == null) {
				ageRatio2[2] = String.valueOf(bean.getRatioage());
				ageObj2[2].put("type", "30대");
				ageObj2[2].put("percent", ageRatio2[2]);
				ageObj2[2].put("color", "#F8FF01");
				ageObj2[2].put("subs", subArray2[2]);
				totalArray2.add(ageObj2[2]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray2[2].add(subObj);
			}

		} else if (bean.getAge()==40) {
			if (ageRatio2[3] == null) {
				ageRatio2[3] = String.valueOf(bean.getRatioage());
				ageObj2[3].put("type", "40대");
				ageObj2[3].put("percent", ageRatio2[3]);
				ageObj2[3].put("color", "#04D215");
				ageObj2[3].put("subs", subArray2[3]);
				totalArray2.add(ageObj2[3]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray2[3].add(subObj);
			}

		} else if (bean.getAge()==50) {
			if (ageRatio2[4] == null) {
				ageRatio2[4] = String.valueOf(bean.getRatioage());
				ageObj2[4].put("type", "50대");
				ageObj2[4].put("percent", ageRatio2[4]);
				ageObj2[4].put("color", "#0D8ECF");
				ageObj2[4].put("subs", subArray2[4]);
				totalArray2.add(ageObj2[4]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray2[4].add(subObj);
			}

		} 

	}

	//현재페이지의 목록데이터
	out.print(totalArray2);

	 	PrintWriter pw = response.getWriter();
		pw.print(totalArray2);
		pw.flush();
		pw.close();   
%>