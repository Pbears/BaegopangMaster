<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- 

		�̰� �� ��ũ�� �ʿ������ ���� 
		
-->
<link href="/BaegopangMaster/css/question.css" rel="stylesheet" />
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<link rel="shortcut icon" href="../favicon.ico">
<!-- <link rel="stylesheet" type="text/css" href="../css/demo.css" /> -->
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="js/modernizr.custom.29473.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mid_src">
		<div id="data_table">
			<h1>1��1 ����</h1>
			<h6>��� �� ����</h6>
			<form action="" method="post" name="listFrm">
				<table class="bbsList" style="border-collapse: collapse;"
					border="1px solid black">
					<colgroup>
						<col width="80" />
						<col width="400" />
						<col width="200" />
						<col width="100" />
					</colgroup>
					<tr>
						<th scope="col" style="text-align: center;">�� ��ȣ</th>
						<th scope="col" style="text-align: center;">�� ����</th>
						<th scope="col" style="text-align: center;">���� ����</th>
						<th scope="col" style="text-align: center;">�� ��</th>
					</tr>
					<tbody>
						<tr>
							<div id="select">
								<th>2</th>
								<th>�޴��� �߰��ϰ� �;��~</th>
								<th>2017.06.25</th>
								<th>��� ��</th>
							</div>
						<tr>
												<tr>
							<div id="select">
								<th>1</th>
								<th>����Ʈ�� ������?</th>
								<th>2017.06.20</th>
								<th>�Ϸ�</th>
							</div>
						<tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="container">
			<h1>FAQ</h1>
			<section class="ac-container">
			<div>
				<input id="ac-1" name="accordion-1" type="radio" checked /> <label
					for="ac-1">�ַ� ���Ž� ������ �ϳ���</label>
				<article class="ac-small">
				<p>19�� �̻��� �ƴ϶��, û�ҳ⺸ȣ���� ���� �ַ� �ǸŰ� �����ǰ� �־� �ַ� ���� �ÿ��� �������� Ȯ����
					�ʿ��մϴ�. ���ŷο�ô��� ������ ���ֹ�ȭ�� ���� �������� �� ���Ÿ� ��Ź�帳�ϴ�. .</p>
				</article>
			</div>
			<div>
				<input id="ac-2" name="accordion-1" type="radio" /> <label
					for="ac-2">�Ǽ��� 4�κ��� ���׾��</label>
				<article class="ac-medium">
				<p>�ֹ���Ҵ� '�������' �� '�ֹ��Ϸ�'������ �� �����ϸ�, �� ���¿� ���� �Ʒ� ������� ����� �ֽø�
					�˴ϴ�..</p>
				</article>
			</div>
			<div>
				<input id="ac-3" name="accordion-1" type="radio" /> <label
					for="ac-3">�޴������� �󸶱��� �ֹ� �� �� �ֳ���?</label>
				<article class="ac-large">
				<p>�޴������� ���� ������ �ݾ��� ��Ż� �� ���κ��� ���̰� �ֽ��ϴ�. �ڼ��� �������� �ݾ��� ��Ż�� ����
					Ȯ���� �����մϴ�. .</p>
				</article>
			</div>
			<div>
				<input id="ac-4" name="accordion-1" type="radio" /> <label
					for="ac-4">ȸ��Ż�� �ϰ�;��</label>
				<article class="ac-large">
				<p>�� ���� �������� Ż���û�� �ϰ� �����ڰ� ��û�� ������ �ڵ����� Ż��ó���� �˴ϴ�..</p>
				</article>
			</div>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>