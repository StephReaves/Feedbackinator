$(document).ready(function () {
  $(".link").click(function(event){
    event.preventDefault();
    $.ajax({
      url: '/review/sent',
      type: 'GET',
      dataType: 'html'
    })
    .done(function(response) {


      console.log($('#sent_reviews'))

      $('#sent-feedback').empty().append($('#sent_reviews'))
    })

  })
});
