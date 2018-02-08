var table =document.getElementById('table');	
		var td = document.getElementsByTagName('td');
		var name1 = document.getElementsByClassName("name1"),
			type = document.getElementsByClassName('type'),
			address = document.getElementsByClassName('address'),
			money = document.getElementsByClassName('money'),
			num = document.getElementsByClassName('num'),
			date = document.getElementsByClassName('date'),
			duty = document.getElementsByClassName('duty'),
			welfare = document.getElementsByClassName('welfare'),
			requirement = document.getElementsByClassName('requirement');
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
		var arr =[];
		var str = "<tbody><tr class='tr'><td class='name1'></td><td class='type'></td><td class='address'></td><td class='money'></td><td class='num'></td><td class='date'></td></tr><tr class='tr1'><td class='duty' colspan='6'></td></tr><tr class='tr1'><td class='requirement' colspan='6'></td></tr><tr class='tr1'><td class='welfare' colspan='6'></td></tr></tbody>";
			function myfunc(data) {  //自己的函数   可以对data 这个数据对象进行操作或遍历数据  
			  		
				for(var i=0;i<data.length;i++){
					table.innerHTML += str;
					arr.push(data[i]);
					name1[i].innerHTML = data[i].name;
					type[i].innerHTML = data[i].type;
					address[i].innerHTML = data[i].address;
					money[i].innerHTML = data[i].salary;
					num[i].innerHTML = data[i].num;
					date[i].innerHTML = format(new Date( data[i].date ),"yyyy-MM-dd");
					duty[i].innerHTML = data[i].duty;
					requirement[i].innerHTML = data[i].requirement;
					welfare[i].innerHTML = data[i].welfare;
				}

			



			  (function ($) {
			    $(function () {
			        $('.table-expandable').each(function () {
			            var table = $(this);
			            table.children('tbody').children('.tr1').hide();
			            table.children('tbody').children('.tr').click(function () {
			                var element = $(this);
			                element.nextAll().toggle('slow');
			                element.find(".table-expandable-arrow").toggleClass("up");
			            });
			            table.children('tbody').children('.tr').each(function () {
			                var element = $(this);
			                element.append('<td><div class="table-expandable-arrow"></div></td>');
			            });
			        });
			    });
			})(jQuery); 
	
              

                 
            }  
			
			
			var i = 0;

			$(function () {
			    $(".img").eq(0).show().siblings().hide();
			    time();
			    $(".lab").hover(function () {
			        i = $(this).index();
			        clearInterval(timer);
			        show();
			    }, function () {
			        time();
			    });
			});
			function show() {
			    $(".img").eq(i).show().siblings().hide();
			    $(".lab").eq(i).addClass("lab1").siblings().removeClass("lab1");
			}
			function time() {
			    timer = setInterval(function () {
			        i++;
			        if (i == 6) {
			            i = 0;
			        }
			        show();
			    }, 3000);
			}