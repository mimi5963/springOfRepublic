$(function (){
  // Initialize datepicker
  $(".j-datePicker").datepicker({
    dateFormat: 'yy-mm-dd',
    showOtherMonths: true,
    showMonthAfterYear: true,
    changeYear: true,
    changeMonth: true,
    showOn: "both",
    buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
    buttonImageOnly: true,
    buttonText: "선택",
    yearSuffix: "년",
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
    minDate: "0",
    maxDate: "+1Y",
    onSelect: function(dateText, inst) {
      // 날짜를 선택했을 때 처리할 작업을 여기에 작성
      console.log("선택된 날짜: " + dateText);

      // 예시로 선택한 날짜를 alert로 출력
      alert("선택된 날짜: " + dateText);

      // 선택된 날짜의 시간 리스트 출력
      $.ajax({
        type: 'POST',
        url: 'http://localhost:8085/restaurant/reservation',
        contentType: 'application/json',
        data: JSON.stringify({
          "restaurant_id": restaurant_id,
          "cur_date": dateText
        }),
        dataType: 'json',
        success: function (response) {
          var html = '';

          response.forEach(function(time) {
            html += `<div class="j-timeAndPeopleBox">
                        <span class="j-people">2명</span>
                        <div class="j-time">
                          <span>${time}</span>
                        </div>
                      </div>`;
          });

          $('.j-date-circle-box').html(html);
        },
        error: function (xhr, status, error) {
          console.error("AJAX 요청 실패:", status, error);
        }
      })
    }
  });
})