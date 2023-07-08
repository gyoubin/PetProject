<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.container {
		width: 1000px;
		margin: auto;
		text-align: center;	
		/* margin-top:100px; */
		margin-bottom:100px;
		font-family: 'omyu_pretty';
		font-size: 1.2em;
	}
	
	table {
		margin-left: auto;
		margin-right: auto;
		border-collapse: separate;
		border-spacing: 10px 30px;
	}
	
	input[type=text] {
		width: 500px;
	}
	.m1{
		text-align:right;
	}
	.m2{
		text-align:left;
	}
	img { width: 130px; }
	
	#menu { font-family: 'KOTRAHOPE'; font-size:2.2em; }
	.btn { font-size: 1em; }
</style>

<script>
	function check() {		
		if($('#title').val()==""){
			alert("제목을 입력하세요");
			$('#title').focus();
			return;			
		}
		if($('#simpleIntroduce').val()==""){
			alert("간단한 소개를 입력하세요");
			$('#simpleIntroduce').focus();
			return;			
		}
		if($('#addr').val()==""){
			alert("지역을 입력하세요");
			$('#addr').focus();
			return;			
		}
		if($('#tagValue').val()==""){
			alert("태그를 입력하세요");
			$('#tagValue').focus();
			return;			
		}		
		var cnt=$('input[name=service]:checkbox:checked').length;
		if(cnt<1){
			alert("이용가능 서비스를 1개 이상 선택해주세요");
			return;
		}
		if($('#introduce').val()==""){
			alert("소개 글을 입력하세요");
			$('#introduce').focus();
			return;			
		}
		
		var obj=$("[name=tagValue]");
		const arr= obj.val().split(" ");
		$('#tag').val(arr);
		
		
		mf.submit();
	}
	
</script>
<div class="container">
	<div align="center" class="col-md-8 offset-md-2 my-4" >
		<h2 id="menu">펫시터 소개 수정</h2>
	</div>
	<form name="mf" action="info" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td width="20%" class="m1"><b>소개 제목</b></td>
				<td width="80%" class="m2">
					<input type="text" name="title" id="title" class="form-control">
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>간단한 소개 (2~3줄)</b></td>
				<td width="80%" class="m2">
					<textarea class="form-control" name="short_content" id="short_content" rows="3" cols="65" 
							placeholder="(글자 수)내로 간단한 소개를 입력해주세요."></textarea>
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>지역</b></td>
				<td width="80%" class="m2">
					<input type="text" name="addr"id="addr" class="form-control" 
							placeholder="동 이름까지 입력하세요. 예)서울시 강남구 논현동">
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>태그</b></td>
				<td width="80%" class="m2">
					<input type="text" name="tagValue" id="tagValue" class="form-control"
					placeholder="예) #3인가구 #아파트 #단독주택 #반려동물있어요 등">
				</td>
				<td>
					<input type="hidden" name="tag" id="tag" value=""/>
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>이용가능 서비스</b></td>
				<td width="80%" style="text-align: left;">아래 목록에서 선택 하세요.</td>
			</tr>
		</table>
			
		<table>
			<tbody class="test">
				<tr>
					<td width="20%">
						<p><input type="checkbox" name="service" value="1"></p> 
						<img src="${myctx}/images/1.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="2"></p> 
						<img src="${myctx}/images/2.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="3"></p> 
						<img src="${myctx}/images/3.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="4"></p> 
						<img src="${myctx}/images/4.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="5"></p> 
						<img src="${myctx}/images/9.jpg">
					</td>
					
				</tr>
				<tr>
					<td width="20%">
						<p><input type="checkbox" name="service" value="6"></p> 
						<img src="${myctx}/images/5.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="7"></p> 
						<img src="${myctx}/images/6.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="8"></p> 
						<img src="${myctx}/images/7.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="9"></p>
						<img src="${myctx}/images/8.jpg">
					</td>
					<td width="20%">
						<p><input type="checkbox" name="service" value="10"></p>
						<img src="${myctx}/images/10.jpg">
					</td>
				</tr>
			</tbody>
		</table>
	
		<table>
			<tr>
				<td width="20%" class="m1"><b>소개 글</b></td>
				<td width="80%" class="m2">
					<textarea class="form-control" name="content" id="content" rows="10" cols="70"
							placeholder="(글자 수)내외로 소개글을 작성해주세요. 펫을 돌볼 집의 환경에 대해 자세하게 작성해주세요."></textarea>
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>파일 업로드</b></td>
				<td width="80%" class="m2">
					<input type="file" name="ufile" id="ufile" class="form-control-file">
				</td>
			</tr>			
		</table>
		<button type="button" class="btn btn-outline-success" onclick="check()">등록/수정</button>
	</form>
</div>
