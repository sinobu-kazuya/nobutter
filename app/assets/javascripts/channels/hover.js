$(function(){

  $(".fab.fa-houzz").hover(function(){
    $(this).css("border-bottom", "3px solid #1DA1F2");
    $(this).css("color", "#1DA1F2");

  }, function() {
    $(this).css("border-bottom", "#fff");
    $(this).css("color", "#000");
  });
  $(".fab.fa-earlybirds").hover(function(){
    $(this).css("border-bottom", "3px solid #1DA1F2");
    $(this).css("color", "#1DA1F2");

  }, function() {
    $(this).css("border-bottom", "#fff");
    $(this).css("color", "#000");
 });
  $(".far.fa-bell").hover(function(){
    $(this).css("border-bottom", "3px solid #1DA1F2");
    $(this).css("color", "#1DA1F2");

  }, function() {
    $(this).css("border-bottom", "#fff");
    $(this).css("color", "#000");
 });
  $(".far.fa-envelope").hover(function(){
    $(this).css("border-bottom", "3px solid #1DA1F2");
    $(this).css("color", "#1DA1F2");

  }, function() {
    $(this).css("border-bottom", "#fff");
    $(this).css("color", "#000");
 });
  $(".fab.fa-twitter").on("mouseover",function(){
    $(this).css(
      "color", "#1DA1F2",
      );
  })
});
