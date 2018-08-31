$(function(){
  $(".delete_alert").on('click', function(){
    if(window.confirm("ツイートを削除しますがよろしいですか？")) {
      location.href = $(this).attr('href');
      } else {
    return false;
    }
  });
});
