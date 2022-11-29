var swiper = new Swiper(".swiper-container", {
  centeredSlides: true,
  loop: true,
  loopedSlides: 2,
  spaceBetween: 15,
  autoplay: {
    delay: 3000,
    disableOnInteraction: true // 쓸어 넘기거나 버튼 클릭 시 자동 슬라이드 정지.
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
    type: 'fraction',
    formatFractionCurrent: function (number) {
      return '0' + number;
  },
    formatFractionTotal: function(number){
      return '0' + number
  }
  },

  // Navigation arrows
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  }

  // And if we need scrollbar
});

var swiper = new Swiper(".timesaleswiper", {
  centeredSlides: true,
  loop: true,
  spaceBetween: 150,

  // Navigation arrows

  // And if we need scrollbar
  loop:true,

  autoResize: false,
});

var swiper = new Swiper(".categoryswiper", {
  spaceBetween: 150,
  loop: true
});

AOS.init({
  disableMutationObserver: true,
  offset: 100,
});

var target = document.querySelectorAll('.btn_review');
var btnPopClose = document.querySelectorAll('.pop_wrap .btn_close');
var targetID;

// 팝업 열기
for(var i = 0; i < target.length; i++){
  target[i].addEventListener('click', function(){
    targetID = this.getAttribute('href');
    document.querySelector(targetID).style.display = 'block';
  });
}

// 팝업 닫기
for(var j = 0; j < target.length; j++){
  btnPopClose[j].addEventListener('click', function(){
    this.parentNode.parentNode.style.display = 'none';
  });
}
function linkToCart() {
	location.href='cartController';
  	window.open("recommendPopup/popup.html", "popup", "width=485, height=600, left=100, top=50");
	
}

