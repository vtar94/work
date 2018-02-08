var d = jQuery.noConflict();	
	d(document).ready(function(){
	d("#controls li a").click(function(){
        /*Performed when a control is clicked */
	    var rel = d(this).attr("rel");
	    if ( d("#" + rel).hasClass("current") ){
	        return false;
	    }
	    d("#" + rel).stop(true,true).show();
	    d(".current").removeClass("current").css("display","none");
	    d("#" + rel).addClass("current");
	    d(".active").removeClass("active");
	    d(this).parents("li").addClass("active");
	    //set_new_interval(5000);
	    return false;
	});

    });
    function banner_switch(){
        /*This function is called on to switch the banners out when the time limit is reached */
        var next = d('.current').next('.banner').length ? 
            d('.current').next('.banner') : d('#banners div:first');
		d(next).fadeIn("slow");
        d(".current").removeClass("current").css("display","none");
        d(next).addClass("current");
        var next_link = d(".active").next("li").length ? d('.active').next('li') : d('#controls li:first');
        d(".active").removeClass("active");
        d(next_link).addClass('active');
    }
    d(function() {
        /*Initial timer setting */
        timer = setInterval("banner_switch()", 5000);
    });
    function set_new_interval(interval){
        /*Simply clears out the old timer interval and restarts it */
        clearInterval(timer);
        slide = setInterval("banner_switch()", interval);
    }

