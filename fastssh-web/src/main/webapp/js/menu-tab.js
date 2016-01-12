//右键菜单
var closeTab = function(target){
    $.tabs.close(target);
};
var tabMenu = {};
tabMenu['refresh_menu'] = {icon:'icon-refresh',text:'刷新菜单',click:closeTab}
tabMenu['close_menu'] = {text:'关闭菜单',click:closeTab};
tabMenu['s1'] = '------------------------------'
tabMenu['close_other_menu'] = {text:'关闭其他菜单',click:closeTab}
tabMenu['close_all_menu'] = {text:'关闭所有菜单',click:closeTab}

$.fast={
    init: function () {
        $.menu.init();
        $.tabs.init();
        $.iframe.init();
        $(".tabs-menu > .nav-tabs > li").contextMenu(tabMenu);
        $(".tab-close").click(function(){
            $.tabs.close(this);
        });
    },
    options : {
        tabWidth:125,
        animationSpeed: 500,
        tabMaxLength: 20,
        tabIndex:0,
        cursor:0,
        tabMinOffset:150,
        offset : 50,
        top : 40,
    }
};

$.tabs={
    init : function () {
        var tabs = $(".tabs-menu > .nav-tabs > li");
        $.fast.options.tabIndex = tabs.length;
        $.each(tabs,function(index,element){
            $(element).attr("data-cursor",index + 1);
            $(element).attr("id","tabs-" + (index + 1));
        });
        $("#tabs-1").click(function(){
            $.tabs.active(null,null,$(this).attr("id"),false);
            var menu = $(this).data("menu");
            if(menu){
                $.menu.active($("#" + menu),true);
            }
            event.stopPropagation();
        });
        $.tabs.button();
        $.tabs.scrollCheck();
    },
    active: function(title,url,id,isNew,isMenu){
        var handler = function(element,id,url){
            //先处理原有的标记
            var li = $(".tabs-menu > .nav-tabs > .active");
            //先删除class
            $(li).removeClass("active");
            $("> a",li).attr("aria-expanded",false);
            //激活现有的
            $(element).addClass("active");
            $("> a",element).attr("aria-expanded",true);
            $.tabs.scroll(element);
            $.iframe.active(url,id);
        }
        var callback = function(element,id,url){
            $(element).click(function(){
                $.tabs.active(null,null,$(this).attr("id"),false);
                var menu = $(this).data("menu");
                if(menu){
                    $.menu.active($("#" + menu),true);
                }
                event.stopPropagation();
            })
            handler(element,id,url);
        }
        if(isNew){
            $.tabs.create(title,url,id,callback);
        }else{
            var element
            if(isMenu){
                element = $("li[data-menu='"+id+"']");
            }else{
                element = $("#" + id);
            }
            id = $(element).attr("id");
            handler(element,id);
        }

    },
    create : function (title,url,id,callback) {
        var li = $("<li data-menu='"+id+"'></li>").appendTo($(".tabs-menu > .nav-tabs"));
        var span = $("<span class='tab-close'><i class='fa fa-fw fa-close' title='关闭'></i></span>").appendTo(li);
        $(span).click(function(){
            closeTab(this);
        })
        var a = $("<a href='#settings' data-toggle='tab' data-src='"+url+"' aria-expanded='false'>"+title+"</a>").appendTo(li);
        $.fast.options.tabIndex++
        var tab_id = "tabs-" + $.fast.options.tabIndex;
        $(li).attr("data-cursor", $.fast.options.tabIndex);
        $(li).attr("id",tab_id);
        callback(li,tab_id,url);
        $.tabs.scrollCheck();
    },
    close : function(element){
        element = $(element).hasClass("tab-close") ? $(element).parent("li") : element;
        var iframe = $("iframe[data-tab='"+$(element).attr("id")+"']");
        var next = $(element).nextAll();
        $.each(next,function(){
            var old = $(this).attr("id");
            var id = parseInt($(this).attr("id").replace("tabs-","")) - 1;
            $(this).attr("id","tabs-" + id);
            $.iframe.edit(old,id);
        });
        var perv = $(element).prevAll(":hidden");
        if(perv.length > 0 ){
            $(perv[0]).toggle("slow",null,true);
            $.fast.options.cursor--;
        }
        //判断元素是否是激活的
        if($(element).hasClass("active")){
            var nextEelement = $(element).prev();
            $.tabs.active(null,null,$(nextEelement).attr("id"),false);
        }
        //删除相应菜单ID
        var menu = $(element).data("menu");
        if(menu){
            $("#" + menu).removeAttr("id");
        }
        $.iframe.close(iframe);
        $(element).remove();
        $.fast.options.tabIndex--;
        if($.fast.options.tabIndex == 1){
            if(!$("#tabs-1").hasClass("active")){
                $.tabs.active(null,null,"tabs-1",false);
            }

        }
        $.tabs.scrollCheck();
    },
    button : function(){
        $("#button-move-left").click(function(){
            if($.fast.options.cursor == $.fast.options.tabIndex - $.tabs.tabNum()){
                $("#button-move-left").hide();
                return;
            }
            $.fast.options.cursor++;
            $("#tabs-" + $.fast.options.cursor).toggle("slow",null,false);
            $.tabs.scrollCheck();
        })
        $("#button-move-right").click(function(){
            if($.fast.options.cursor == 0) {
                $("#button-move-right").hide();
                return;
            }
            $("#tabs-" + $.fast.options.cursor).toggle("slow",null,true);
            $.fast.options.cursor--;
            $.tabs.scrollCheck();
        })
    },
    scroll : function(element){
        if($(element).is("li")){
            if($(element).is(":hidden")){
                var next = $(element).nextAll(":hidden");
                $.each(next,function(){
                    $(this).show();
                });
                $(element).toggle("slow",null,true);
                var prev = $(element).prevAll();
                if(prev.length < $.tabs.tabNum()){

                   var tabs = $.tabs.elementSort(prev);
                    while (tabs.length > 0){
                        var li = tabs.shift();
                        $(li).toggle("slow",null,true);
                        $.fast.options.cursor = 0;
                    }
                }else{
                    var tabs = $.tabs.elementSort(prev, $.tabs.tabNum());
                    while (tabs.length > 0){
                        var li = tabs.shift();
                        $(li).toggle("slow",null,true);
                        $.fast.options.cursor = $.tabs.tabNum() + 1;
                    }
                }
            }else{
                var prev = $.tabs.elementSort($(element).prevAll(":visible"));
                var num =$.tabs.tabNum();
                while ( prev.length - num >= 0 ){
                    var li = prev.pop();
                    $.fast.options.cursor ++;
                    $(li).toggle("slow",null,true);
                }
            }
            $.tabs.scrollCheck();
        }
    },
    scrollCheck: function(){
        if($.fast.options.cursor == $.fast.options.tabIndex - $.tabs.tabNum()){
            $("#button-move-left").hide();
        }if($.fast.options.cursor >= 0){
            $("#button-move-right").show();
        }if($.fast.options.cursor == 0){
            $("#button-move-right").hide();
        }if($.fast.options.cursor < $.fast.options.tabIndex - $.tabs.tabNum()){
            $("#button-move-left").show();
        }if($.tabs.tabNum() > $.fast.options.tabIndex){
            $("#button-move-left").hide();
            $("#button-move-right").hide();
        }
    },
    tabNum : function(){
        return Math.floor($("#menu-tabs-box").width()/ $.fast.options.tabWidth) - 1;
    },
    elementSort:function(array,index){
        var num = 0;
        if(index){
            num = index;
        }
        var tabs = new Array();
        for(var i = 0;i<array.length - num;i++){
            tabs.push(array[i])
        }
        return tabs;
    }

};
$.menu={
    tabs : null,
    init : function(){
        var menus = $("#system_menu").find(".fast-system-menu")
        $.each(menus,function(){
            $.menu.bind(this);
        })
    },
    active : function(element,isTab){
        //删除原来激活
        var treeView = new Array();
        var activeClass = function(element){
            var Clazz = $(element).hasClass("sidebar-menu");
            if(Clazz){
                return;
            }
            var parentElement = $(element).parent();
            if($(element).hasClass("treeview-menu")){
                treeView.push(element);
            }
            if(!$(element).is("li")){
                activeClass(parentElement)
            }else{
                $(element).addClass("active");
            }
            activeClass(parentElement);
        }
        var closeMenu = function(elements){
            var clazz = "treeview-menu";
            var element = elements.pop();
            if($(element).hasClass(clazz)){
                //修改原元素Clazz为临时值
                $(element).removeClass(clazz);
                $.each(elements, function () {
                   $(this).removeClass(clazz)
                });
                $(".treeview-menu:visible").slideUp($.fast.options.animationSpeed,function(){
                    $(this).removeClass("menu-open");
                })
                $(element).addClass(clazz);
                $.each(elements,function(){
                    $(this).addClass(clazz);
                })
            }
        }
        var openMenu = function(elements){
            if(elements && elements instanceof Array && Array.length > 0){
                //查看是否有其他展开项
                $.menu.tabs = elements.slice(0);
                if(isTab){
                    closeMenu(elements);
                }
                var element = $.menu.tabs.pop();
                $(element).slideDown($.fast.options.animationSpeed,function(){
                    $(element).addClass('menu-open');
                });
                 while ($.menu.tabs.length > 0){
                    var element = $.menu.tabs.pop();
                    $(element).slideDown($.fast.options.animationSpeed,function(){
                        $(element).addClass('menu-open');
                    });
                }
            }
        }

        $("#system_menu").find(".active").removeClass("active");
        var parentElement = $(element).parent();
        activeClass(parentElement);
        openMenu(treeView);
    }
    ,
    bind : function(element){
        $(element).click(function(){
            var url = $(this).data("src");
            var title = $(this).text();
            if(title.length > 10){
                title = title.substring(0,10) + ".."
            }
            var isNew = false;
            var id = $(this).attr("id");
            if(!id){
                isNew = true;
                id = 'menu-' + $.fast.options.tabIndex;
                $(this).attr("id",id);
            }
           $.menu.active(this,false);
           $.tabs.active(title,url,id,isNew,true);

        });
    },
};
$.iframe={
    init : function(){
        $.iframe.height("iframe_1");
    },
    height:function(element){
        $("#" + element).load(function(){
            var mainheight = $(this).contents().find("body").height()+30;
            $(this).height(mainheight);
        });
    },
    active:function(url,id){
        if(!id){
            return;
        }
        var handle = function(iframe){
            $(".iframe-menu:visible").hide();
            $(iframe).show();
        }
        var callback = function(iframe){
            handle(iframe);
        }
        var iframe = $("iframe[data-tab='"+id+"']");
        if(iframe.length > 0){
            handle(iframe);
        }else{
            $.iframe.create(url,id,callback);
        }
    },
    create:function(url,id,callback){
        var iframe_id = "iframe" + id.replace("tabs","");
        new pym.Parent('iframe-tab-content',contextPath + url,{
            id : iframe_id,
            clazz : "iframe-menu",
            tab : id
        })
        $.iframe.height(iframe_id);
        callback($("#" + iframe_id));
    },
    edit : function(old,new_id){
        if(old && new_id){
            var iframe = $("iframe[data-tab='"+old+"']");
            $(iframe).attr("id","iframe" + new_id);
            $(iframe).attr("data-tab","tabs-" + new_id);
        }
    },
    close:function(iframe){
        if(iframe){
            $(iframe).remove();
        }

    }
}