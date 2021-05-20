
$(function(){
//변수 g에 크로스 도메인의 데이터를 가져올 수 있도록 구글 주소를 저장하였습니다.
  //var g="https://ajax.googleapis.com/ajax/services/feed/load?v=2.0&num=10&callback=?&q=";
  var g = "https://api.rss2json.com/v1/api.json?rss_url=";
   
   $("#news_wrap h2 a").on("click",
   function(e){
      e.preventDefault(); //<a> 태그에 링크를 차단하였습니다.
      $("#news_wrap h2 a").removeClass("on"); //<a>에 "on" class를 삭제합니다.
      $(this).addClass("on"); //클릭한 <a>에 class="on"을 생성합니다.
      $.ajax({
        url:g+$(this).attr("href"), //요청할 데이터 경로.
        dataType: "json", //요청할 데이터에 타입.
        success: function (data) { //성공적으로 요청했왔을 때...
        	//obj = JSONtoString(data);
            var obj = JSON.stringify(data);
        	alert(obj);
        	
        	$("#news_list").empty(); //<ul>에 하위 요소를 모두 제거합니다.
           //console.log(data.responseData.feed.entries);

           //$.each(data.responseData.feed.entries,function(i, d){
           $.each(data.items,function(i, d){
              if(i==5) return false;
              var title=d["title"]; //title 키의 값을 가져옵니다.
              //var date=new Date(d["publishedDate"]); //뉴스 작성 날짜 객체 생성
              var date=new Date(d["pubDate"]); //뉴스 작성 날짜 객체 생성
              //작성한 년-월-일 형식으로 변수 m에 저장합니다.
              var m=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
              var lk=d["link"];
              //앞서 구해온 데이터를 이용해 정보 목록 태그를 생성합니다.
              $("#news_list").append('<li><a href="'+lk+'" target="_blank">'+
              title+'</a> <span>'+m+'</span></li>');
           }); // “$.each” 메서드에 종료
        } // “success: function”에 종료
      }); // $.ajax() 메서드에 종료
   }); // 이벤트 on 메서드에 종료

  $("#news_wrap h2 a").eq(0).click(); //최초 첫 번째 탭 버튼을 강제로 클릭시킵니다.
});