$(function(){
  $(".fab.fa-jenkins").on("mouseover", function(){
    $(this).animate({
      'marginTop': '1000px'
    }, 5000, function(){
      $(".fab.fa-jenkins").animate({
        'marginTop': '0px'
      }, 5000)
      .css({
      'color':'#FF0000'
    }, 500);
      $(".fab.fa-jenkins").fadeOut(2000);
  });
});
});
