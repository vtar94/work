(function(win,doc){
            function change(){
                 doc.documentElement.style.fontSize=doc.documentElement.clientWidth*20/320+'px';
            }
            change();
            win.onresize=change;
        })(window,document);