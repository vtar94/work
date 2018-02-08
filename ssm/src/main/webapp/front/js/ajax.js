
		function ajax_all_Filed(sync, cache, type, url, datatype, data, func) { //封装ajax的一些常用参数  //data数据可以为空  
                $.ajax({  
                    sync: sync,  
                    cache: cache,  
                    type: type,  
                    url: url,  
                    dataType: datatype,  
                    data: data,  
                    beforSend: function () {  
                        // 禁用按钮防止重复提交  
                        $("#submit").attr({disabled: "disabled"});  
                    },  
                    error: function (data) {  
                        //请求失败时被调用的函数   
                        alert("传输失败:" + data);  
                    },  
                    success: function (data) {  
                        func(data);  
                    }  
                });  
            }  






