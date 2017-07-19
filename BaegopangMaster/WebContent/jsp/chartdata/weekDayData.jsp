<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="mgopang.bean.WeekDayDataBean"%>
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
	MasterBean master=(MasterBean)request.getSession().getAttribute("master");
	String storename = master.getStorename();
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("storename", storename);
	//map.put("storename", "굽네치킨-역삼1동점");
	DataDao dao = new DataDao();
	List<WeekDayDataBean> list = dao.selectWeekDayData(map);
	//out.print(list);

	JSONObject[] dayObj1 = { new JSONObject(), new JSONObject(), new JSONObject(), new JSONObject(),
			new JSONObject(), new JSONObject(), new JSONObject() };

	JSONArray[] subArray1 = { new JSONArray(), new JSONArray(), new JSONArray(), new JSONArray(),
			new JSONArray(), new JSONArray(), new JSONArray() };
	JSONArray totalArray1 = new JSONArray();
	String[] dayRatio1 = new String[7];
	int[] metc1 = new int[7];

	for (int i = 0; i < list.size(); i++) {
		WeekDayDataBean bean = list.get(i);

		if (bean.getWeekday().equals("월")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[0] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("화")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[1] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("수")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[2] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("목")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[3] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("금")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[4] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("토")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[5] += bean.getRatiomenu();
			}

		} else if (bean.getWeekday().equals("일")) {

			if (bean.getRank() != 1 && bean.getRank() != 2 && bean.getRank() != 3) {
				metc1[6] += bean.getRatiomenu();
			}

		}
	}
	for(int i=0;metc1.length<i;i++){
		if(metc1[i]!=0){
			
			JSONObject subObj = new JSONObject();
			subObj.put("type", "기타");
			subObj.put("percent", metc1[i]);
			subArray1[i].add(subObj);
			
		 }
		}
	

	for (int i = 0; i < list.size(); i++) {
		WeekDayDataBean bean = list.get(i);

		if (bean.getWeekday().equals("월")) {
			if (dayRatio1[0] == null) {
				dayRatio1[0] = String.valueOf(bean.getRatioday());
				dayObj1[0].put("type", "월요일");
				dayObj1[0].put("percent", dayRatio1[0]);
				dayObj1[0].put("color", "#FF0F00");
				dayObj1[0].put("subs", subArray1[0]);
				totalArray1.add(dayObj1[0]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[0].add(subObj);
			}

		} else if (bean.getWeekday().equals("화")) {
			if (dayRatio1[1] == null) {
				dayRatio1[1] = String.valueOf(bean.getRatioday());
				dayObj1[1].put("type", "화요일");
				dayObj1[1].put("percent", dayRatio1[1]);
				dayObj1[1].put("color", "#FF9E01");
				dayObj1[1].put("subs", subArray1[1]);
				totalArray1.add(dayObj1[1]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[1].add(subObj);
			}

		} else if (bean.getWeekday().equals("수")) {
			if (dayRatio1[2] == null) {
				dayRatio1[2] = String.valueOf(bean.getRatioday());
				dayObj1[2].put("type", "수요일");
				dayObj1[2].put("percent", dayRatio1[2]);
				dayObj1[2].put("color", "#F8FF01");
				dayObj1[2].put("subs", subArray1[2]);
				totalArray1.add(dayObj1[2]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[2].add(subObj);
			}

		} else if (bean.getWeekday().equals("목")) {
			if (dayRatio1[3] == null) {
				dayRatio1[3] = String.valueOf(bean.getRatioday());
				dayObj1[3].put("type", "목요일");
				dayObj1[3].put("percent", dayRatio1[3]);
				dayObj1[3].put("color", "#04D215");
				dayObj1[3].put("subs", subArray1[3]);
				totalArray1.add(dayObj1[3]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[3].add(subObj);
			}

		} else if (bean.getWeekday().equals("금")) {
			if (dayRatio1[4] == null) {
				dayRatio1[4] = String.valueOf(bean.getRatioday());
				dayObj1[4].put("type", "금요일");
				dayObj1[4].put("percent", dayRatio1[4]);
				dayObj1[4].put("color", "#0D8ECF");
				dayObj1[4].put("subs", subArray1[4]);
				totalArray1.add(dayObj1[4]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[4].add(subObj);
			} 

		} else if (bean.getWeekday().equals("토")) {
			if (dayRatio1[5] == null) {
				dayRatio1[5] = String.valueOf(bean.getRatioday());
				dayObj1[5].put("type", "토요일");
				dayObj1[5].put("percent", dayRatio1[5]);
				dayObj1[5].put("color", "#2A0CD0");
				dayObj1[5].put("subs", subArray1[5]);
				totalArray1.add(dayObj1[5]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[5].add(subObj);
			}

		} else if (bean.getWeekday().equals("일")) {
			if (dayRatio1[6] == null) {
				dayRatio1[6] = String.valueOf(bean.getRatioday());
				dayObj1[6].put("type", "일요일");
				dayObj1[6].put("percent", dayRatio1[6]);
				dayObj1[6].put("color", "#8A0CCF");
				dayObj1[6].put("subs", subArray1[6]);
				totalArray1.add(dayObj1[6]);

			}
			if (bean.getRank() == 1 || bean.getRank() == 2 || bean.getRank() == 3) {
				JSONObject subObj = new JSONObject();
				subObj.put("type", bean.getMenuname());
				subObj.put("percent", bean.getRatiomenu());
				subArray1[6].add(subObj);
			}

		}

	}

	//현재페이지의 목록데이터
	out.print(totalArray1);

	 	PrintWriter pw = response.getWriter();
		pw.print(totalArray1);
		pw.flush();
		pw.close();  
%>