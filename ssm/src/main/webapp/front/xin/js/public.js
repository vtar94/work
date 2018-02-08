$("#ull .ulword").hover(function(){
    $(this).find("dl").stop().slideToggle();
})
$(function(){

    $('.tab-group').tabify();
})