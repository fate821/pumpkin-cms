<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="assets/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css"/>
    <#--<link href="assets/lib/ligerUI/skins/Gray/css/all.css" rel="stylesheet" type="text/css" />-->
    <link href="assets/css/index.css" rel="stylesheet" type="text/css" />
    <script src="assets/lib/jquery/jquery.js" type="text/javascript"></script>
    <script src="assets/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
    <script type="text/javascript">
        var tab, accordion;

        //高度变更
        function f_heightChanged(options) {
            if (tab)
                tab.addHeight(options.diff);
            if (accordion && options.middleHeight - 24 > 0)
                accordion.setHeight(options.middleHeight - 24);
        }

        $(function(){
            //主面板(头部下面部分)
            $("#mainbody").ligerLayout({
                leftWidth: 190,
                height: '100%',
                heightDiff: -34,
                space: 4,
                onHeightChanged: f_heightChanged
            });

            //中间内容显示层
            var bodyHeight = $(".l-layout-center:first").height();
            tab = $("#framecenter").ligerTab({height:bodyHeight});

            //左边菜单栏
            accordion = $("#mainmenu").ligerAccordion({ height: bodyHeight - 24, speed: null });

            //菜单初始化
            $("ul.menulist li").live('click', function ()
            {
                var jitem = $(this);
                var tabid = jitem.attr("tabid");
                var url = jitem.attr("url");
                if (!url) return;

                if (!tabid)
                {
                    tabidcounter++;
                    tabid = "tabid" + tabidcounter;
                    jitem.attr("tabid", tabid);

                    //给url附加menuno
                    if (url.indexOf('?') > -1) url += "&";
                    else url += "?";
                    //url += "MenuNo=" + jitem.attr("menuno");
                    url+="time=" + new Date().getTime();

                    jitem.attr("url", url);
                }

                f_addTab(tabid, $("span:first", jitem).html(), url);
            }).live('mouseover', function ()
            {
                var jitem = $(this);
                jitem.addClass("over");
            }).live('mouseout', function ()
            {
                var jitem = $(this);
                jitem.removeClass("over");
            });
        });
    </script>
</head>
<body style="text-align:center; background:#F0F0F0; overflow:hidden;">
<div id="pageloading" style="display:block;"></div>
<div id="topmenu" class="l-topmenu">
    <div class="l-topmenu-logo">飞速代发管理系统 571fs.com</div>
    <div class="l-topmenu-welcome">
        <span class="l-topmenu-username">admin，</span>欢迎您 &nbsp;
        [<a href="javascript:f_changepassword()">修改密码</a>] &nbsp;
        <!-- [<a href="javascript:f_login()">切换用户</a>] -->
        [<a href="../resource/user/out">退出</a>]
    </div>

</div>
<div id="mainbody">
    <div position="left" title="系统菜单" id="mainmenu">
        <div title="物流管理">
            <ul class="menulist">
                <li class="" url="wuliu/wuliu_gs.html" menuno="BaseManageCategories">
                    <img src="assets/icons/32X32/basket.gif"/>
                    <span>物流公司</span>
                    <div class="menuitem-l"></div>
                    <div class="menuitem-r"></div>
                </li>
                <li class="" url="wuliu/fareTemp.html" menuno="BaseManageCategories">
                    <img src="assets/icons/32X32/basket.gif"/>
                    <span>运费模板</span>
                    <div class="menuitem-l"></div>
                    <div class="menuitem-r"></div>
                </li>
            </ul>
        </div>
    </div>

    <div position="center" id="framecenter">
        <div tabid="home" title="我的主页">
            <iframe frameborder="0" name="home" id="home" src="welcome.html"></iframe>
        </div>
    </div>
</div>
</body>
</html>