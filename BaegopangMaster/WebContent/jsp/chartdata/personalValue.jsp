<%-- <%@ page import="java.util.Set"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="premier.bean.PlayerBean"%>
<%@ page import="java.util.List"%>
<%@ page import="premier.dao.PlayerDao"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="java.io.PrintWriter"%>
<%
	PlayerDao dao = new PlayerDao();
	String playerno = "27";
  
	PlayerBean bean = dao.selectOnePlayer(playerno);

	String json = 
				"[" + 
					"{ \"ability\" : \"leadership\"," + 
					"\"value\" : \"" + bean.getLeadership()  + "\"" +
					"}, {" +
					"\"ability\" : \"positionStat\"," + 
					"\"value\" : \"" + bean.getPositionStat()  + "\"" +
					"}, {" +
					"\"ability\" : \"recommendedPosition\"," + 
					"\"value\" : \"" + bean.getRecommendedPosition()  + "\"" +
					"}, {" +
					"\"ability\" : \"potential\"," + 
					"\"value\" : \"" + bean.getPotential()  + "\"" +
					"}, {" +
					"\"ability\" : \"stamina\"," + 
					"\"value\" : \"" + bean.getStamina()  + "\"" +
					"}, {" +
					"\"ability\" : \"physical\"," + 
					"\"value\" : \"" + bean.getPhysical()  + "\"" +
					"}, {" +
					"\"ability\" : \"composure\"," + 
					"\"value\" : \"" + bean.getComposure()  + "\"" +
					"}, {" +
					"\"ability\" : \"longRangeShot\"," + 
					"\"value\" : \"" + bean.getLongRangeShot()  + "\"" +
					"}, {" +
					"\"ability\" : \"shootingAccuracy\"," + 
					"\"value\" : \"" + bean.getShootingAccuracy()  + "\"" +
					"}, {" +
					"\"ability\" : \"shootingPower\"," + 
					"\"value\" : \"" + bean.getShootingPower()  + "\"" +
					"}, {" +
					"\"ability\" : \"freeKick\"," + 
					"\"value\" : \"" + bean.getFreeKick()  + "\"" +
					"}, {" +
					"\"ability\" : \"pace\"," + 
					"\"value\" : \"" + bean.getPace()  + "\"" +
					"}, {" +
					"\"ability\" : \"acceleration\"," + 
					"\"value\" : \"" + bean.getAcceleration()  + "\"" +
					"}, {" +
					"\"ability\" : \"dribble\"," + 
					"\"value\" : \"" + bean.getDribble()  + "\"" +
					"}, {" +
					"\"ability\" : \"longPass\"," + 
					"\"value\" : \"" + bean.getLongPass()  + "\"" +
					"}, {" +
					"\"ability\" : \"cross\"," + 
					"\"value\" : \"" + bean.getCross() + "\"" +
					"}, {" +
					"\"ability\" : \"pass\"," + 
					"\"value\" : \"" + bean.getPass() + "\"" +
					"}, {" +
					"\"ability\" : \"reaction\"," + 
					"\"value\" : \"" + bean.getReaction() + "\"" +
					"}, {" +
					"\"ability\" : \"individualSkill\"," + 
					"\"value\" : \"" + bean.getIndividualSkill() + "\"" +
					"}, {" +
					"\"ability\" : \"tackle\"," + 
					"\"value\" : \"" + bean.getTackle() + "\"" +
					"}, {" +
					"\"ability\" : \"marking\"," + 
					"\"value\" : \"" + bean.getMarking() + "\"" +
					"}, {" +
					"\"ability\" : \"heading\"," + 
					"\"value\" : \"" + bean.getHeading() + "\"" +
					"}, {" +
					"\"ability\" : \"positiveness\"," + 
					"\"value\" : \"" + bean.getPositiveness() + "\"" +
					"}, {" +
					"\"ability\" : \"handling\"," + 
					"\"value\" : \"" + bean.getHandling() + "\"" +
					"}, {" +
					"\"ability\" : \"reflexes\"," + 
					"\"value\" : \"" + bean.getReflexes() + "\"" +
					"}, {" +
					"\"ability\" : \"diving\"," + 
					"\"value\" : \"" + bean.getDiving() + "\"" +
					"}, {" +
					"\"ability\" : \"POSITIONING\"," + 
					"\"value\" : \"" + bean.getPositioning()  + "\"" +
					"}" +
				"]";
	
	System.out.println(json);
	
	PrintWriter pw = response.getWriter();
	pw = response.getWriter();
	pw.print(json);
	pw.flush();
	pw.close();
	
%>
 --%>