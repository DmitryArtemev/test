$(".regform").on('submit', (e) => {
  var data = $(e.target).serialize();
  console.log(data)
  if ($('#pass').val() === $('#repass').val() && isEmail($('#email').val()) && isPass($('#pass').val())) {
        $.ajax({
          type: 'POST',
          url: '/public/reguser',
          data: data,
          success: (res) => {
            if (res === "0") {
                $('.danger').remove();
              $('.regform .emmail').append('<span class="danger">Данная почта уже используеться</span>') }
            else {
              $(".left").fadeOut(500, () => $(".login").append("<span class='success'>Вы успешно зарегистрировались</span>"))
           }
          }
        })
        return false
      } else {
        $('.danger').remove();
        $('.regform .tit').append('<span class="danger">Поле запонено не верно</span>')
        return false
  }

})

$(".login").on('submit', (e) => {
  var data = $(e.target).serialize();
  console.log(data)
  $.ajax({
    type: 'POST',
    url: '/public/loguser',
    data: data,
    success: (res) => {
      if (res['name'] === undefined) {
          $('.login .input').css({"border": "2px solid tomato"})
      } else {
        $(".left").fadeOut(500)
        $(".right").fadeOut(500, () => $(".content").append('<h1 class="hellow">'+res['name']+', добро пожаловать!</h1>'))
      }
     }
  })
  return false
})

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email)
}
function isPass(pass) {
  var regex = /[a-zA-Z0-9]/;
  return regex.test(pass)
}
