<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<style>
.container {
	width: 100%;
	height: 100%;
}

.map_content {
	width: 100%;
}

.top_menu {
	
	width: 100%;
	height: 50px;
	display: flex;
	flex-direction: row;
}

.logo_content {
	flex-basis: 80%;
	
}

.logo_content img {
	
}

.mobile_menu {
	flex-basis: 20%;
	
	margin: auto;
}

.mobile_menu ul {
	text-align: center;
	-webkit-margin-before: 10px;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 0px;
}

.mobile_menu li {
	padding-right: 10px;
	list-style: none;
}

.mobile_menu li i {
	font-size: 35px;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	top: 58px;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0);
}

.modal-content {
	margin: auto;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;

}

.modal_head {
	background:white;
	display: flex;
	flex-direction: row;
	height: 50px;
}



.modal_head li {
	list-style: none;
	float: left;
	padding: 10px;
}



.modal_head_mid {
	flex-basis: 80%;
	background: yellow;
	text-align: center;
	align-items: center;
	justify-content: center;
	
}

.modal_head_right {
	flex-basis: 20%;
	background: orange;
	margin: auto;
    text-align: center;
    font-size: 30px;
}



.fa-times{ 
	color: rgb(57, 135, 140); }
	
.info_box_pic{
	width: 100%;
    height: 220px;
    background: antiquewhite;}	
    
.info_box_pic_in{    padding-top: 10px;
    height: 195px;}    
    
.infoboxpicimg {

border-radius: 75%;
    border: solid 3px rgb(57, 135, 140);
    background: white;
    background-size: cover;
    background-repeat: no-repeat;
        width: 195px;
    height: 100%;
    background-position: 50% 50%;
    margin: auto;	}
	
.infoboxpicimg img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	border-radius: 50%;
}


.icon_list{		

	display:inline-block;
	width: 100%;
	height: 50px;
	background: tomato;
	display: inline-block;
}
.icon_box{
    margin: auto;
    width: 335px;
    height: 100%;
    background: aquamarine;
}
.icon_list ul{		
	    display: inline-block;
    -webkit-margin-before: -1px;
    -webkit-margin-after: 0px;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 22px;
}

.icon_list li{	
	list-style: none;
	float: left;	
	font-size: 30px;
	padding-left: 15px;
	padding-top: 4px;
	
}
.icon_list li:first-child{ padding-left: 0px;}

.icon_div{
		width: 40px; 
		height: 40px; 
		border:solid 3px rgb(57, 135, 140); 
		border-radius: 50%;
	    text-align: center; }
	
.fa-wheelchair{    
		padding-top: 4px;
		padding-left: 3px;
        padding-top: 3px;
        }	
    
.fa-male, .fa-female, .fa-child{ padding-left: 0px;padding-top: 4px;}    

.icon_div img{ width: 40px; height: 35px;}
	
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="//apis.daum.net/maps/maps3.js?apikey=c9dbe1356aa85945e1921ff02435ec1a"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">


		<div class="top_menu">
			<div class="logo_content">
				<img alt="logo" src="img/logo.png">

			</div>

			<div class="mobile_menu">
				<ul>
					<li><i class="fa fa-reorder"></i></li>
				</ul>
			</div>


		</div>

		<div class="map_content">
			<div id="map" style="width: 100%; height: 800px;"></div>
		</div>




		<div id="myModal" class="modal">

			<div class='modal-content'>

				<div class="modal_head">

					

					<div class="modal_head_mid">
						<p><span>title</span></p>
					</div>

					<div class="modal_head_right" id="close">
						
							
								<i class="fa fa-times"></i>
							
				
					</div>


				</div>

				

				<div class="info_box_pic">
					<div class="info_box_pic_in">
						<div class="infoboxpicimg">
							<img alt="image" src="img/KakaoTalk_20170614_102810869.png">
						</div>
					</div>
				</div>
				
				<div class="icon_list">
					<div class="icon_box">
						<ul>
							<li>
								<div class="icon_div">
									<span><i class="fa fa-wheelchair" style="font-size:30px;"></i></span>
								</div>
							</li>
							<li>
								<div class="icon_div">
									<i class="fa fa-male" style="font-size:30px; color: blue;"></i>
								</div>
							</li>
							<li>
								<div class="icon_div">
									<i class="fa fa-female" style="font-size:30px; color: red;"></i>
								</div>
							</li>
							<li>
								<div class="icon_div">
									<i class="fa fa-child" style="font-size:26px;color: yellow;"></i>
								</div>
							</li>
							<li>
								<div class="icon_div">
									<img src='img/남녀공용.png' alt="5">
								</div>
							</li>
						</ul>
					</div>
				</div>


			</div>

		</div>





	</div>


</body>

<script>


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨//레벨별 위도상의 변화 폭( 1cm단위 측정해야함.)
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {

// GeoLocation을 이용해서 접속 위치를 얻어옵니다
navigator.geolocation.getCurrentPosition(function(position) {
 
 var lat = position.coords.latitude, // 위도
     lon = position.coords.longitude; // 경도
 
 var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
     message = '<div style="">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
 
 // 마커와 인포윈도우를 표시합니다
 displayMarker(locPosition, message);
     
});

} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
 message = 'geolocation을 사용할수 없어요..'
 
displayMarker(locPosition, message);
}
function displayMarker(locPosition, message) {

// 마커를 생성합니다
var marker = new daum.maps.Marker({     
    map: map, 
    position: locPosition
}); 

var iwContent = message, // 인포윈도우에 표시할 내용
    iwRemoveable = true;

// 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
    content : iwContent,
    removable : iwRemoveable
});

// 인포윈도우를 마커위에 표시합니다 
infowindow.open(map, marker);

// 지도 중심좌표를 접속위치로 변경합니다
map.setCenter(locPosition);      
}    






var positions = [
{
    title: '왕십리황소곱창화장실', 
    latlng: new daum.maps.LatLng(37.566056407918865, 127.03026118764767) ,
     no:'1'
},
{
    title: '도로화장실', 
    latlng: new daum.maps.LatLng(37.56487608575024, 127.03032862276235 ),
    no:'2'
},
{
    title: '우체국화장실', 
    latlng: new daum.maps.LatLng(37.56643452460645, 127.03141587835236),
    no:'3'
},
{
    title: '115동화장실',
    latlng: new daum.maps.LatLng(37.56723708870881, 127.0287562224516),
    no:'4'
},

{
    title: 'test',
    latlng: new daum.maps.LatLng(37.44027486137544, 127.14269030786596),
    no:'5'
},

{
    title: 'test2',
    latlng: new daum.maps.LatLng(37.44493643096145, 127.13990789714592),
    no:'6'
}
];
//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 

//마커 이미지의 이미지 주소입니다

var markers= Array();
var imageSrc = "img/Household-Toilet-Pan-icon.png"; 
imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
for (var i = 0, len = positions.length; i < len; i++) {

    
// 마커를 생성하고 지도위에 표시합니다
addMarker(positions[i]);
}

//마커를 생성하고 지도 위에 표시하고, 마커에 mouseover, mouseout, click 이벤트를 등록하는 함수입니다
function addMarker(position) {

	var imageSrc = "img/화장실.png"; 
	   imageSize = new daum.maps.Size(44, 49), // 마커이미지의 크기입니다
	   imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	   var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
	    
	   var marker = new daum.maps.Marker({
	        map: map,
	        position: position.latlng,
	        title: position.title,
	        clickable: true,
	        image: markerImage
	        
	    });
	


daum.maps.event.addListener(marker, 'click', function() {
   var modal = $("#myModal");
  
   
        var modalImg =$(".modal-content");
        var mcdiv=$("#mcdiv");
          modal.show();
          
 
     modalImg.on("click",function(e){
     e.stopPropagation();
      return null;
   });
     $("#close").on("click",function(e){
    
       modal.hide();
       
   });
console.log(position.no);
});
}











	</script>

<script>
/* 
var windowWidth = $( window ).width();

$( window ).resize(function() {
	
 if($( window ).width() < 960){
	//너비가 960 미만일 경우
	
	$(".map_content").css("width","100%");
	$(".modal").css("width","100%");
	$(".sidebar").hide();
	
	
	}else{
		//너비가 960 보다 클 경우
		$(".map_content").css("width","70%");
		$(".modal").css("width","70%");
		$(".sidebar").show();
		
	}
	

	
}); 
 */


	function opensidebar(){
		
	}
</script>




</html>