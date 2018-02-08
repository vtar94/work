window.onload = function(){
    var input = document.getElementById("image_t");
    var result,div;

    if(typeof FileReader==='undefined'){
        result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
        input.setAttribute('disabled','disabled');
    }else{
        input.addEventListener('change',readFile,false);
    }//handler




    var dataArr = null; //直接传base64数据
    var fd = null;  //FormData方式发送请求

    function readFile(){
        dataArr = { data : [] };
        fd = new FormData();
        var iLen = this.files.length;
        for(var i=0;i<iLen;i++){
            if (!input['value'].match(/.jpg|.gif|.png|.bmp/i)){//判断上传文件格式
                return alert("上传的图片格式不正确，请重新选择");
            }
            var reader = new FileReader();
            fd.append(i,this.files[i]);
            reader.readAsDataURL(this.files[i]);  //转成base64
            var fileName = this.files[i].name;
            reader.onload = function(e){
                var imgMsg = {
                    name : fileName,//获取文件名
                    base64 : this.result   //reader.readAsDataURL方法执行完后，base64数据储存在reader.result里
                }
                dataArr.data.push(imgMsg);
                result = '<div style="display:none" class="result" ><img src="'+this.result+'" alt=""/></div>';
                div = document.createElement('div');
                div.innerHTML = result;
                div['className'] = 'float';
                document.getElementsByTagName('body')[0].appendChild(div);  //插入dom树
                var img = div.getElementsByTagName('img')[0];
                img.onload = function(){
                    var nowHeight = ReSizePic(this); //设置图片大小
                    this.parentNode.style.display = 'block';
                    var oParent = this.parentNode;
                    if(nowHeight){
                        oParent.style.paddingTop = (oParent.offsetHeight - nowHeight)/2 + 'px';
                    }
                }
            }
        }


    }


    function send(){
        $.ajax({
            url : 'http://123.206.89.242:9999',
            type : 'post',
            data : dataArr,
            dataType: 'json',
            success : function(data){
                console.log('返回的数据：'+JSON.stringify(data))
            }
        })
    }

    var oBtn = document.getElementsByTagName('btn_b')[0];
    oBtn.onclick=function(){
        if(!input.files.length){
            return alert('请先选择文件');
        }
        send();
    }
}



function ReSizePic(ThisPic) {
    var RePicWidth = 200; //宽度值

    var TrueWidth = ThisPic.width; //图片实际宽度
    var TrueHeight = ThisPic.height; //图片实际高度

    if(TrueWidth>TrueHeight){
        //宽大于高
        var reWidth = RePicWidth;
        ThisPic.width = reWidth;
        //垂直居中
        var nowHeight = TrueHeight * (reWidth/TrueWidth);
        return nowHeight;  //图片修改后的高度返回，垂直居中用
    }else{
        //宽小于高
        var reHeight = RePicWidth;
        ThisPic.height = reHeight;
    }
}
