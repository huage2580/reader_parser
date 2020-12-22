import 'package:dio/dio.dart';
import 'package:gbk_codec/gbk_codec.dart';
import 'package:yuedu_parser/h_parser/regexp_rule.dart';


main() async {
  var test = '''
  <!DOCTYPE html "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="application/xhtml+xml;charset=utf-8">
    <title>第一章 剧本不对_全球高武_新笔趣阁</title>
	<meta name="keywords" content="第一章 剧本不对,全球高武,老鹰吃小鸡">
	<meta name="description" content="新笔趣阁提供全球高武第一章 剧本不对最新章节免费阅读章节内容.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="stylesheet" href="/style/layout.c3f12.css">
    <link rel="stylesheet" href="/style/read.bc843.css">
	<script type="text/javascript" src="/style/zepto.min.js"></script>
    <script type="text/javascript" src="/style/common.fe858.js"></script>
    <script type="text/javascript" src="/style/index.fb823.js"></script>
    <script type="text/javascript" src="/style/read.b03f4.js"></script>
	<script type="text/javascript" src="/style/core.eb023.js"></script>
	</head>
<body id="read" class="read">
    <header id="top" class="channelHeader channelHeader2"><a href="javascript:history.go(-1);" class="iconback"><img src="/images/header-back.gif" alt="返回"></a><span class="title">第一章 剧本不对&nbsp;&nbsp;全球高武</span><a href="/" class="iconhome"><img src="/images/header-backhome.gif" alt="首页"></a></header>
    <div class="bg"></div>
    <a name="pagetop"></a>
    <p class="Readpage" style="background:#FFFFFF;padding:2px;">
        <a id="lightdiv" class="button lightoff" onclick="nr_setbg('light')">关灯</a>
        <a id="huyandiv" class="button huyanon" onclick="nr_setbg('huyan')">护眼</a>&nbsp;&nbsp;&nbsp;&nbsp;
        字体：<a id="fontbig" class="sizebg" onclick="nr_setbg('big')">大</a> <a id="fontmiddle" class="sizebg" onclick="nr_setbg('middle')">中</a> <a id="fontsmall" class="sizebg" onclick="nr_setbg('small')">小</a>
    </p>
	
	<script>
	 show_user_info();
	</script>
	
    <p class="Readpage">
        <a href="/81_81336/" id="pt_prev" class="Readpage_up">上一章</a>
        <a href="/81_81336/" id="pt_mulu" class="Readpage_up">目录</a>
        <a href="/81_81336/265141_2.html" id="pt_next" class="Readpage_down js_page_down">下一章</a>
    </p>
    <div id="chaptercontent" class="Readarea ReadAjax_content">
        <script>style_top()</script>
        <p style="width:100%;text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:postErrorChapter(265141,81336);" style="text-align:center;color:red;">『章节错误,点此举报』</a></p>
        &nbsp;&nbsp;&nbsp;&nbsp;2008年，4月5日。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;周六。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;阳城一中，高三（4）班教室。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平花了半小时，总算确定了一件事，不是做梦，不是拍戏——废话，拍戏能让自己那些同学返老还童，这剧组可以上天了！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;等确定了重生的事实，方平小小的忐忑片刻，紧接着便坦然接受了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;作为新世纪的五毒青年，谁还没点重生的经验？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;就算自己没重生，网上一大把，光看看就知道，这是矮矬穷逆袭高富帅的至高法宝！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;再说了，自己要钱没钱，要妞没妞，重生了什么都不干还能多活一些年，怎么算都不亏。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好不容易熬到下课铃响，熟悉中带些陌生的老师，硬是拖了好几分钟堂才恋恋不舍的离去。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;至于老师临走时最后说的那句话，方平就当自己听岔了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“武科报名，下个星期开始了，有想法的同学做好准备。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平没当回事，他听成了“文科”报名，高考都是提前报名的，不过一般都由学校代劳，没必要再提醒才对。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;关键的关键，高三（4）班是理科班，和文科无关吧？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不过有了重生的事，方平哪还在意这点芝麻绿豆的小事。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这当前，方平想的是拳打杰克马，脚踢马华腾才对。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;尽管08年这个时间段有些晚了，可重生者不干点出人预料的事，能叫重生者？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;又或者不从商，改从政？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平心里暗暗盘算，也没心思和四周的同学闲聊。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这些小年轻，哪能想象到自己脑海中的雄伟目标，从今天起，咱们就不是一个世界的人了！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;正当方平为自己的未来谋划添砖加瓦之际，前排那个长的五大三粗的杨建同学，忽然转头问道：“方平，陈凡，你们报不报名？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平对杨建印象可谓深刻，倒不是杨建帅破天际。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;关键在于，大学毕业后，方平他们高中同学聚会，刚毕业的杨建，居然养了一脸的络腮胡子，差点让方平以为杨建他爸也来参加同学会了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;打那以后，方平就没忘记过这位络腮胡子同学，特征太明显。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;心里想着事，方平一时间也没想着接话。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平同桌，被班上同学戏称为“平凡二人组”成员之一的陈凡，这时候则是摇头道：“我不报名了，浪费钱而已。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;报个名就要一万，指定考不上，有这么多钱，大学一年生活费加学费都差不多够了。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;杨建有些唏嘘道：“也是，可总有些不甘心，不试试，就怕后悔一辈子。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;杨建的同桌，也是个男生，名字方平有些模糊了，此时也转头加入讨论，脸色黯然道：“这是咱们唯一一次鲤鱼跃龙门的机会，可惜，跟我们无关。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;三人又是唏嘘，又是遗憾，听的方平满头雾水，莫名其妙。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;报名？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;刚刚老师说的“文科”报名？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;报名费就要一万？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这可是08年，要是没记错，阳城这时候的市区房价也才4000一平左右，考试报名要这么多钱？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这几个家伙没说错吧？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;又或者被人骗了？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;方平刚想插话问问，同桌陈凡扶了扶眼镜，脸色坚毅道：“就算不考武科，考文科，也不一定一辈子无法出人头地！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;社会上也有武道培训班，等我们毕业了，挣了钱，到时候也可以进修。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;就算不如武科生，起码还有希望！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这话一出，杨建的同桌也面色激动道：“不错，考个文科名校，毕业了出来，工资待遇也不会低！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“我还是想试试……”杨建有些犹豫，他家境还算不错，加上身体健壮，不试试不甘心。<p class="chapter-page-info">第一章 剧本不对(1/2),点击下一页继续阅读。</p>
        <p style="width:100%;text-align:center;"><a href="javascript:addBookMarkByManual(265141,81336,'第一章 剧本不对');" style="text-align:center;color:red;">『加入书签，方便阅读』</a></p>
    </div>
    <script>getset()</script>
    <script>getset1()</script>
	<script>
	show_user_jifen();
	</script>
	
    <p class="Readpage">
        <a href="/81_81336/" id="pb_prev" class="Readpage_up">上一章</a>
        <a href="/81_81336/" id="pb_mulu" class="Readpage_up">目录</a>
        <a href="/81_81336/265141_2.html" id="pb_next" class="Readpage_down js_page_down">下一章</a>
    </p>
    
	<script>
	show_user_rank();
	</script>
    
    <script type="text/javascript">
    if(typeof addHit!= 'undefined' &&addHit instanceof Function){
        addHit(81336);
    }
    if(typeof addBookMarkByJs!= 'undefined' &&addBookMarkByJs instanceof Function){
        addBookMarkByJs(265141,81336,'第一章 剧本不对');
    }
    </script>
    <p class="note"></p>
    <footer>
        <a href="#top"><img src="/images/icon-backtop.gif" title="↑" alt="↑"></a>
        <p class="version channel">
            <a href="/">首页</a>
			<a href="https://www.xsbiquge.com/81_81336/265141.html">电脑版</a>
            <a href="/bookcase.html">我的书架</a>
            <a href="/newcase.html">阅读记录</a>
        </p>
    </footer>
    <script src="/style/cfoot.fa328.js"></script>
    <script type="text/javascript">fmt();</script>
	<script>lastread.set('81336', '265141', '全球高武', '第一章 剧本不对', '老鹰吃小鸡', '都市言情');
</script>
	<span style="display:none;"><script type="text/javascript">count();</script></span>


</body></html>
  ''';

  var test_detail = '''
  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>武谪仙_流浪的蛤蟆的小说_斋书苑</title>
<meta name="keywords" content="武谪仙全文阅读,武谪仙最新章节,TXT下载" />
<meta name="description" content="由流浪的蛤蟆书写，简介：本来的简介是——武中谪仙，软饭奇才。现在改成了——我快手小马，靠自己的一双铁拳，击败了一个姓王的仙二..." />
<meta name="mobile-agent" content="format=xhtml;url=https://m.zhaishuyuan.com/book/36788" />
<meta property="og:type" content="novel"/>
<meta property="og:title" content="武谪仙"/>
<meta property="og:description" content="本来的简介是——武中谪仙，软饭奇才。现在改成了——我快手小马，靠自己的一双铁拳，击败了一个姓王的仙二..."/>
<meta property="og:image" content="https://img.zhaishuyuan.com/bookpic/s36788.jpg"/>
<meta property="og:url" content="https://www.zhaishuyuan.com/book/36788"/>
<meta property="og:novel:category" content="修真文明"/>
<meta property="og:novel:author" content="流浪的蛤蟆"/>
<meta property="og:novel:book_name" content="武谪仙"/>
<meta property="og:novel:status" content="连载中"/>
<meta property="og:novel:read_url" content="https://www.zhaishuyuan.com/read/36788"/>
<meta property="og:novel:update_time" content="2020-11-12 06:13"/>
<meta property="og:novel:latest_chapter_name" content="五十三、云变"/>
<meta property="og:novel:latest_chapter_url" content="https://www.zhaishuyuan.com/chapter/36788/24224752"/>
<link type="text/css" href="https://img.zhaishuyuan.com/zhai/zhai.mian.css?v=1.38" rel="stylesheet" />
<script type="text/javascript" src="https://img.zhaishuyuan.com/zhai/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="https://img.zhaishuyuan.com/zhai/zhai.top.js?v=2.67"></script>
<style type="text/css">.WuXian{width:100%;margin:0 auto 8px;text-align:center;}</style>
</head>
<body data-bid="36788">
<div id="header">
    <div class="top">
        <div class="top-bar">
            <span class="left">收藏本站(CRTL+D) | <a href="https://m.zhaishuyuan.com/?pc">手机版</a></span>
            <ul class="right" id="login"></ul>
        </div>
    </div>
    <div class="wrap">
        <div class="logo"><a href="/">斋书苑</a></div>
        <div class="search">
            <form id="search" name="search" method="post" action="/search/" target="_blank">
                <input name="key" id="key" type="text" placeholder="请输入关键词进行搜索" autocomplete="off" />
                <button type="submit" class="serBtn">搜 索</button>
            </form>
        </div>
    </div>
    <div class="nav">
        <ul>
            <li><a href="/">首页</a></li>
            <li><a class="current" href="/shuku/11_1_0_0_0_1_0_0" target="_self">书库</a></li>
            <li><a href="/shudan/rank.html" target="_self">精品</a></li>
            <li><a href="/shudan/hot.html" target="_self">人气</a></li>
        </ul>
        <div class="g-nav-fn">
            <a href="/user/bookcase/" target="_blank">我的书架</a>
            <a href="/history.html" target="_blank">最近阅读</a>
        </div>
    </div>
</div>
<div id="main">
    <div id="maininfo">
        <div class="coverecom w_730 left">
            <div class="tabstit">
                <span class="label"></span><a href="/">首页</a>><a href="/shuku/2_1_0_0_0_1_0_0">武侠仙侠</a>><em>武谪仙</em>
            </div>
            <div id="bookinfo">
                <div class="bookleft">
                    <div id="bookimg"><img src="https://img.zhaishuyuan.com/bookpic/s36788.jpg" alt="武谪仙" width="170" height="228" /></div>
                </div>
                <div class="bookright">
                    <div class="booktitle">
                        <h1>武谪仙</h1><span id="author">作者：<a href="/search/?key=%C1%F7%C0%CB%B5%C4%B8%F2%F3%A1" target="_blank" rel="nofollow">流浪的蛤蟆</a></span>
                    </div>
                    <div class="count">
                        <ul>
                            <li>小&nbsp;&nbsp;类：<span>修真文明</span></li>
                            <li>状&nbsp;&nbsp;态：<span>正在连载</span></li>
                            <li>点&nbsp;&nbsp;击：<span id="Hits">35285</span></li>
                            <li>字&nbsp;&nbsp;数：<span>806919</span></li>
                        </ul>
                    </div>
                    <div id="bookintro"><p>本来的简介是——武中谪仙，软饭奇才。现在改成了——我快手小马，靠自己的一双铁拳，击败了一个姓王的仙二代，才能堂堂正正出生在这个世界上。......</p></div>
                    <div class="new">
                        <span class="keywords"><a href="/search/?key=%CE%BB%C3%E6" target="_blank" rel="nofollow">位面</a> <a href="/search/?key=%C8%C8%D1%AA" target="_blank" rel="nofollow">热血</a> <a href="/search/?key=%D6%D8%C9%FA" target="_blank" rel="nofollow">重生</a></span>
                        <span class="uptime">更新：<span>2020-11-12 06:13</span></span>
                    </div>
                    <div class="motion">
                        <a href="/read/36788" title="开始阅读" class="tgcj"><span>开始阅读</span></a>
                        <a id="addBook" class="tgcjb"><span>加入书架</span></a>
                        <a class="tgcjb topVote"><span>投推荐票</span></a>
                        <a id="showtip" class="tgcj"><span>详细介绍</span></a>
                        <a id="downBook" style="margin-right:0;"><span>TXT下载</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="loading"><img src="/images/loading.gif"/></div>
        <div class="list_center w_240 right">
            <div class="update_title">
                <span class="update_icon">热门收藏</span>
            </div>
            <div class="hotlist">
                <ul>
                    <li><span class="genre">[神话修真]</span><a href="/book/33181">我师兄实在太稳健了</a></li>

                    <li><span class="genre">[古典仙侠]</span><a href="/book/17278">剑来</a></li>

                    <li><span class="genre">[武侠幻想]</span><a href="/book/21227">点道为止</a></li>

                    <li><span class="genre">[修真文明]</span><a href="/book/13590">永恒国度</a></li>

                    <li><span class="genre">[幻想修仙]</span><a href="/book/35322">大奉打更人</a></li>

                    <li><span class="genre">[古典仙侠]</span><a href="/book/18806">飞剑问道</a></li>

                    <li><span class="genre">[修真文明]</span><a href="/book/23704">三寸人间</a></li>

                    <li><span class="genre">[古典仙侠]</span><a href="/book/30006">赝太子</a></li>

                    <li><span class="genre">[古典仙侠]</span><a href="/book/32161">烂柯棋缘</a></li>

                    <li><span class="genre">[现代修真]</span><a href="/book/19664">大数据修仙</a></li>
</ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="WuXian"></div>
    <div id="newlist">
        <div class="newrap">
            <h2>《武谪仙》最新章节</h2> （提示：已启用缓存技术，最新章节可能会延时显示，登录书架或F5刷新即可实时查看。）
        </div>
        <ul>
            <li><a href="/chapter/36788/24224752" target="_blank" title=" 五十三、云变">五十三、云变 - 11-12</a></li>

            <li><a href="/chapter/36788/24218375" target="_blank" title=" 五十二、叶神蚕">五十二、叶神蚕 - 11-11</a></li>

            <li><a href="/chapter/36788/24189066" target="_blank" title=" 五十一、原绥棱">五十一、原绥棱 - 11-08</a></li>

            <li><a href="/chapter/36788/24184317" target="_blank" title=" 五十、元气炼神篇">五十、元气炼神篇 - 11-08</a></li>

            <li><a href="/chapter/36788/24182353" target="_blank" title=" 四十九、元神秘法">四十九、元神秘法 - 11-07</a></li>

            <li><a href="/chapter/36788/24177990" target="_blank" title=" 四十八、诬陷">四十八、诬陷 - 11-07</a></li>

            <li><a href="/chapter/36788/24141616" target="_blank" title=" 四十七、乾坤藏兵蛊">四十七、乾坤藏兵蛊 - 11-05</a></li>

            <li><a href="/chapter/36788/24133142" target="_blank" title=" 四十六、百毒不侵">四十六、百毒不侵 - 11-04</a></li>

            <li><a href="/chapter/36788/24127213" target="_blank" title=" 四十五、这锅我买了">四十五、这锅我买了 - 11-03</a></li>

            <li><a href="/chapter/36788/24119484" target="_blank" title=" 四十四、蛇鳞族">四十四、蛇鳞族 - 11-01</a></li>

            <li><a href="/chapter/36788/24080108" target="_blank" title=" 四十三、炼化神兵">四十三、炼化神兵 - 10-30</a></li>

            <li><a href="/chapter/36788/24074562" target="_blank" title=" 四十二、武神之上">四十二、武神之上 - 10-29</a></li>
</ul>
    </div>
    <div id="product">
        <h2>精品小说随机</h2>
        <ul>
            <li><a href="/book/206"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s206.jpg" alt="圣堂"  width="128" height="162"><h3>圣堂</h3></a></li>

            <li><a href="/book/394"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s394.jpg" alt="修真世界"  width="128" height="162"><h3>修真世界</h3></a></li>

            <li><a href="/book/340"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s340.jpg" alt="重生混元道"  width="128" height="162"><h3>重生混元道</h3></a></li>

            <li><a href="/book/209"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s209.jpg" alt="仙府之缘"  width="128" height="162"><h3>仙府之缘</h3></a></li>

            <li><a href="/book/1623"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s1623.jpg" alt="灵山"  width="128" height="162"><h3>灵山</h3></a></li>

            <li><a href="/book/217"><img class="lazyload" _src="https://img.zhaishuyuan.com/bookpic/s217.jpg" alt="真灵九变"  width="128" height="162"><h3>真灵九变</h3></a></li>
</ul>
        <div class="prodlist">
            <ol>
                <li><span>[古典仙侠]</span><a href="/book/1346" class="biaot">仙朝</a></li>

                <li><span>[修真文明]</span><a href="/book/28552" class="biaot">地球第一剑</a></li>

                <li><span>[古典仙侠]</span><a href="/book/353" class="biaot">剑祖</a></li>

                <li><span>[武侠幻想]</span><a href="/book/312" class="biaot">天龙里的剑客</a></li>

                <li><span>[武侠幻想]</span><a href="/book/6798" class="biaot">超武群侠传</a></li>

                <li><span>[修真文明]</span><a href="/book/164" class="biaot">大道争锋</a></li>

                <li><span>[现代修真]</span><a href="/book/1757" class="biaot">地球最后一个修仙者</a></li>

                <li><span>[修真文明]</span><a href="/book/27699" class="biaot">吾皇万岁</a></li>

                <li><span>[古典仙侠]</span><a href="/book/2662" class="biaot">养妖记</a></li>

                <li><span>[修真文明]</span><a href="/book/3990" class="biaot">道门败类</a></li>

                <li><span>[修真文明]</span><a href="/book/280" class="biaot">修真界败类</a></li>

                <li><span>[修真文明]</span><a href="/book/1712" class="biaot">不死冥轮</a></li>

                <li><span>[修真文明]</span><a href="/book/3132" class="biaot">霸道绝色</a></li>

                <li><span>[修真文明]</span><a href="/book/2241" class="biaot">仙道之主</a></li>

                <li><span>[现代修真]</span><a href="/book/1383" class="biaot">少年剑皇</a></li>

                <li><span>[修真文明]</span><a href="/book/6802" class="biaot">修仙狂徒</a></li>

                <li><span>[现代修真]</span><a href="/book/1609" class="biaot">财神到</a></li>

                <li><span>[现代修真]</span><a href="/book/372" class="biaot">护花宝鉴</a></li>

                <li><span>[幻想修仙]</span><a href="/book/27208" class="biaot">天剑书香</a></li>

                <li><span>[现代修真]</span><a href="/book/2490" class="biaot">超级全能系统</a></li>

                <li><span>[现代修真]</span><a href="/book/308" class="biaot">我的美女老师</a></li>

                <li><span>[神话修真]</span><a href="/book/366" class="biaot">洪荒之巫族大尊</a></li>

                <li><span>[现代修真]</span><a href="/book/28218" class="biaot">武修时代</a></li>

                <li><span>[修真文明]</span><a href="/book/258" class="biaot">一剑平天</a></li>

                <li><span>[古典仙侠]</span><a href="/book/7365" class="biaot">猪刚鬣</a></li>

                <li><span>[修真文明]</span><a href="/book/1723" class="biaot">仙魔道典</a></li>

                <li><span>[古典仙侠]</span><a href="/book/2436" class="biaot">太浩</a></li>

                <li><span>[武侠幻想]</span><a href="/book/2680" class="biaot">我叫丁春秋</a></li>
</ol>
        </div>
    </div>
</div>
<div class="show"></div>
<div id="intro_win" class="hidden">
    <h3>武谪仙的详细介绍</h3>
    <div class="wrapper"><p>本来的简介是——武中谪仙，软饭奇才。</p><p>现在改成了——我快手小马，靠自己的一双铁拳，击败了一个姓王的仙二代，才能堂堂正正出生在这个世界上。</p></div>
    <div class="input_el"><a class="btn_small">关　　闭</a></div>
</div>
<div id="footer">
    <div class="copyright">
        <p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
        <p>Copyright  2018 斋书苑 All Rights Reserved</p>
</div>
</div>
<script>init('book');</script>
<script>universally();</script>
</body>
</html>
  ''';
  //test :
  // var htmlStr = await getHttp();
  print(DateTime.now());
  //-------css 规则测试-----------------
  var rule = "@css:.ffw td:eq(4)@text&&.ffw td:eq(6)@text##\\s.*";
  var rule2 = "-@css:.fed-part-rows a.fed-btns-info[href*=html]";
  var rule3 = "@css:#product ol li@text&&#product ul li a h3@text##\\[(.*)\\]##(\$1)";
  var rule4 = "@css:#product ol li&&#product ul li a h3";

  //-------默认规则测试------------------
  var rule5 = "class.odd.0@tag.a.0@text||tag.dd.0@tag.h1@text##全文阅读";
  var rule6 = "text.下一页@href";
  var rule7 = r'[name=\"description\"]@content';
  var rule8 = "tbody@tag.tr!0";
  var rule9 =
      r".book-info-bookstate@span@text&&.book-info-bookvote@span@text&&.lastchapter@span!0:1@text##更新时间：| \\d+:\\d.*";
  var rule10 =
      r"id.product@tag.ul.0@tag.li!-1:-2@tag.a.0@text.生@ownText##重生##测试";
  var rule11 = r".hotlist@tag.ul@tag.li@text##修(真)##测$1试";
  //-----------测试正则allInOne----------
  var rule12 = r':href=\"(.*html)\".*?>([^<]*)';
  var rule13 = r'##作者.*?\>(.*?)\<##$1###';

  //-----测试Xpath-----------
  var rule14 = "//meta[@name=\"description\"]/@content##简介##测试替换";
  var rule15 = '//*[@id=\"product\"]/ul/li[-2]/text()';
  //---测试简单表达式--------
  var exp1 = '/search?searchString={{key}}&page={{page}}';
  var exp2 = '/search?searchString={{key}}&page={{page*2-1}}';

  var rule16_html =
      '<a href="/read/53698/1523458.html">第713章 大结局，最后一个条件（全书完）</a>';
  var rule16 = '//text()';
  var rule17 = '//@href';
  var rule18_html = '<div id="123"><p>test3</p> <p>test<a>link_2</a></p> <p>p2p<a>link</a></p>  <p>p2p<a>lin3k</a></p> <div><a>link4</a></div></div> <div>2</div>';
  var rule18 = '//body/div[1]';
  var rule19_html = r'''
  <!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="utf-8" />
	<title>斗罗大陆_斗罗大陆最新章节列表_唐家三少 - 米趣小说网</title>
	<meta name="keywords" content="斗罗大陆,唐家三少,斗罗大陆最新章节列表,斗罗大陆全文阅读"/>
	<meta name="renderer" content="webkit">
	<meta name="author" content="米趣小说网" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta http-equiv="Cache-Control" content="no-transform" />
	<meta name="applicable-device" content="pc" />
	<script type="text/javascript" charset="utf-8" src="//r.meegoq.com/js/main.js"></script>
	<meta name="mobile-agent" content="format=xhtml; url=//m.meegoq.com/book71760.html" />
	<meta name="mobile-agent" content="format=html5; url=//m.meegoq.com/book71760.html" />
	<script type="text/javascript">helper.uaredirect("//m.meegoq.com/book71760.html");</script>
	<link rel="stylesheet" type="text/css" href="//r.meegoq.com/css/g.css"/>
</head>
<body>
<header>
	<div class="top-banner clearfix">
		<div>
		<ul class="fl">
			<li><a href="/login.htm">登陆账号</a></li>
			<li><a href="/zhuce.htm">免费注册</a></li>
		</ul>
		<ul class="fr">
			<li><i class="pti i-mobile"></i><a href="//m.meegoq.com" target="_blank" title="米趣小说网手机版">手机米趣</a></li>
			<li><i class="pti i-home"></i><a href="javascript:setHomepage();">设为首页</a></li>
			<li><i class="pti i-star"></i><a href="javascript:addfavor();">加入收藏</a></li>
			<li><i class="pti i-desktop"></i><a href="/url.link" target="_blank">桌面快捷</a></li>
		</ul>
		</div>
	</div>
	<div class="logo container">
		<div class="p1"><a href="//www.meegoq.com" title="米趣小说网"><img src="//r.meegoq.com/image/logo.png" alt="米趣小说网" /></a></div>
		<div id="searchbox">
			<input type="text" id="keyword" placeholder="请输入书名或作者"/><input type="submit" value="搜索" id="search" onclick="doSearch();"/>
		</div>
		<div class="p2">
			<a class="item" title="看过的书" href="/read.htm">
				<i class="pti i-history"></i>
				<b>看过的书</b>
			</a>
			<script type="text/javascript">outUserInfo();</script>
		</div>
	</div>
	<nav class="container">
		<ul><li><a href="//www.meegoq.com/" title="米趣小说网首页">首页</a></li>
			<li><a href="/xuanhuan/">玄幻</a></li>
			<li><a href="/qihuan/">奇幻</a></li>
			<li><a href="/xiuzhen/">修真</a></li>
			<li><a href="/dushi/">都市</a></li>
			<li><a href="/yanqing/">言情</a></li>
			<li><a href="/lishi/">历史</a></li>
			<li><a href="/tongren/">同人</a></li>
			<li><a href="/wuxia/">武侠</a></li>
			<li><a href="/kehuan/">科幻</a></li>
			<li><a href="/youxi/">游戏</a></li>
			<li><a href="/junshi/">军事</a></li>
			<li><a href="/jingji/">竞技</a></li>
			<li><a href="/lingyi/">灵异</a></li>
			<li><a href="/qita/">其他</a></li>
		</ul>
	</nav>
</header>
<section class="container">
	<nav class="mt20 clearfix">
		<ul class="clearfix">
			<li><a href="//www.meegoq.com"><i class="pti i-home"></i> 米趣小说网首页</a><i class="pti i-angle-right"></i></li>
			<li><a href="/xuanhuan/">玄幻小说排行榜</a><i class="pti i-angle-right"></i></li>
			<li><a href="//www.meegoq.com/info71760.html">斗罗大陆</a><i class="pti i-angle-right"></i></li>
			<li>斗罗大陆最新章节</li>
		</ul>
	</nav>
	<article class="info">
		<header class="line"><h1>斗罗大陆最新章节</h1></header>
		<ul class="mulu"><li class="col1 volumn">最新九章</li><li class="col3"><a href="//www.meegoq.com/book/71760_180121846.html">第四十集 大战初始 第二百七十四章 天斗大军</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_180121845.html">第二百七十章 泰坦苍穹破与天青迟钝神爪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_180121844.html">第二十三集 猎魂行动 第一百五十五章 魂斗罗级别的碰撞（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_164771902.html">第一百七十九章 唐三第六魂技：虚无、爆杀八段摔</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_162646946.html">第二十五章 器武魂的威力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887589.html">第三百三十六章 大结局，最后一个条件（全书完）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887587.html">第三百三十四章 最终决战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887586.html">第三百三十三章 神魂归位，海神归来</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887585.html">第三百三十二章 完美融合之复活神光</a></li>
		<li class="col1 volumn">全部章节</li><li class="col1 volumn">作品相关</li><li class="col3"><a href="//www.meegoq.com/book/71760_153886851.html">小三书友团体－“唐门”正式成立。</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886852.html">不论是骂番茄还是替番茄辩解的，请离开这里</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886853.html">上架感言</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886854.html">已出场人物列表</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886855.html">推荐一本好书给大家</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886856.html">关于小舞的身高问题，我再解释一下。</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886857.html">加精大会马上开始，12点05到12点45</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886858.html">顺便推荐一本书</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886859.html">关于大家的质疑，小三解释两句。</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886860.html">在成千上万书友的支持下，终于获得了第一</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886861.html">小三自己的家，欢迎大家去看看</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886862.html">恩，我强调一下，一夫一妻</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886863.html">天青牛蟒也写书……</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886864.html">推荐一本朋友的书</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886865.html">推荐一本朋友的新书，欢迎大家支持</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886866.html">『史莱克七怪』资料汇总</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886867.html">无语了，不得不澄清</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886868.html">新书《阴阳冕》预告</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886869.html">新书天珠变已经注册，28号正式上传</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886870.html">新书《天珠变》已经开始更新</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886871.html">新书《神印王座》已开始上传。</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886872.html">观看唐家三少火爆视频访谈</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886873.html">新书斗罗大陆II之《绝世唐门》开启</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886874.html">斗罗大陆III《龙王传说》正式开启！</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179721715.html">加精大会暂停一次</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728487.html">加精大会暂停</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728488.html">加精大会暂停一段时间，特此通知</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728489.html">老婆生了，糖糖公主六斤六两，平安降生</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728490.html">汶川地震一周年，让我们为死难的同胞默哀</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728491.html">宣传一下小三的个人网站</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179728492.html">隆重推荐《剑侠世界》盛大版</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_179766414.html">斗罗即将收官，求推荐票</a></li><li class="col1 volumn">第一集 斗罗世界</li><li class="col3"><a href="//www.meegoq.com/book/71760_153886876.html">引子 穿越的唐家三少</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886877.html">第一章 斗罗大陆，异界唐三（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886878.html">第一章 斗罗大陆，异界唐三（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886879.html">第一章 斗罗大陆，异界唐三（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886880.html">第一章 斗罗大陆，异界唐三（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886881.html">第二章 废武魂与先天满魂力（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886882.html">第二章 废武魂与先天满魂力（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886883.html">第二章 废武魂与先天满魂力（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886884.html">第二章 废武魂与先天满魂力（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886885.html">第三章 双生武魂(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886886.html">第三章 双生武魂(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886887.html">第三章 双生武魂(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886888.html">第三章 双生武魂(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886889.html">第三章 双生武魂(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886890.html">第四章 异界唐三的第一件暗器（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886891.html">第四章 异界唐三的第一件暗器（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886892.html">第四章 异界唐三的第一件暗器(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886893.html">第四章 异界唐三的第一件暗器(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886894.html">第四章 异界唐三的第一件暗器(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886895.html">第五章 大师？师傅？（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886896.html">第五章 大师？师傅？（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886897.html">第五章 大师？师傅？（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886898.html">第五章 大师？师傅？（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886899.html">第六章 我叫小舞，跳舞的舞（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886900.html">第六章 我叫小舞，跳舞的舞（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886901.html">第六章 我叫小舞，跳舞的舞（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886902.html">第六章 我叫小舞，跳舞的舞（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886903.html">第六章 我叫小舞，跳舞的舞（五）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886904.html">第七章 小舞 (一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886905.html">第七章 小舞 (二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886906.html">第七章 小舞 (三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886907.html">第七章 小舞 (四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886908.html">第七章 小舞 (五)</a></li><li class="col1 volumn">第二集 第一魂环</li><li class="col3"><a href="//www.meegoq.com/book/71760_153886910.html">第八章 魂导器，二十四桥明月夜（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886911.html">第八章 魂导器，二十四桥明月夜(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886912.html">第八章 魂导器，二十四桥明月夜(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886913.html">第八章 魂导器，二十四桥明月夜(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886914.html">第八章 魂导器，二十四桥明月夜(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886915.html">第九章 蓝银草的第一魂环（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886916.html">第九章 蓝银草的第一魂环（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886917.html">第九章 蓝银草的第一魂环（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886918.html">第九章 蓝银草的第一魂环（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886919.html">第九章 蓝银草的第一魂环（五）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886920.html">第十章 第一魂环技能(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886921.html">第十章 第一魂环技能(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886922.html">第十章 第一魂环技能(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886923.html">第十章 第一魂环技能(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886924.html">第十章 第一魂环技能(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886925.html">第十一章 小舞，原来你真的是个兔子(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886926.html">第十一章 小舞原来你真的是个兔子(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886927.html">第十一章 小舞原来你真的是个兔子(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886928.html">第十一章 小舞原来你真的是个兔子(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886929.html">第十二章 乱披风锤法(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886930.html">第十二章 乱披风锤法(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886931.html">第十二章 乱披风锤法(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886932.html">第十二章 乱披风锤法(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886933.html">第十二章 乱披风锤法(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886934.html">第十三章 父亲的留言(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886935.html">第十三章 父亲的留言(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886936.html">第十三章 父亲的留言(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886937.html">第十三章 父亲的留言(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886938.html">第十四章 邪眸白虎戴沐白(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886939.html">第十四章 邪眸白虎戴沐白(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886940.html">第十四章 邪眸白虎戴沐白(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886941.html">第十四章 邪眸白虎戴沐白(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886942.html">第十四章 邪眸白虎戴沐白(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886943.html">第十四章 邪眸白虎戴沐白(六)</a></li><li class="col1 volumn">第三集 怪物学院</li><li class="col3"><a href="//www.meegoq.com/book/71760_153886945.html">第十五章 千年魂环之技，白虎金刚变(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886946.html">第十五章 千年魂环之技，白虎金刚变(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886947.html">第十五章 千年魂环之技，白虎金刚变(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886948.html">第十五章 千年魂环之技，白虎金刚变(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886949.html">第十五章 千年魂环之技，白虎金刚变(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886950.html">第十六章 板晶发金龙须针（一）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886951.html">第十六章 板晶发金龙须针（二）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886952.html">第十六章 板晶发金龙须针（三）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886953.html">第十六章 板晶发金龙须针（四）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886954.html">第十六章 板晶发金龙须针（五）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886955.html">第十七章 只收怪物的学院(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886956.html">第十七章 只收怪物的学院(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886957.html">第十七章 只收怪物的学院(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886958.html">第十七章 只收怪物的学院(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886959.html">第十七章 只收怪物的学院(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886960.html">第十八章 不动明王赵无极(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886961.html">第十八章 不动明王赵无极(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886962.html">第十八章 不动明王赵无极(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886963.html">第十八章 不动明王赵无极(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886964.html">第十八章 不动明王赵无极(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886965.html">第十九章 唐三的暗器(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886966.html">第十九章 唐三的暗器(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886967.html">第十九章 唐三的暗器(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886968.html">第十九章 唐三的暗器(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886969.html">第十九章 唐三的暗器(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886970.html">第二十章 奥斯卡的大香肠和小腊肠(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886971.html">第二十章 奥斯卡的大香肠和小腊肠(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886972.html">第二十章 奥斯卡的大香肠和小腊肠(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886973.html">第二十章 奥斯卡的大香肠和小腊肠(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886974.html">第二十章 奥斯卡的大香肠和小腊肠(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886975.html">第二十一章 邪火凤凰(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886976.html">第二十一章 邪火凤凰(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886977.html">第二十一章 邪火凤凰(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886978.html">第二十一章 邪火凤凰(四)</a></li><li class="col1 volumn">第四集 史莱克七怪</li><li class="col3"><a href="//www.meegoq.com/book/71760_153886980.html">第二十二章 四眼猫鹰弗兰德(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886981.html">第二十二章 四眼猫鹰弗兰德(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886982.html">第二十二章 四眼猫鹰弗兰德(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886983.html">第二十二章 四眼猫鹰弗兰德(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886984.html">第二十二章 四眼猫鹰弗兰德(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886985.html">第二十三章 魔女本色(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886986.html">第二十三章 魔女本色(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886987.html">第二十三章 魔女本色(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886988.html">第二十三章 魔女本色(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886989.html">第二十三章 魔女本色(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886990.html">第二十四章 三五组合的成立(一)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886991.html">第二十四章 三五组合的成立(二)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886992.html">第二十四章 三五组合的成立(三)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886993.html">第二十四章 三五组合的成立(四)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886994.html">第二十四章 三五组合的成立(五)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886996.html">第二十五章 器武魂的威力（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886997.html">第二十五章 器武魂的威力（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886998.html">第二十六章 星斗大森林（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153886999.html">第二十六章 星斗大森林（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887000.html">第二十六章 星斗大森林（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887001.html">第二十七章 不敢惹事是庸才（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887002.html">第二十七章 不敢惹事是庸才（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887003.html">第二十七章 不敢惹事是庸才（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887004.html">第二十八章 千年凤尾鸡冠蛇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887005.html">第二十八章 千年凤尾鸡冠蛇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887006.html">第二十八章 千年凤尾鸡冠蛇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887007.html">第五集 星斗森林 第二十九章 盖世龙蛇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887008.html">第二十九章 盖世龙蛇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887009.html">第二十九章 盖世龙蛇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887010.html">第三十章 奥斯卡的第三魂环（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887011.html">第三十章 奥斯卡的第三魂环（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887012.html">第三十章 奥斯卡的第三魂环（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887013.html">第三十一章 森林之王，泰坦巨猿（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887014.html">第三十一章 森林之王，泰坦巨猿（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887015.html">第三十一章 森林之王，泰坦巨猿（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887016.html">第三十二章 邪恶的杀戮者，人面魔蛛（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887017.html">第三十二章 邪恶的杀戮者，人面魔蛛（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887018.html">第三十二章 邪恶的杀戮者，人面魔蛛（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887019.html">第三十三章 孟依然也用暗器？（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887020.html">第三十三章 孟依然也用暗器？（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887021.html">第三十三章 孟依然也用暗器？（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887022.html">第三十四章 超过极限的人面魔蛛魂环（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887023.html">第三十四章 超过极限的人面魔蛛魂环（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887024.html">第三十四章 超过极限的人面魔蛛魂环（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887025.html">第三十五章 唐三强横的第三魂环（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887026.html">第三十五章 唐三强横的第三魂环（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887027.html">第三十五章 唐三强横的第三魂环（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887028.html">第六集 外附魂骨 第三十六章 大师到来（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887029.html">第三十六章 大师到来（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887030.html">第三十六章 大师到来（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887031.html">第三十七章 蓝银草进化后的威力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887032.html">第三十七章 蓝银草进化后的威力（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887033.html">第三十七章 蓝银草进化后的威力（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887034.html">第三十八章 外附魂骨(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887035.html">第三十八章 外附魂骨(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887036.html">第三十八章 外附魂骨(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887037.html">第三十九章 “铁”匠铺（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887038.html">第三十九章 “铁”匠铺（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887039.html">第三十九章 “铁”匠铺（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887040.html">第四十章 特训第一阶段开始（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887041.html">第四十章 特训第一阶段开始（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887042.html">第四十章 特训第一阶段开始（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887043.html">第四十一章 不抛弃，不放弃（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887044.html">第四十一章 不抛弃，不放弃（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887045.html">第四十一章 不抛弃，不放弃（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887046.html">第四十二章 大师是魔鬼（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887047.html">第四十二章 大师是魔鬼（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887048.html">第四十二章 大师是魔鬼（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887049.html">第七集 斗魂大战 第四十三章 猥琐怪叔叔，不乐(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887050.html">第四十三章 猥琐怪叔叔，不乐(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887051.html">第四十三章 猥琐怪叔叔，不乐(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887052.html">第四十四章 大师教学的第二阶段(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887053.html">第四十四章 大师教学的第二阶段(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887054.html">第四十四章 大师教学的第二阶段(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887055.html">第四十五章 强横的对手，狂战队（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887056.html">第四十五章 强横的对手，狂战队（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887057.html">第四十五章 强横的对手，狂战队（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887058.html">第四十六章 控制系魂师的强势（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887059.html">第四十六章 控制系魂师的强势（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887060.html">第四十六章 控制系魂师的强势（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887061.html">第四十七章 蜘蛛王者的威压（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887062.html">第四十七章 蜘蛛王者的威压（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887063.html">第四十七章 蜘蛛王者的威压（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887064.html">第四十八章 皇斗战队(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887065.html">第四十八章 皇斗战队(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887066.html">第四十八章 皇斗战队(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887067.html">第四十九章 七怪战皇斗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887068.html">第四十九章 七怪战皇斗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887069.html">第四十九章 七怪战皇斗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887070.html">第八集 皇斗战队 第五十章 碧磷紫毒（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887071.html">第五十章 碧磷紫毒（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887072.html">第五十章 碧磷紫毒（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887073.html">第五十一章 武魂融合技之幽冥白虎（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887074.html">第五十一章 武魂融合技之幽冥白虎（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887075.html">第五十一章 武魂融合技之幽冥白虎（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887076.html">第五十二章 八蛛矛，定胜负（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887077.html">第五十二章 八蛛矛，定胜负（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887078.html">第五十二章 八蛛矛，定胜负（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887079.html">第五十三章 史莱克，金斗魂级战队（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887080.html">第五十三章 史莱克，金斗魂级战队（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887081.html">第五十三章 史莱克，金斗魂级战队（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887082.html">第五十四章 借鸡生蛋？（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887083.html">第五十四章 借鸡生蛋？（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887084.html">第五十四章 借鸡生蛋？（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887085.html">第五十五章 飞天神爪（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887086.html">第五十五章 飞天神爪（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887087.html">第五十五章 飞天神爪（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887088.html">第五十六章 越阶挑战（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887089.html">第五十六章 越阶挑战（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887090.html">第五十六章 越阶挑战（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887091.html">第九集 黄金铁三角 第五十七章 凶神战队（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887092.html">第五十七章 凶神战队（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887093.html">第五十七章 凶神战队（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887094.html">第五十八章 天斗皇家学院(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887095.html">第五十八章 天斗皇家学院(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887096.html">第五十八章 天斗皇家学院(下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887097.html">第五十九章 贯通，第一脉（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887098.html">第五十九章 贯通，第一脉（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887099.html">第五十九章 贯通，第一脉（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887100.html">第六十章 封号斗罗，封号：毒（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887101.html">第六十章 封号斗罗，封号：毒（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887102.html">第六十章 封号斗罗，封号：毒（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887103.html">第六十一章 黄金铁三角的最后一角(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887104.html">第六十一章 黄金铁三角的最后一角(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887105.html">第六十一章 黄金铁三角的最后一角(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887106.html">第六十二章 黄金铁三角的往事（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887107.html">第六十二章 黄金铁三角的往事（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887108.html">第六十二章 黄金铁三角的往事（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887109.html">第六十三章 冰火两仪眼(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887110.html">第六十三章 冰火两仪眼(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887111.html">第六十三章 冰火两仪眼(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887112.html">第十集 冰火炼金身 第六十四章 冰火炼金身（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887113.html">第六十四章 冰火炼金身（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887114.html">第六十四章 冰火炼金身（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887115.html">第六十五章 黄金圣龙VS碧磷蛇皇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887116.html">第六十五章 黄金圣龙VS碧磷蛇皇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887117.html">第六十五章 黄金圣龙VS碧磷蛇皇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887118.html">第六十六章 幽香绮罗仙品（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887119.html">第六十六章 幽香绮罗仙品（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887120.html">第六十六章 幽香绮罗仙品（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887121.html">第六十七章 水火不侵，百毒辟易（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887122.html">第六十七章 水火不侵，百毒辟易（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887123.html">第六十七章 水火不侵，百毒辟易（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887124.html">第六十八章 如意百宝囊与子母追魂夺命胆（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887125.html">第六十八章 如意百宝囊与子母追魂夺命胆（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887126.html">第六十八章 如意百宝囊与子母追魂夺命胆（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887127.html">第六十九章 小舞：发誓不要离开我（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887128.html">第六十九章 小舞：发誓不要离开我（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887129.html">第六十九章 小舞：发誓不要离开我（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887130.html">第七十章 绝世仙品配七怪（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887131.html">第七十章 绝世仙品配七怪（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887132.html">第七十章 绝世仙品配七怪（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887133.html">第十一集 大力神 第七十一章 冰清玉洁唐三少（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887134.html">第七十一章 冰清玉洁唐三少（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887135.html">第七十一章 冰清玉洁唐三少（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887136.html">第七十二章 豁然贯通（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887137.html">第七十二章 豁然贯通（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887138.html">第七十二章 豁然贯通（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887139.html">第七十三章 天斗拍卖场（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887140.html">第七十三章 天斗拍卖场（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887141.html">第七十三章 天斗拍卖场（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887142.html">第七十四章 极端纯力量魂师（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887143.html">第七十四章 极端纯力量魂师（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887144.html">第七十四章 极端纯力量魂师（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887145.html">第七十五章 七宝琉璃宗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887146.html">第七十五章 七宝琉璃宗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887147.html">第七十五章 七宝琉璃宗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887148.html">第七十六章 七宝琉璃宗的惊讶(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887149.html">第七十六章 七宝琉璃宗的惊讶(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887150.html">第七十六章 七宝琉璃宗的惊讶(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887151.html">第七十七章 大力神，爷爷真的来了（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887152.html">第七十七章 大力神，爷爷真的来了（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887153.html">第七十七章 大力神，爷爷真的来了（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887154.html">第十二集 锤名昊天 第七十八章 唐三左手，昊天锤（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887155.html">第七十八章 唐三左手，昊天锤（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887156.html">第七十八章 唐三左手，昊天锤（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887157.html">第七十九章 身世之谜与昊天斗罗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887158.html">第七十九章 身世之谜与昊天斗罗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887159.html">第七十九章 身世之谜与昊天斗罗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887160.html">第八十章 双生武魂的奥秘（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887161.html">第八十章 双生武魂的奥秘（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887162.html">第八十章 双生武魂的奥秘（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887163.html">第八十一章 小舞：哥，替我梳头（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887164.html">第八十一章 小舞：哥，替我梳头（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887165.html">第八十一章 小舞：哥，替我梳头（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887166.html">第八十二章 赤龙脚下的大地之王（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887167.html">第八十二章 赤龙脚下的大地之王（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887168.html">第八十二章 赤龙脚下的大地之王（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887169.html">第八十三章 ‘大地之王’与‘粉红娘娘’（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887170.html">第八十三章 ‘大地之王’与‘粉红娘娘’（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887171.html">第八十三章 ‘大地之王’与‘粉红娘娘’（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887172.html">第八十四章 胖子的第四魂技，凤凰啸天击（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887173.html">第八十四章 胖子的第四魂技，凤凰啸天击（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887174.html">第八十四章 胖子的第四魂技，凤凰啸天击（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887175.html">第十三集 第四魂环 第八十五章 幽香引魂兽（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887176.html">第八十五章 幽香引魂兽（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887177.html">第八十五章 幽香引魂兽（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887178.html">第八十六章 千年麟甲兽与万年魔蛛(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887179.html">第八十六章 千年麟甲兽与万年魔蛛(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887180.html">第八十六章 千年麟甲兽与万年魔蛛(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887181.html">第八十七章 万年地穴魔蛛(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887182.html">第八十七章 万年地穴魔蛛(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887183.html">第八十七章 万年地穴魔蛛(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887184.html">第八十八章 吞噬，八蛛矛(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887185.html">第八十八章 吞噬，八蛛矛(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887187.html">第八十九章 唐三的第四魂技(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887188.html">第八十九章 唐三的第四魂技(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887189.html">第八十九章 唐三的第四魂技(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887191.html">第九十章 全大陆高级魂师学院精英大赛(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887192.html">第九十章 全大陆高级魂师学院精英大赛(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887193.html">第九十章 全大陆高级魂师学院精英大赛(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887194.html">第九十一章 预选赛第一场，开战(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887195.html">第九十一章 预选赛第一场，开战(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887196.html">第九十一章 预选赛第一场，开战（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887197.html">第十四集 象甲宗 第九十二章 一分钟的完胜（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887198.html">第九十二章 一分钟的完胜（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887199.html">第九十二章 一分钟的完胜（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887200.html">第九十三章 唐昊退隐的原因(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887201.html">第九十三章 唐昊退隐的原因(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887202.html">第九十三章 唐昊退隐的原因(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887203.html">第九十四章 分心控制之三窍御之心(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887204.html">第九十四章 分心控制之三窍御之心(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887205.html">第九十四章 分心控制之三窍御之心(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887206.html">第九十五章 唐三的新战术，宇宙天空流(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887207.html">第九十五章 唐三的新战术，宇宙天空流(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887208.html">第九十五章 唐三的新战术，宇宙天空流(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887209.html">第九十六章 极限团控与恐怖的幽冥白虎(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887210.html">第九十六章 极限团控与恐怖的幽冥白虎(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887211.html">第九十六章 极限团控与恐怖的幽冥白虎(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887213.html">第九十七章 魂师界的极限流与均衡流（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887214.html">第九十七章 魂师界的极限流与均衡流（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887215.html">第九十七章 魂师界的极限流与均衡流（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887216.html">第九十八章 追魂夺命阎王帖（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887217.html">第九十八章 追魂夺命阎王帖（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887218.html">第九十八章 追魂夺命阎王帖（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887220.html">第十五本 破幻魔瞳 第九十九章 又是一块魂骨（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887221.html">第九十九章 又是一块魂骨（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887222.html">第九十九章 又是一块魂骨（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887223.html">第一百章 史莱克学院VS炽火学院（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887224.html">第一百章 史莱克学院VS炽火学院（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887225.html">第一百章 史莱克学院VS炽火学院（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887226.html">第一百零一章 火免，蓝银草（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887227.html">第一百零一章 火免，蓝银草（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887228.html">第一百零一章 火免，蓝银草（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887229.html">第一百零二章 隐藏的奥秘，七宝石武魂（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887230.html">第一百零二章 隐藏的奥秘，七宝石武魂（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887231.html">第一百零二章 隐藏的奥秘，七宝石武魂（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887232.html">第一百零三章 七位一体融合技（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887233.html">第一百零三章 七位一体融合技（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887234.html">第一百零三章 七位一体融合技（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887235.html">第一百零四章 一唱一和（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887236.html">第一百零四章 一唱一和（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887237.html">第一百零四章 一唱一和（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887238.html">第一百零五章 武魂融合技，冰雪飘零（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887239.html">第一百零五章 武魂融合技，冰雪飘零（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887240.html">第一百零五章 武魂融合技，冰雪飘零（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887241.html">第十六集 绝技融合 第一百零六章 冰雪飘零冰凤凰（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887242.html">第一百零六章 冰雪飘零冰凤凰（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887243.html">第一百零六章 冰雪飘零冰凤凰（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887244.html">第一百零七章 真是普通的蓝银草么？（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887245.html">第一百零七章 真是普通的蓝银草么？（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887246.html">第一百零七章 真是普通的蓝银草么？（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887247.html">第一百零八章 豁然贯通（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887248.html">第一百零八章 豁然贯通（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887249.html">第一百零八章 豁然贯通（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887250.html">第一百零九章 被算计的柳二龙（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887251.html">第一百零九章 被算计的柳二龙（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887252.html">第一百零九章 被算计的柳二龙（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887253.html">第一百一十章 花中之王、君临群芳（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887254.html">第一百一十章 花中之王、君临群芳（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887255.html">第一百一十章 花中之王、君临群芳（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887256.html">第一百一十一章 魂技与唐门绝学的融合（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887257.html">第一百一十一章 魂技与唐门绝学的融合（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887258.html">第一百一十一章 魂技与唐门绝学的融合（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887259.html">第一百一十二章 唐三VS火舞（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887260.html">第一百一十二章 唐三VS火舞（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887261.html">第一百一十二章 唐三VS火舞（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887262.html">第十七集 有凤来仪 第一百一十三章 凤凰的狂野（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887263.html">第一百一十三章 凤凰的狂野（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887264.html">第一百一十三章 凤凰的狂野（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887265.html">第一百一十四章 火舞与小舞的吻(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887266.html">第一百一十四章 火舞与小舞的吻(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887267.html">第一百一十四章 火舞与小舞(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887268.html">第一百一十五章 运筹帷幄，大师（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887269.html">第一百一十五章 运筹帷幄，大师（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887270.html">第一百一十五章 运筹帷幄，大师（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887271.html">第一百一十六章 奇茸通天，虎破龙（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887272.html">第一百一十六章 奇茸通天，虎破龙（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887273.html">第一百一十六章 奇茸通天，虎破龙（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887274.html">第一百一十七章 昊天锤，乱披风（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887275.html">第一百一十七章 昊天锤，乱披风（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887276.html">第一百一十七章 昊天锤，乱披风（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887277.html">第一百一十八章 总决赛，武魂城(上)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887278.html">第一百一十八章 总决赛，武魂城(中)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887279.html">第一百一十八章 总决赛，武魂城(下)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887280.html">第一百一十九章 一个爱花的封号斗罗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887281.html">第一百一十九章 一个爱花的封号斗罗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887282.html">第一百一十九章 一个爱花的封号斗罗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887283.html">第十八集 三块魂骨 第一百二十章 四个封号斗罗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887284.html">第一百二十章 四个封号斗罗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887285.html">第一百二十章 四个封号斗罗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887286.html">第一百二十一章 教皇比比东（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887287.html">第一百二十一章 教皇比比东（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887288.html">第一百二十一章 教皇比比东（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887289.html">第一百二十二章 星罗皇家学院战队（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887290.html">第一百二十二章 星罗皇家学院战队（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887291.html">第一百二十二章 星罗皇家学院战队（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887292.html">第一百二十三章 万年魂技的变异技能（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887293.html">第一百二十三章 万年魂技的变异技能（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887294.html">第一百二十三章 万年魂技的变异技能（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887295.html">第一百二十四章 幽冥白虎的身世（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887296.html">第一百二十四章 幽冥白虎的身世（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887297.html">第一百二十四章 幽冥白虎的身世（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887298.html">第一百二十五章 震惊，七怪融合技（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887299.html">第一百二十五章 震惊，七怪融合技（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887300.html">第一百二十五章 震惊，七怪融合技（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887301.html">第一百二十六章 器魂真身，暗金昊天锤（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887302.html">第一百二十六章 器魂真身，暗金昊天锤（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887303.html">第一百二十六章 器魂真身，暗金昊天锤（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887304.html">第十九集 紫极神光 第一百二十七章 史莱克七怪完整的实力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887305.html">第一百二十七章 史莱克七怪完整的实力（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887306.html">第一百二十七章 史莱克七怪完整的实力（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887307.html">第一百二十八章 唐门第十，蝠翼轮回（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887308.html">第一百二十八章 唐门第十，蝠翼轮回（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887309.html">第一百二十八章 唐门第十，蝠翼轮回（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887310.html">第一百二十九章 小舞不是人（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887311.html">第一百二十九章 小舞不是人（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887312.html">第一百二十九章 小舞不是人（下）（求月票）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887313.html">第一百三十章 昊天扬威，新的开始（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887314.html">第一百三十章 昊天扬威，新的开始（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887315.html">第一百三十章 昊天扬威，新的开始（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887316.html">第一百三十一章 智慧头骨之技，紫极神光（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887317.html">第一百三十一章 智慧头骨之技，紫极神光（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887318.html">第一百三十一章 智慧头骨之技，紫极神光（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887319.html">第一百三十二章 八十一锤（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887320.html">第一百三十二章 八十一锤（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887321.html">第一百三十二章 八十一锤（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887322.html">第一百三十三章 锤法大成，杀戮之气（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887323.html">第一百三十三章 锤法大成，杀戮之气（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887324.html">第一百三十三章 锤法大成，杀戮之气（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887325.html">第二十集 杀戮之都 第一百三十四章 唐三武魂的真面目，蓝银皇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887326.html">第一百三十四章 唐三武魂的真面目，蓝银皇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887327.html">第一百三十四章 唐三武魂的真面目，蓝银皇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887328.html">第一百三十五章 杀戮之都（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887329.html">第一百三十五章 杀戮之都（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887330.html">第一百三十五章 杀戮之都（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887331.html">第一百三十六章 地狱杀戮场（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887332.html">第一百三十六章 地狱杀戮场（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887333.html">第一百三十六章 地狱杀戮场（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887334.html">第一百三十七章 杀戮之王（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887335.html">第一百三十七章 杀戮之王（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887336.html">第一百三十七章 杀戮之王（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887337.html">第一百三十八章 血的祭奠，地狱路（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887339.html">第一百三十八章 血的祭奠，地狱路（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887340.html">第一百三十九章 暗金三头蝙蝠王（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887341.html">第一百三十九章 暗金三头蝙蝠王（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887342.html">第一百三十九章 暗金三头蝙蝠王（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887343.html">第一百四十章 十首烈阳蛇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887344.html">第一百四十章 十首烈阳蛇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887345.html">第一百四十章 十首烈阳蛇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887346.html">第二十一集 唐三的第三魂骨 第一百四十一章 蓝银领域与杀神领域（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887347.html">第一百四十一章 蓝银领域与杀神领域（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887348.html">第一百四十一章 蓝银领域与杀神领域（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887349.html">第一百四十二章 月轩、姑姑（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887350.html">第一百四十二章 月轩、姑姑（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887351.html">第一百四十二章 月轩、姑姑（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887352.html">第一百四十三章 铅华洗尽，圆融如意（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887353.html">第一百四十三章 铅华洗尽，圆融如意（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887354.html">第一百四十三章 铅华洗尽，圆融如意（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887355.html">第一百四十四章 唐三的母亲，十万年蓝银皇（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887356.html">第一百四十四章 唐三的母亲，十万年蓝银皇（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887357.html">第一百四十四章 唐三的母亲，十万年蓝银皇（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887359.html">第一百四十五章 母亲的遗物，蓝银皇右腿骨（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887360.html">第一百四十五章 母亲的遗物，蓝银皇右腿骨（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887361.html">第一百四十五章 母亲的遗物，蓝银皇右腿骨（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887362.html">第一百四十六章 回归昊天宗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887363.html">第一百四十六章 回归昊天宗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887364.html">第一百四十六章 回归昊天宗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887366.html">第一百四十七章 啸天斗罗（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887367.html">第一百四十七章 啸天斗罗（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887368.html">第一百四十七章 啸天斗罗（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887369.html">第二十二集 昊天宗 第一百四十八章 蓝银皇的霸道控制力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887370.html">第一百四十八章 蓝银皇的霸道控制力（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887371.html">第一百四十八章 蓝银皇的霸道控制力（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887372.html">第一百四十九章 第五魂技，蓝银霸王枪（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887373.html">第一百四十九章 第五魂技，蓝银霸王枪（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887374.html">第一百四十九章 第五魂技，蓝银霸王枪（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887375.html">第一百五十章 虚空鬼影迷踪（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887376.html">第一百五十章 虚空鬼影迷踪（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887377.html">第一百五十章 虚空鬼影迷踪（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887378.html">第一百五十一章 史莱克，再聚首（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887379.html">第一百五十一章 史莱克，再聚首（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887380.html">第一百五十一章 史莱克，再聚首（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887381.html">第一百五十二章 五年来的变化（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887382.html">第一百五十二章 五年来的变化（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887383.html">第一百五十二章 五年来的变化（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887384.html">第一百五十三章 奥斯卡的第六魂环（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887385.html">第一百五十三章 奥斯卡的第六魂环（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887386.html">第一百五十三章 奥斯卡的第六魂环（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887387.html">第一百五十四章 蓝银领域真正的威力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887388.html">第一百五十四章 蓝银领域真正的威力（中）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887389.html">第一百五十四章 蓝银领域真正的威力（下）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887391.html">第二十三集 猎魂行动 第一百五十五章 魂斗罗级别的碰撞</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887392.html">第一百五十六章 猎魂，灭门</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887393.html">第一百五十七章 再遇胡列娜</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887394.html">第一百五十八章 成功潜伏</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887395.html">第一百五十九章 小舞，我的爱人，终再相见</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887396.html">第一百六十章 森林死战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887397.html">第一百六十一章 同样的命运，唐三的十万年魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887398.html">第二十四集 异界唐门 第一百六十二章 复活的希望</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887399.html">第一百六十三章 进化，八蛛矛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887400.html">第一百六十四章 皇室秘辛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887401.html">第一百六十五章 八蛛矛进化铠甲的缘由</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887402.html">第一百六十六章 奥斯卡归来，复制镜像肠（求月票）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887403.html">第一百六十七章 奥斯卡，宁荣荣</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887404.html">第一百六十八章 唐门，力之一族</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887405.html">第二十五本 单属宗族 第一百六十九章 单属性四大宗族</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887406.html">第一百七十章 猥琐三贱客</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887407.html">第一百七十一章 御之一族</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887408.html">第一百七十二章 对阵，与板甲巨犀比防御</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887409.html">第一百七十三章 破防，乱披风之威</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887410.html">第一百七十四章 御之一族入唐门</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887412.html">第一百七十五章 鬼影迷踪斗纯敏</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887413.html">第二十六集 小舞复活 第一百七十六章 唐三的第六魂技，小舞现身</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887414.html">第一百七十七章 水晶血龙参</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887415.html">第一百七十八章 唐三VS杨无敌</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887417.html">第一百八十章 复活，小舞，二分之一</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887418.html">第一百八十一章 五年的差距，一挑三</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887419.html">第一百八十二章 四元素学院的来意</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887420.html">第二十七集 庚辛城 第一百八十三章 金属之都庚辛城</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887421.html">第一百八十四章 神匠楼高</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887422.html">第一百八十五章 真的滚出去了</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887423.html">第一百八十六章 寒心铁精与深海沉银</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887424.html">第一百八十七章 月黑风高杀人夜</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887425.html">第一百八十八掌 神器，八宝如意软甲</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887426.html">第一百八十九章 唐门五堂</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887427.html">第二十八集 天斗宫变 第一百九十章 宫闱，惊变，敌影现</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887428.html">第一百九十一章 刺豚、蛇矛、破魂枪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887429.html">第一百九十二章 杀神领域VS天使领域</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887430.html">第一百九十三章 自创魂技，乱披风之舞</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887431.html">第一百九十四章 小舞，复活，四分之一(求月票)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887432.html">第一百九十五章 六块，魂骨，天使神装</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887433.html">第一百九十六章 九十九级的封号斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887434.html">第二十九集 海神岛 第一百九十七章 魔鬼岛？海神岛？</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887435.html">第一百九十八章 三位绝世斗罗的来历</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887436.html">第一百九十九章 唐三和小舞的幸福，订婚</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887437.html">第二百章 重聚，史莱克七怪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887438.html">第二百零一章 镇国之宝赠唐三，瀚海乾坤罩</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887439.html">第二百零二章 瀚海乾坤罩</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887440.html">第二百零三章 暗影猎手</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887441.html">第三十集 瀚海城 第二百零四章 唐门第四，一千零一夜</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887442.html">第二百零五章 嗜血狂化之飓风右腿</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887443.html">第二百零六章 瀚海大斗魂场</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887444.html">第二百零七章 不要崇拜哥，哥只是个传说</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887447.html">第二百零九章 魔鲸海域</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887448.html">第二百一十章 超级十万年，海中霸主</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887449.html">第三十一集 登陆海神岛 第二百一十一章 险死还生、塞翁失马</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887450.html">第二百一十二章 神医拜师</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887451.html">第二百一十三章 火辣辣的紫珍珠</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887453.html">第二百一十五章 供奉海神的海神岛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887454.html">第二百一十六章 避水乾坤罩</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887455.html">第二百一十七章 海马圣柱，黑级六考</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887456.html">第三十二集 海神的考验 第二百一十八章 顶级七考与黄级一考</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887457.html">第二百一十九章 海神九考，三叉戟烙印</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887458.html">第二百二十章 海神之光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887460.html">第二百二十一章 海神之光的奥秘</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887461.html">第二百二十二章 神赐魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887462.html">第二百二十三章 天使与罗刹</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887464.html">第二百二十四章 十万年，唐三的第七魂环(求月票)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887465.html">第三十三集 七怪真身 第二百二十五章 穿越，海神之光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887466.html">第二百二十六章 穿越，双倍，海神之光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887467.html">第二百二十七章 唐三的底牌，进化的杀神领域之技</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887468.html">第二百二十八章 奥斯卡猥琐的第七魂技</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887469.html">第二百二十九章 十万年，魔魂大白鲨之王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887470.html">第二百三十章 莽撞的魔魂大白鲨之王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887472.html">第二百三十一章 邪火凤凰的武魂真身</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887474.html">第三十四集 唐三八环 第二百三十二章 七首火凤凰</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887475.html">第二百三十三章 凤凰领域</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887476.html">第二百三十四章 第三考，潮汐炼体</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887477.html">第二百三十五章 紫极魔瞳的最终境界，浩瀚</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887478.html">第二百三十六章 第四考，鲨鲸之战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887479.html">第二百三十七章 巧杀邪魔虎鲸</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887480.html">第二百三十八章 唐三的第八魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887482.html">第三十五集 挑战，封号斗罗 第二百三十九章 十万年邪魔左腿骨</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887483.html">第二百四十章 第五考，挑战，封号斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887484.html">第二百四十一章 海马圣柱之战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887485.html">第二百四十二章 控制！邪眸白虎VS海之矛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887486.html">第二百四十三章 再现，小舞献祭的时刻</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887487.html">第二百四十四章 挑战，海星圣柱</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887488.html">第二百四十五章 海魔女，人鱼公主？</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887489.html">第三十六集 海神斗罗 第二百四十六章 进化十万年，唐三的第五魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887490.html">第二百四十七章 海龙斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887491.html">第二百四十八章 控鹤擒龙，昊天飞锤</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887492.html">第二百四十九章 第六考，海神斗罗的攻击</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887493.html">第二百五十章 海神斗罗，无限接近于神的实力</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887495.html">第二百五十一章 借势过关，冲破，第六考</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887497.html">第二百五十二章 海神神诋，成神之路</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887498.html">第三十七集 海神三叉戟 第二百五十三章 拔出，神器，海神的三叉戟</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887499.html">第二百五十四章 海神三叉戟，重十万八千斤</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887500.html">第二百五十五章 四年来的收获与分别</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887501.html">第二百五十六章 武魂帝国</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887502.html">第二百五十七章 海神三叉戟之威</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887503.html">第二百五十八章 再现，杀戮之王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887505.html">第二百五十九章 杀戮之王？曾祖？</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887507.html">第三十八集 复活吧！我的爱人 第二百六十章 两大神兽的危机</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887508.html">第二百六十一章 唐三与比比东的第一次交手</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887510.html">第二百六十二章 海神的技能，黄金十三戟（高潮，求月票）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887511.html">第二百六十三章 献祭！森林之王，唐三九环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887512.html">第二百六十四章 复活之地，落日森林</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887513.html">第二百六十五章 复活吧，我的爱人</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887514.html">第二百六十六章 蓝银领域之终极进化，海纳百川</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887515.html">第三十九集 重返昊天 第二百六十七章 送上门来的大礼</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887516.html">第二百六十八章 铁汉柔情</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887517.html">第二百六十九章 重返昊天宗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887518.html">第二百七十章 泰坦苍穹破与天青迟钝神爪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887519.html">第二百七十一章 宗门首席，昊天令</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887520.html">第二百七十二章 神匠遗物，绝世暗器</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887521.html">第二百七十三章 唐家军，九十三级，帝师</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887522.html">第四十集 大战初始 第二百七十四章 天斗大军</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887523.html">第二百七十五章 七怪，守护，补给线</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887524.html">第二百七十六章 唐三的第九魂技</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887525.html">第二百七十七章 天青寂灭雷霆</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887526.html">第二百七十八章 再战比比东，唐家军初显威（绝对高潮求月票）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887527.html">第二百七十九章 紫极魔瞳之修罗魔光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887528.html">第二百八十章 计定总攻</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887529.html">第四十一集 血战嘉陵关 第二百八十一章 一个人的战场</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887530.html">第二百八十二章 唐门绝顶，佛怒唐莲</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887531.html">第二百八十三章 六大供奉，巅峰斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887532.html">第二百八十四章 击溃，九十六级的供奉兄弟</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887533.html">第二百八十五章 真正的昊天锤，完全状态的昊天斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887534.html">弟二百八十六章 昊天宗神技，大须弥锤</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887535.html">第二百八十七章 天使第九考，传承神诋</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887537.html">第二百八十九章 聪明绝顶的超级魂兽</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887538.html">第二百九十章 返老还童之战，昊天锤第四魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887539.html">第二百九十一章 神级进化，八蛛矛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887540.html">第二百九十二章 九万年！千钧蚁皇三兄弟</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887542.html">第二百九十三章 昆虫魂兽的克星，神级八蛛矛</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887543.html">第二百九十四章 宁为玉碎，不为瓦全</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887544.html">第四十三集 唐三战天使 第二百九十五章 神级天使第一战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887546.html">第二百九十六章 第十魂环，神级魂环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887547.html">第二百九十七章 大须弥锤之奥义：炸环</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887548.html">第二百九十八章 绝对压制，大须弥昊天锤</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887549.html">第二百九十九章 唐门第一，观音有泪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887550.html">第三百章 太阳圣剑</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887551.html">第三百零一章 大地中的神级追杀</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887553.html">第四十四集 百万年魂环 第三百零二章 海神降临</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887554.html">第三百零三章 目标，深海魔鲸王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887555.html">第三百零四章 战斗吧！深海魔鲸王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887556.html">第三百零五章 一线之差的神，百万年魂兽</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887557.html">第三百零六章 唐三VS深海魔鲸王</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887558.html">第三百零七章 灭杀魔鲸王，变异的杀神领域</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887559.html">第三百零八章 百万年魂环与百万年魂骨</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887560.html">第四十五集 海神传承 第三百零九章 深海魔鲸王脑袋里的宝贝</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887561.html">第三百一十章 两个传承选择，海神还是修罗神？</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887562.html">第三百一十一章 传承开始，献祭，海神斗罗</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887563.html">第三百一十二章 海神与修罗神</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887564.html">第三百一十三章 魂骨剥离，海神八翼</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887565.html">第三百一十四章 爱之一字，心灵感应的救赎</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887567.html">第四十六集 海神唐三 第三百一十六章 海神唐三</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887568.html">第三百一十七章 海神VS天使神</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887569.html">第三百一十八章 碧波、海神、无尽蔚蓝</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887570.html">第三百一十九章 食神与九彩神女</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887571.html">第三百二十章 七怪封号与复苏的修罗神之力</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887572.html">第三百二十一章 小舞的选择，魔剑入体</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887573.html">第三百二十二章 嘉陵关，双神降临</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887574.html">第四十七集 天使罗刹 第三百二十三章 绝世双神，决战万米之上</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887575.html">第三百二十四章 超级版融合技，幽冥白虎</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887576.html">第三百二十五章 六怪发威，兵临城下</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887578.html">第三百二十六章 九宝无敌神光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887579.html">第三百二十七章 满城尽是绿幽幽</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887580.html">第三百二十八章 太阳天使</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887581.html">第三百二十九章 罗刹神现</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887582.html">第四十八集 完美融合（大结局）第三百三十章 天使与罗刹</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887583.html">新书《阴阳冕》预告</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887584.html">第三百三十一章 海神陨落(求月票)</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887585.html">第三百三十二章 完美融合之复活神光</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887586.html">第三百三十三章 神魂归位，海神归来</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887587.html">第三百三十四章 最终决战</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_153887589.html">第三百三十六章 大结局，最后一个条件（全书完）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_162646946.html">第二十五章 器武魂的威力（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_164771902.html">第一百七十九章 唐三第六魂技：虚无、爆杀八段摔</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_180121844.html">第二十三集 猎魂行动 第一百五十五章 魂斗罗级别的碰撞（上）</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_180121845.html">第二百七十章 泰坦苍穹破与天青迟钝神爪</a></li><li class="col3"><a href="//www.meegoq.com/book/71760_180121846.html">第四十集 大战初始 第二百七十四章 天斗大军</a></li>
		</ul>
	</article>
</section>
<div class="clearfix"></div>

<footer>
	<div>
		Copyright &#169; 2009-2018 <a href="//www.meegoq.com" target="_blank" title="米趣小说网">米趣小说网</a> All Rights Reserved .版权所有米趣小说网。<br />
		本站内容系米趣小说网网友自愿上传，不代表米趣小说网赞成被搜索网站的内容或立场。
		如果版权人认为在本站放置您的作品有损您的利益，请发邮件至meegoq.com@gmail.com，本站确认后将会立即删除。<br />
		<br>
	</div>
</footer>
<div class="hidden">
<script type="text/javascript">third.do();</script>
</div>

</body>
</html>
  ''';
  var rule19 = r'//*[@class="col1 volumn"][3]/following-sibling::li/a/@href';

  // var hparser = HParser(rule19_html);
  // var result = hparser.parseRuleString(rule19);
  // print(result);
  // for(var x in result){
  //   print(x);
  // }

  // var eparser = HEvalParser({'page': 10, 'key': 'test'});
  // var result = eparser.parse(exp2);
  // print(result);
  // print(DateTime.now());


  var rule20 = r'onclick#.+\\((\\d+)\\)#https://mobile.hotread.com/story/$1<js>java.ajax(result)</js>.detail@.book-type@text<js>java.ajax(result)</js>';
  var jsScripts = RegExp(RegexpRule.JS_SPLIT).allMatches(rule20);
  if(jsScripts.isNotEmpty){
    jsScripts.forEach((m) {
      var js = m.group(1);
      print(js);
    });
  }

}

dynamic getHttp() async {
  try {
    var options = Options();
    // options.responseDecoder = gbkDecoder;
    Response response = await Dio().get("https://wap.zxbiquge.com/81_81336/265141.html",options: options);
    return response.data;
  } catch (e) {
    print(e);
  }
}

String gbkDecoder(List<int> responseBytes, RequestOptions options, ResponseBody responseBody) {
  return gbk_bytes.decode(responseBytes);
}