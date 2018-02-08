var format = function(time, format){
    var t = new Date(time);
    var tf = function(i){return (i < 10 ? '0' : '') + i};
    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
    switch(a){
        case 'yyyy':
            return tf(t.getFullYear());
            break;
        case 'MM':
            return tf(t.getMonth() + 1);
            break;
        case 'mm':
            return tf(t.getMinutes());
            break;
        case 'dd':
            return tf(t.getDate());
            break;
        case 'HH':
            return tf(t.getHours());
            break;
        case 'ss':
            return tf(t.getSeconds());
            break;
        }
    }) 
}

function myFn(data){
		var botDiv =document.getElementsByClassName("botDiv")[0];
	    var strDiv ="<a href='javascript:;'><div class='everyday'><h1 class='title'></h1><h5 class='date'></h5><p class='content'></p></div></a>"
	    	for(var i=0;i<data.length;i++){
	    		botDiv.innerHTML +=strDiv;
	    		 	$('.date').eq(i).html(format(data[i].date,"yyyy-MM-dd"));
	    		 	$('.title').eq(i).html(data[i].title);
	    		 	$('.content').eq(i).html(data[i].content);
	    	}
		}