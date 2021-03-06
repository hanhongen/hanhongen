<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/p2p_project/frontStyle/css/style.css" rel="stylesheet"
	type="text/css">
<link href="/p2p_project/frontStyle/css/gywm.css" rel="stylesheet"
	type="text/css">
<link href="/p2p_project/frontStyle/css/center.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/p2p_project/frontStyle/css/font-style.css">
<script type="text/javascript"
	src="/p2p_project/frontStyle/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/p2p_project/frontStyle/js/all.js"></script>
<!-- <script type="text/javascript" src="js/a.js"></script> -->
</head>
<body class="index_niwo holiday_bg">
	<div class="niwdoawi_top mw_1180">
		<div class="header w1190 clearfix">
			<div class="fl tel">
				<em class="fs_14 mr_5 tel_ico">客服热线</em> <i class="aril">400-688-8888</i>
				<span class="iphone"><i></i> <a href="" target="_blank">手机客户端</a>
					 </span> <span class="hover_sina"> <a
					href="" target="_blank"></a>
				</span> <span class="hover_weixin toptk">
				</span>
			</div>
			<div class="fr login clearfix">

				<c:if test="${empty user}">
				  <div class='login_bt'>
					<a href="/p2p_project/frontJsp/login.jsp" id="login" rel="nofollow"
						class="fff">登录</a> <a href="/p2p_project/frontJsp/register.jsp"
						rel="nofollow" class="fff">注册</a>
				</div>
				</c:if>
				<c:if test="${!empty user}">
				<div class='login_bt'>
				  <font color="white">欢迎您：${user.user_name }&nbsp;|</font>
				  <a href="/p2p_project/user/outlogin"><font color="white">注销</font></a>
				  <a href="/p2p_project/user/feedBacks/${user.id}"><font color="white">意见反馈</font></a>
				</div>
				</c:if>
				<dl>
					<dt>
						<a href="" rel="nofollow" class="txnone"
							style="color: #ffffff">账户中心</a>
					</dt>
					<dd>
						<a href="" rel="nofollow" >充值</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" >提现</a>
					</dd>
					<dd>
						<a href="" rel="nofollow" >我的投资</a>
					</dd>
					<dd>
						<a href="" target="_blank" rel="nofollow">我的借款</a>
					</dd>
				</dl>
				<div class="community">
				<c:if test="${user.id==1}">
				   <a href="/p2p_project/user/indexback/${user.id}" target="_blank" rel="nofollow" class="fc_white">进入后台</a>
				</c:if>
				</div>
			</div>
		</div>
	</div>

	<!--登录-->
	<div class="niwdoawi_center mw_1180">
		<div class="w1190 logo clearfix">
			<a href="" title="" class="fl pl_20 logo_a holiday_logo"><img
				src="/p2p_project/frontStyle/images/logo.jpg" height="52" alt="" /></a>
			<div class="fr righ">
				<ul class="nav clearfix">
					<li><a rel="nofollow" href="/p2p_project/user/index" class="one">首页</a></li>

					
					<li style="display: none;"><a href="" ></a></li>
					<li class="rela"><a href="/p2p_project/toInvestment/showSubject" class="one">我要投资</a>
					</li>
					
					<li class="rela"><a href="/p2p_project/frontJsp/frontnews.jsp" class="one">盈+商学院</a></li>
					
					<c:if test="${!empty user.id}">
					<li class="rela"><a href="/p2p_project/subject_purchase_record/listSubject_purchase_records/${user.id}/${user.user_name }" class="one">我的加法库</a></li>
					</c:if>
					<c:if test="${empty user.id}">
					<li class="rela"><a href="/p2p_project/frontJsp/login.jsp" class="one">我的加法库</a></li>
					</c:if>
					<li class="rela"><a href="/p2p_project/frontJsp/about.jsp"
						 class="one">关于我们 </a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--nav-->
	<div class="niwdoawi_banner">
		<div class="img">
			<ul>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner1.jpeg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
				<li
					style="background: url(/p2p_project/frontStyle/images/banner.jpg) center top no-repeat;">
					<a href="" rel="nofollow" target="_blank"></a>
				</li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
(function($){$.fn.extend({"banner":function(options){var defaluts={eml:".page,.prev,.next,.title",direction:"lr",mode:"slide",pages:true,btns:true,title:true,autoanimate:true,ease:"easeInOutElastic",cycle:true,cycleType:true,auto:2000,animation:1000};var options=$.extend(defaluts,options);return this.each(function(){var op=options,obj=$(this),objLi=obj.find("li"),objSpan=obj.find(".page span"),lenB=obj.find("li").length,prev=obj.find(".prev"),next=obj.find(".next"),title=obj.find(".title"),f=true;if(op.direction=="ud"&&op.mode=="slide"){var Scr=obj.find("ul");var Scrw=Scr.find("li").outerWidth();var Scrh=Scr.find("li").outerHeight();Scr.find("li").height(Scrh);Scr.height(Scrw*lenB);Scr.height(Scrh)}if(op.direction=="lr"&&op.mode=="slide"){var Scr=obj.find("ul");var Scrw=Scr.find("li").outerWidth();var Scrh=Scr.find("li").outerHeight();Scr.find("li").width(Scrw);Scr.width(Scrw*lenB);Scr.height(Scrh)}obj.find(".cont").text(lenB);var page="<div class='page'>";for(i=1;i<=lenB;i++){page+="<span>"+i+"</span>"}page+="</div>";obj.append(page);var page=obj.find(".page span");page.eq(0).addClass("current");var imgAlt=objLi.eq(0).find("img").attr("alt");obj.find(".alt").text(imgAlt);if(op.pages==false){obj.find(".page").hide()}if(op.btns==false){prev.hide();next.hide()}if(op.title==false){title.hide()}if(op.mode=="slide"){objLi.css({"float":"left"})}else{if(op.mode=="fade"){objLi.css({"position":"absolute","top":0,"left":0,"display":"none"});objLi.eq(0).show()}}if(op.unlimited==true){var n=0;objLi.each(function(){$(this).attr("indexNum",n++)})}if(op.cycle==true&&op.cycleType==true){if(op.direction=="ud"&&op.mode=="slide"){objLi.closest("ul").css({"position":"relative","top":-Scrh});objLi.css({"position":"absolute","left":0,"display":"none","top":Scrh,"z-index":1});objLi.eq(0).css({"display":"block","z-index":5})}else{if(op.direction=="lr"&&op.mode=="slide"){objLi.closest("ul").css({"position":"relative","left":-Scrw});objLi.css({"position":"absolute","top":0,"display":"none","left":Scrw,"z-index":1});objLi.eq(0).css({"display":"block","z-index":5})}}}page.live("mousemove",function(){if(!$(this).hasClass("current")){var curr=page.index(this)+1;imgAlt=objLi.eq(page.index(this)).find("img").attr("alt");obj.find(".curr").text(curr);obj.find(".alt").text(imgAlt);if(op.direction=="ud"&&op.mode=="slide"&&!Scr.is(":animated")){if(op.cycle==true&&op.cycleType==true){var ui=obj.find(".page span.current").index();var ut=$(this).index();if(ut==lenB-1&&ui==0){f=false}else{if(ut==0&&ui==lenB-1){f=true}else{if(ut>ui){f=true}else{f=false}}}if(f){Scr.css("top",-Scrh);Scr.find("li").eq($(this).index()).css({"top":Scrh*2,"display":"block"});Scr.stop(true,true).animate({"top":-Scrh*2},op.animation,op.ease,function(){Scr.css("top",-Scrh);Scr.find("li").eq(ui).hide();Scr.find("li").eq(ui).css({"z-index":1});Scr.find("li").eq(ut).css({"z-index":5,"top":Scrh})})}else{Scr.css("top",-Scrh);Scr.find("li").eq($(this).index()).css({"top":0,"display":"block"});Scr.stop(true,true).animate({"top":0},op.animation,op.ease,function(){Scr.css("top",-Scrh);Scr.find("li").eq(ui).hide();Scr.find("li").eq(ui).css({"z-index":1});Scr.find("li").eq(ut).css({"z-index":5,"top":Scrh})})}}else{Scr.stop(true,true).animate({marginTop:-Scrh*($(this).index())},op.animation,op.ease)}$(this).addClass("current").siblings().removeClass("current")}else{if(op.direction=="lr"&&op.mode=="slide"&&!Scr.is(":animated")){if(op.cycle==true&&op.cycleType==true){var i=obj.find(".page span.current").index();var t=$(this).index();if(t==lenB-1&&i==0){f=false}else{if(t==0&&i==lenB-1){f=true}else{if(t>i){f=true}else{f=false}}}if(f){Scr.css("left",-Scrw);Scr.find("li").eq($(this).index()).css({"left":Scrw*2,"display":"block"});Scr.stop(true,true).animate({"left":-Scrw*2},op.animation,op.ease,function(){Scr.css("left",-Scrw);Scr.find("li").eq(i).hide();Scr.find("li").eq(i).css({"z-index":1});Scr.find("li").eq(t).css({"z-index":5,"left":Scrw})})}else{Scr.css("left",-Scrw);Scr.find("li").eq($(this).index()).css({"left":0,"display":"block"});Scr.stop(true,true).animate({"left":0},op.animation,op.ease,function(){Scr.css("left",-Scrw);Scr.find("li").eq(i).hide();Scr.find("li").eq(i).css({"z-index":1});Scr.find("li").eq(t).css({"z-index":5,"left":Scrw})})}}else{Scr.stop(true,true).animate({marginLeft:-Scrw*($(this).index())},op.animation,op.ease)}$(this).addClass("current").siblings().removeClass("current")}else{if(op.mode=="fade"){if(objLi.eq(page.index(this)).is(":hidden")){objLi.stop(true,true).fadeOut(op.animation).eq(page.removeClass("current").index($(this).addClass("current"))).fadeIn(op.animation)}}}}}});if(op.autoanimate==true){var index=1;var time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto);obj.find(op.eml).hover(function(){clearInterval(time)},function(){index=obj.find(".page span.current").index()+1;if(index==lenB){index=0}time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto)});objLi.hover(function(){clearInterval(time)},function(){index=obj.find(".page span.current").index()+1;if(index==lenB){index=0}time=setInterval(function(){page.eq(index).mousemove();index++;if(index==lenB){index=0}},op.auto)})}prev.mousemove(function(){index=obj.find(".page span.current").index()-1;prev.removeClass("disabled");next.removeClass("disabled");if(op.cycle!=true){if(index==-1||index==0){prev.addClass("disabled")}if(index==-1){return false}}page.eq(index).mousemove()});next.mousemove(function(){prev.removeClass("disabled");next.removeClass("disabled");index=obj.find(".page span.current").index()+1;if(op.cycle!=true){if(index==lenB||index==lenB-1){index=lenB-1;if(index==lenB-1||index==lenB){next.addClass("disabled")}}}else{if(index==lenB){if(op.cycle!=true){index=lenB-1}else{index=0}}}page.eq(index).mousemove()})})}})})(jQuery);
</script>
	<script type="text/javascript">
    $('.niwdoawi_banner').banner({
        mode:'fade', //动画方式 fade(渐隐渐现) / slide (左右滑入)
        pages:true,  //是否需要pages true/false
        btns:true,  //是否需要btns true/false
        title:true, //是否需要title true/false
        auto:4000,  //停留时间
        animation:1000 //动画时间
    });
</script>
	

	<div class="subnav">
		<ul>
			<li class="strong">您的位置：</li>
			<li><a href="/p2p_project/frontJsp/index.jsp">首页</a>&gt;</li>
			<li>关于我们</li>
		</ul>
	</div>

	<div class="about-us-wrap">
		<div class="about-us cf mod">

			<div class="about-us-sidebar">
				<img src="/p2p_project/frontStyle/images/sidebar.png">
				<div id="PP_NavLabel" class="list-nav-label" style="top: 161px;"></div>
				<ul class="list">
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/introduction">公司简介</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/cmspeech">董事长致辞</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/bigevent">大事记</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							资质荣誉<span class="caret"></span>
						</h2>
						<ul class="item-cont" style="height: 0px;">
							<li data-filter=""><a href="">资质证书</a></li>
							<li data-filter=""><a href="">荣誉榜</a></li>
						</ul>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/report">业绩报告</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/partner">合作机构</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a href="/Info/About/AboutUsIndex/contactus">联系我们</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							企业风采<span class="caret"></span>
						</h2>
						<ul class="item-cont" style="height: 0px;">
							<li data-filter=""><a href="/Info/About/AboutUsIndex/show">公司展示</a></li>
							<li data-filter=""><a
								href="/Info/About/AboutUsIndex/publications">公司刊物</a></li>
							<li data-filter=""><a href="/Info/About/AboutUsIndex/video">企业视频</a></li>
						</ul>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a
								href="http://special.ppmoney.com/2016/03/xyzp-ppmoney/xyzp-ppmoney.html">人才招聘</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a target="_blank" href="http://www.ppmoney.com/news/ppgg">最新动态</a>
						</h2>
					</li>
					<li class="item">
						<h2 class="strong" data-filter="">
							<a target="_blank" href="http://www.ppmoney.com/news/mtbd">媒体报道</a>
						</h2>
					</li>
				</ul>
			</div>

			<!--about-us-sidebar end-->


			<div class="about-us-content">
				<div class="profile-content">
					<div class="p-title">
						<span class="em-title">公司简介</span>
					</div>
					<p>PPmoney互联网金融平台（ppmoney.com）由广州万惠投资管理有限公司负责运营，经营团队由金融服务、风险管理及电子商务等业界一流的专业人士组成。</p>
					<p>PPmoney以人民（People)的财富（money)为人民（People)为宗旨，致力于为公众提供一个安全、专业、高收益的理财平台。PPmoney结合多年的资产管理服务和风险控制经验，利用先进的信息处理技术，不断为平台用户提供更丰富、更便捷的互联网理财产品。</p>
					<p>PPmoney积极响应李克强总理“促进互联网金融健康发展”的精神，根据“珠江三角洲金融改革总体方案”和“金融改革十二五规划”的指导，协同典当行、财富管理等机构，合力解决当前经济运行中存在的“两多两难”（民间资金多、投资难；中小企业多、融资难）突出问题，推动金融改革、助力实体经济发展、促进产业转型升级。</p>

					<div class="p-title">
						<span class="em-title">PPmoney理念</span>
					</div>
					<p>专业风控，合规运营。安全高效，稳健收益。</p>

					<div class="p-title">
						<span class="em-title">PPmoney价值观</span>
					</div>
					<p>为个人和企业用户创建安全稳健的理财平台，为合作机构营造和谐共赢的商业机会。</p>

					<div class="p-title">
						<span class="em-title">PPmoney使命</span>
					</div>
					<p>为个人和企业用户创建安全稳健的理财平台，为合作机构营造和谐共赢的商业机会。</p>

					<div class="p-title">
						<span class="em-title">PPmoney愿景</span>
					</div>
					<p>让广大用户通过PPmoney互联网金融平台享受专业资产管理服务、实现财富增值——会理财，更赚钱。</p>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
    function GetJobs(){$.ajax({type:"Post",url:"",success:function(a){1==a.State?ShowJobs(a):null!=a.Message&&PPmoney.dialog.quickClose("鑾峰彇澶辫触")}})}function ShowJobs(a){for(var b=$(".position"),c=a.Data.Items||[],d=0,e=c.length;e>d;d++){var f=c[d].Content,g=/鎷涜仒浜烘暟锛�(\d)浜�(.*)/i,h=(g.exec(f),RegExp.$1),i=RegExp.$2,j=c[d].EditDate.toDate().format("yyyy-MM-dd");0===i.toLowerCase().indexOf("<br>")&&(i=i.slice(4));var k=i.split("浠昏亴璧勬牸")[0],l=i.split("浠昏亴璧勬牸")[1],m='<div class="job-mod"><div class="job-mod-hd cf"><div class="hd-l"><span class="address"><span class="spirit spi-add"></span>骞垮窞</span><span class="carrer">'+c[d].JobName+'</span></div><div class="hd-r"><span class="m-r40"><span class="num">'+h+'</span>浜�</span><span class="m-r50 date">'+j;if(l){var n=l.split("鐢宠宀椾綅锛�")[1]||"";l=l.split("鐢宠宀椾綅锛�")[0],n=n.split("<")[0],m+='</span><a href="javascript:;"><span class="spirit spi-updown"></span></a></div></div><div class="job-mod-bd"><div class="cf"><div class="job-mod-list duty">'+k+'</div></div><div class="cf"><div class="job-mod-list require">浠昏亴璧勬牸'+l,m+='</div></div><a href="'+n+'" class="job-mod-btn">鐢宠宀椾綅</a></div></div>'}else{var o=k.split("鐢宠宀椾綅锛�")[1]||"";k=k.split("鐢宠宀椾綅锛�")[0],o=o.split("<")[0],m+='</span><a href="javascript:;"><span class="spirit spi-updown"></span></a></div></div><div class="job-mod-bd"><div class="cf"><div class="job-mod-list duty">'+k+'</div></div><a href="'+o+'" class="job-mod-btn">鐢宠宀椾綅</a></div></div>'}b.append(m)}}function timeAxis(a){var b=a.children("li"),c=[10,50],d=[11,445];b.each(function(a,b){if(2>a)$(b).css({top:c[a],left:d[a]}),c[a]+=$(b).outerHeight(),$(b).find(".spirit").addClass(0==a?"spi-honor-left":"spi-honor-right");else{var e=Math.min.apply(null,c),f=$.inArray(e,c);$(b).css({top:e,left:d[f]}),c[f]+=$(b).outerHeight(),$(b).find(".spirit").addClass(0==f?"spi-honor-left":"spi-honor-right")}});var e=Math.max.apply(null,c);return a.height(e),e}function honorShowHide(a,b){var c=$(a).children(".spirit"),d=$(a).siblings(".honor-roll-md");c.hasClass("spi-honor-show")?(c.removeClass("spi-honor-show").addClass("spi-honor-hide"),d.height(0)):(c.removeClass("spi-honor-hide").addClass("spi-honor-show"),d.height(b))}String.prototype.toDate=function(){return new Date(parseFloat(this.match(/\d+/)))},Date.prototype.format=function(a){function b(a){return 10>a?"0"+a:a}{var c=this.getFullYear(),d=this.getMonth()+1;this.getDate(),this.getHours(),this.getMinutes(),this.getSeconds()}return a=a.replace("yyyy",c),a=a.replace("yy",c%100),a=a.replace("MM",b(d)),a=a.replace("dd",b(this.getDate())),a=a.replace("hh",b(this.getHours())),a=a.replace("mm",b(this.getMinutes())),a=a.replace("ss",b(this.getSeconds()))},$(function(){function a(a,b){$(a).first().addClass("tab-em"),$(b).eq(0).show().siblings().hide(),$(".aboutus-title").show(),$(a).on("click",function(){$(this).addClass("tab-em").siblings().removeClass("tab-em"),$(b).eq($(this).index(a)).show().siblings().hide(),$(".aboutus-title").show()})}function b(){var a=[];return $(".section-p").each(function(b,c){a.push($(c).html())}),a}a(".partner-btn",".partner"),a(".y-btn",".event-list"),a(".show-btn",".show-c");var c=b();$(".section-p").each(function(a,b){if($(b).text().length>68){$(b).siblings(".down").show();var c=$(b).text();$(b).html(c.slice(0,68)+"...")}}),$(".down").on("click",function(){$(this).hide(),$(this).next().show(),$(this).prev().html(c[$(this).index(".down")]).css({height:"auto"})}),$(".up").on("click",function(){$(this).hide(),$(this).prev().show();var a=$(this).siblings(".section-p");if(a.text().length>68){var b=a.text();a.html(b.slice(0,68)+"...")}});var d=$(".about-us-sidebar [data-filter]");
    d.on({mouseover:function(){$("#PP_NavLabel").css({top:$(this).offset().top-$(".about-us-sidebar").offset().top})}}),$(".item [data-drop-down]").toggle(function(){var a=$(this).siblings(".item-cont");if(a.length){var b=a.children("li").length;a.height(60*b)}},function(){$(this).siblings(".item-cont").height(120)}),GetJobs(),$(".about-us .recruit-wrap .position").delegate(".job-mod-hd","click",function(){$(this).siblings(".job-mod-bd").slideToggle(400).parent(".job-mod").toggleClass("open").siblings(".job-mod").removeClass("open").children(".job-mod-bd").slideUp(400)}),$(".job-mod").eq(0).addClass("open"),$(".job-mod.open>.job-mod-bd").slideDown(400)}),function(a){a(window).on("load",function(){var b=a(".honor-roll-nav").eq(0),c=timeAxis(b);b.parent(".honor-roll-md").height(c),a(".honor-roll-mod:eq(0)>.year").click(function(){honorShowHide(this,c)});var d=a(".honor-roll-nav").eq(1),e=timeAxis(d);d.parent(".honor-roll-md").height(0),a(".honor-roll-mod:eq(1)>.year").click(function(){honorShowHide(this,e)}),setTimeout(function(){a(".g-ft-wrap .kf-nav li:eq(0)>a>u").hover()},1e3)})}(jQuery);


     $(document).ready(function(){
               $(".item h2").click(function(){
                    $(".item-cont").css("height","180px;");
               },function(){
                  $(".item-cont").css("height","0px;");
                  
               })
               
           })
    </script>




	<div class="g-ft-wrap">
		<div class="g-ft">
			<div class="cf">
				<ul class="ft-nav cf">
					<li class="cf">基本介绍
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#58"
								target="_blank" title="会员注册" rel="nofollow">会员注册</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#59"
								target="_blank" title="常用名词解释" rel="nofollow">常用名词解释</a></li>
						</ul>
					</li>
					<li class="cf">投资理财
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#62"
								target="_blank" title="投资准备" rel="nofollow">投资准备</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#63"
								target="_blank" title="申请成为投资人" rel="nofollow">申请成为投资人</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#64"
								target="_blank" title="申请理财包技巧" rel="nofollow">申请理财包技巧</a></li>
						</ul>
					</li>
					<li class="cf">融资快贷
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#67"
								target="_blank" title="利率期限方式" rel="nofollow">利率期限方式</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#68"
								target="_blank" title="如何申请融资" rel="nofollow">如何申请融资</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#69"
								target="_blank" title="如何偿还资金" rel="nofollow">如何偿还资金</a></li>
						</ul>
					</li>
					<li>充值提现
						<ul>
							<li><a href="http://www.ppmoney.com/info/help/Detail#70"
								target="_blank" title="充值相关的问题" rel="nofollow">充值相关的问题</a></li>
							<li><a href="http://www.ppmoney.com/info/help/Detail#71"
								target="_blank" title="提现相关的问题" rel="nofollow">提现相关的问题</a></li>
						</ul>
					</li>
					<li>安全保障
						<ul>
							<li><a href="" target="_blank" title="找回密码" rel="nofollow">找回密码</a></li>
							<li><a href="" target="_blank" title="密码安全常识" rel="nofollow">密码安全常识</a></li>
							<li><a href="" target="_blank" title="电子合同有效吗"
								rel="nofollow">电子合同有效吗</a></li>
						</ul>
					</li>
				</ul>
				<div class="fr cf">
					<div class="kf">
						<p class="f-s16">在线客服</p>
						<h2>888-8888-888</h2>
						<p>（服务时间 9:00～22:00）</p>
						<ul class="kf-nav cf m-t5">
							<li><a href="" target="" title="" rel="nofollow"><img
									src="images/zmcf_wbcp.png"> </a></li>
							<li><a href="" target="_blank" title="PPmoney微信"
								rel="nofollow"><img src="images/zmcf_wxcp.png"></a></li>
							<li><a href="" target="_blank" title="在线客服" rel="nofollow"><img
									src="images/zmcf_qqcp.png"></a></li>
						</ul>
					</div>
					<div class="fl">
						<u class="u-code u-g-kf"></u>
					</div>
				</div>
			</div>
			<div class="friendlink">
				<p class="cf">
					<span class="f-mod">友情链接:</span> <a href="http://www.moneyking.cn/"
						target="_blank" title="太平洋资产管理(集团)">太平洋资产管理(集团)</a> <a
						href="http://money.jrj.com.cn/" target="_blank" title="金融界">金融界</a>
					<a href="http://www.rong360.com/licai/" target="_blank"
						title="融360">融360</a> <a href="http://www.caiguu.com/licai/"
						target="_blank" title="财股网理财">财股网理财</a> <a
						href="http://www.nlnw.net" target="_blank" title="房贷利率">房贷利率</a> <a
						href="http://www.wangdaizhijia.com/" target="_blank" title="网贷之家">网贷之家</a>
					<a href="http://house.focus.cn/fangdaijisuanqi/shangyedaikuan/"
						target="_blank" title="商业贷款计算器">商业贷款计算器</a> <a
						href="http://www.jpm.cn/" target="_blank" title="金评媒">金评媒</a> <a
						href="http://www.smartqian.com/" target="_blank" title="金融导航">金融导航</a>

				</p>
			</div>
			<ul class="link-nav cf">
				<li><a href="http://www.miibeian.gov.cn/" target="_blank"
					title="" rel="nofollow"><u class="u-10"></u></a></li>
				<li><a href="http://www.gdnet110.gov.cn/" target="_blank"
					title="" rel="nofollow"><u class="u-11"></u></a></li>
				<li><a
					href="http://webscan.360.cn/index/checkwebsite/url/www.ppmoney.com"
					target="_blank" title="" rel="nofollow"><u class="u-12"></u></a></li>
				<li><a
					href="https://search.szfw.org/cert/l/CX20130826002735003003"
					target="_blank" title="" rel="nofollow"><u class="u-13"></u></a></li>
				<li><a
					href="https://ss.knet.cn/verifyseal.dll?sn=e1309121101004242455g1000000&amp;ct=df&amp;a=1&amp;pa=000000"
					target="_blank" title="" rel="nofollow"><u class="u-14"></u></a></li>
				<li><a
					href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1591537685"
					target="_blank" title="" rel="nofollow"><u class="u-15"></u></a></li>
				<li><a
					href="http://www.anquan.org/authenticate/cert/?site=www.ppmoney.com&amp;at=business"
					target="_blank" title="" rel="nofollow"><u class="u-16"></u></a></li>
			</ul>
			<div class="copyright">
				<a href="/info/about" title="关于我们" rel="nofollow">关于我们</a>| <a
					href="/job/list" title="人才招聘" rel="nofollow">人才招聘</a>| <a
					href="/info/law" title="法律申明" rel="nofollow">法律申明</a>| <a
					href="/info/feedback" title="意见反馈" rel="nofollow">意见反馈</a>| <a
					href="/info/contact" title="联系我们" rel="nofollow">联系我们</a>| <a
					href="/info/help" title="新手必读" rel="nofollow">新手必读</a>
				<pre class="p-t10">版权所有 (C) PPmoney.com <a
						href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备12030634号</a><a
						href="/special/icp/icp.html" target="_blank" rel="nofollow">增值电信业务经营许可证粤B2-20150286</a>
				</pre>
			</div>
		</div>
	</div>



</body>
</html>