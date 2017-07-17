<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.MasterReplyDao"%>
<%@page import="mgopang.bean.MasterReplyBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="col-sm-12">
            <ul class="nav nav-pills nav-justified"
               style="border: 1px solid #ccc; margin-bottom: 200px">
               <li style="border: 1px solid #ccc;"><a href="#"
                  style="color: black;">상품정보</a></li>
               <li style="border: 1px solid #ccc;"><a href="#"
                  style="color: black;">이용가이드</a></li>
               <li style="border: 1px solid #ccc;"><a href="#"
                  style="color: black;">고객후기</a></li>
               <li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
                  href="#" style="color: black;">상품문의</a></li>
            </ul>

            <!-- 상품문의 -->

            <div class="col-sm-12" style="margin-bottom: 100px">

               <h2 align="center">Q & A</h2>
               <p align="center" style="margin-bottom: 100px">상품에 대해 궁금한 점을
                  문의해 주세요.</p>
               <br>
               <table class="table">
                  <thead>
                     <tr>
                        <th style="width: 5%; text-align: center;">no</th>
                        <th style="width: 70%; text-align: center;">subject</th>
                        <th style="width: 10%; text-align: center;">writer</th>
                        <th style="width: 10%; text-align: center;">date</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td style="text-align: center;">1</td>
                        <td><a data-toggle="collapse" href="#qacollapse1"
                           style="color: black;">좋아요</a>
                           <div id="qacollapse1" class="panel-collapse collapse"
                              style="margin-top: 15px;">
                              <ul class="list-group">
                                 <li class="list-group-item" style="border: 0">
                                    <form action="">
                                       <div class="input-group">
                                          <span class="input-group-addon"><i
                                             class="glyphicon glyphicon-lock"></i></span> <input
                                             id="password" type="password" class="form-control"
                                             name="password" placeholder="Password"
                                             style="width: 200px"> <a href="#"
                                             class="btn btn-default">확인</a>
                                       </div>
                                    </form>
                                 </li>
                              </ul>

                           </div></td>
                        <td style="text-align: center;">원빈</td>
                        <td style="text-align: center;">2017-07-03</td>
                     </tr>


                     <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                        <td>mary@example.com</td>
                     </tr>
                     <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                        <td>july@example.com</td>
                     </tr>
                  </tbody>
               </table>

               <!-- 페이징 -->
               <div class="container" align="center">
                  <ul class="pagination">
                     <li><a href="#">&lsaquo;</a></li>
                     <li><a href="#">1</a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                     <li><a href="#">&rsaquo;</a></li>
                  </ul>
               </div>




            </div>

         </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>