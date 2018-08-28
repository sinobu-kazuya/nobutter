$(function() {
  function buildHTML(comment){
    var html = `<div class="comment-showbox">
                  <div class="comment-delete">
                  </div>
                  <div class="comment-forname">
                    ${comment.tweet_nickname}
                  </div>
                  <div class="comment-nickname">
                    ${comment.user_nickname}
                  </div>
                  <div class="comment-time">
                    ${comment.time}
                  </div>
                  <div class="comment-text">
                    ${comment.text}
                  </div>
                </div>`
  return html;
}
  // function scroll(){
  //   $(".comment-show").animate({scrollTop: $('.coment-show')[0].scrollHeight}, 'fast');
  // }
  $("#new_comment").on("submit", function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      console.log(data);
      var html = buildHTML(data);
      $('.comment-show').append(html);
      $('.commentform__btn').prop('disabled', false);
      // scroll($('.comment-show'))
      $('#new_comment')[0].reset();
    })
    .fail(function(){
      alert('error');
    })
  })
})
