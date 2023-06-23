<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript">
	$(function() {
		
		// 빈 하트 누르면 빨간하트로, 빨간하트 한번 더 누르면 빈 하트로 바뀜
		// 찜 목록에 반영해야 함
		let num = 0;
		$('.heart').click(function() {
			if(num == 0) {
				$(this).attr("src", "../images/full_heart.png");
				num = 1;
			} else {
				$(this).attr("src", "../images/heart.png");
				num = 0;
			}
		})
	})
</script>

<style>
	.sitter { border:1px solid #ddddee; margin-bottom: 10px; }
	.sitter td { padding: 5px; }
	.sitter a { color: inherit; }
	#search { margin-bottom: 30px; }
	#searchT { width: 90%; margin-top: 20px; text-align: center; }
</style>

<div class="row">
		<div align="center" class="col-md-8 offset-md-2 my-4" >
			<h2 style="font-weight: bold">펫시터 찾기</h2>
		</div>
		<div align="center" class="col-md-9 offset-md-2" id="search">
		<!-- <form name="findDong" method="get" action=""> -->
			<table class="table table-borderless" id="searchT">
				<tr>
				<td style="width: 15%; vertical-align: middle;">지역 검색</td>
				<td style="width: 70%;">
					<input type="text" name="dong" id="dong" class="form-control"
							placeholder="동 이름을 입력하세요.(반포동)">
				</td>
				<td style="width: 15%;">
					<button type="button" id="btnfindSitter" class="btn btn-success">검색</button>
				</td>
				</tr>
			</table>
		<!-- </form> -->
		
	</div>
		<div class="col-md-9 offset-md-2 ">
			<div class="sitter">
				<table class="table table-borderless">
					<tr>
						<td rowspan="6" style="vertical-align: middle; text-align:center; width: 30%;">
							<img src="${myctx}/images/pet1.jpg" style="width: 200px">
						</td>
						<td style="font-size: 1em; font-weight: bold; padding: 5px; width: 60%;
									vertical-align: middle">
							닉네임 <!-- 전문가 인증이 되었다면 인증마크 --> 
						</td>
						<td style="text-align: right; width: 10%;">
							<!-- 클릭하면 빨간 하트로 이미지 바뀜. 찜목록에 반영 해야 함-->
							<img src="${myctx}/images/heart.png" class="heart" style="width: 25px">
							
						</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 1.2em; font-weight: bold;">
							<a href="${myctx}/shop/info">소개 제목</a>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em;">간단한 소개 (2~3줄)</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em; ">~~~~~</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em;">~~~~~</td>
					</tr>
					<tr>
						<td style="font-size: 1em; font-weight: bold;">서울시 서초구 반포동</td>
					</tr>
					
				</table>
			</div>
			
			<div class="sitter">
				<table class="table table-borderless">
					<tr>
						<td rowspan="6" style="vertical-align: middle; text-align:center; width: 30%">
							<img src="../images/pet1.jpg" style="width: 200px">
						</td>
						<td style="font-size: 1em; font-weight: bold; width: 60%;
									vertical-align: middle">
							닉네임 <!-- 전문가 인증이 되었다면 인증마크 --> 
						</td>
						<td style="text-align: right; width: 10%;">
							<!-- 클릭하면 빨간 하트로 이미지 바뀜. 찜목록에 반영 해야 함-->
							<img src="../images/heart.png" class="heart" style="width: 25px">
							
						</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 1.2em; font-weight: bold;">
							<a href="#">소개 제목</a>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em;">간단한 소개 (2~3줄)</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em;">~~~~~</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 0.9em;">~~~~~</td>
					</tr>
					<tr>
						<td style="font-size: 1em; font-weight: bold;">서울시 서초구 반포동</td>
					</tr>
					
				</table>
			</div>
		
		
		</div>
</div>