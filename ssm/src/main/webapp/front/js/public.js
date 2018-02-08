$("#ull .ulword").hover(function(){
    $(this).find("dl").stop().slideToggle();
});
$(function(){

    $('.tab-group').tabify();
})
var img = document.getElementById('img1'),
    arr = ['images/img/bay.jpg','images/img/3ge/1.jpg','images/img/3ge/2.jpg','images/img/3ge/vral.jpg','images/img/sea.jpg'],
    videoUl = document.getElementById('video-ul'),
    li = videoUl.getElementsByTagName('li');
for(var i=0;i<arr.length;i++){
    li[i].index = i;
    li[i].onclick = function(){
        for(var j=0;j<li.length;j++){
            li[j].className = '';
        }
        this.className = 'active';
        img.src = arr[this.index];

    }
}