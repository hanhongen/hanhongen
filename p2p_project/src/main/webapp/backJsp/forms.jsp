<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive
	Website Template | Forms :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script> -->
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<!-- Custom CSS -->
<link href="/p2p_project/backStyle/css/style.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<!-- 日期控件 -->
<link rel="stylesheet" type="text/css"
	href="/p2p_project/backStyle/css/bootstrap-datetimepicker.min.css">
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<!-- 日期控件 -->
<script src="/p2p_project/backStyle/js/bootstrap-datetimepicker.min.js"></script>
<script src="/p2p_project/backStyle/js/bootstrap-datetimepicker.fr.js"></script>
<script
	src="/p2p_project/backStyle/js/bootstrap-datetimepicker.zh-CN.js"></script>
<!---//webfonts--->
<!-- Bootstrap Core JavaScript -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script type="text/javascript">

	function getTime()
	{
	    var time = new Date();
	    $("#times").html(time.toLocaleString());
	}
	
	
	$(function(){
	    setInterval("getTime()",1000);
	});


</script>
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		  <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="/p2p_project/user/index/${user.id}">回到首页</a>
            </div>
            <!-- /.navbar-header -->
           
             <span class="navbar-right" ><br>
             	
	        	<p style="color: white;">用户：${user.user_name} | 时间：<span id="times"></span></p>
	        	
	      		</span>
          
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                                    <ul class="nav" id="side-menu">
                        <li>
                             <a href=""><i class="fa fa-dashboard fa-fw nav_icon"></i>后台首页</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-laptop nav_icon"></i>理财产品<span class="fa arrow"></span></a>
                          <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/product/showSolid">固收类</a>
                                </li>
                            </ul>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="#">私募/股权类</a>
                                </li>
                            </ul>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">海外配置</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                             <a href="#"><i class="fa fa-indent nav_icon"></i>钱包管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/test/members">钱包缴费记录</a>
                                </li>
                                <li>
                                    <a href="#">Typography</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>学院管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/news_type/news_typelist/${user.id }">资讯分类</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/news/listnews/${user.id }">资讯管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                       
                         <!-- ----------------------------------------------------- -->
                         <li>
                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>会员管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/member/listMember">账号管理</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/member_bankcards/listMember_Bankcards">绑卡管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/subject/listSubject">付息计划</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/member_deposit_record/listMember_deposit_record">充值管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/member_withdraw_record/listMember_withdraw_record">提现管理</a>
                                </li>
                                 <li>
                                    <a href="/p2p_project/award_records/listAward_records">邀请奖励</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-flask nav_icon"></i>盈加设置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/p2p_project/test/test1">公告管理</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/test/list">意见反馈</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!-- ----------------------------------------------------- -->
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>系统设置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                 <li>
                                    <a href="/p2p_project/usersetting/showuser">账户设置</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/back/showRole">角色设置</a>
                                </li>
                                <li>
                                    <a href="/p2p_project/backJsp/updatePwd.jsp">密码设置</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
		<div id="page-wrapper">
			<div class="graphs">
			<div class="widget_head">
				<div class="box-right-main">
					<h2>
						<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>账号管理
					</h2>
				</div>
				</div>
				<div class="tablelist">
					<form action="/p2p_project/member/listMember" method="post"
						id="form1">
						<table class="table tabletop">
							<tr>
								<td style="width: 110px; padding-left: 30px">手机号：</td>
								<td style="width: 180px"><input type="text"
									name="mobilePhonem" class="form-control" placeholder="手机号"
									value="${mobilePhonem }"></td>
								<td style="width: 110px; padding-left: 30px">姓名：</td>
								<td style="width: 180px"><input type="text"
									name="memberNamem" class="form-control" placeholder="姓名"
									value="${memberNamem }"></td>
								<td style="width: 110px; padding-left: 30px">邀请码：</td>
								<td style="width: 180px"><input type="text"
									name="invitationcodem" class="form-control" placeholder="邀请码"
									value="${invitationcodem }"></td>
								<td style="width: 110px; padding-left: 30px">注册时间：</td>
								<td>
									<div class="form-group" style="width: 150px">
										<!-- 时间样式 -->
										<input type="date" class="form-control time"
											ng-model="model.date" name="create_datem">
									</div>
								</td>
								<td class="pull-right" style="padding-right: 10px">
									<button type="submit" class="btn btn-primary btn-sm">查询</button>
								</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										onclick="$('#form1').find(':input').not(':button, :submit, :reset').val('').removeAttr('checked').removeAttr('selected');">重置</button>
								</td>
							</tr>
						</table>
					</form>
					<table class="table table-bordered tablebox">
						<tr class="text-center" bgcolor="#f7f7f7">
							<td>序号</td>
							<td>手机号</td>
							
							<td>姓名</td>
							<td>身份证</td>
							<td>邀请码</td>
							<td>注册时间</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${listMember }" var="lm" varStatus="stat">
							<tr class="text-center">
								<td>${stat.index+1 }</td>
								<td>${lm.mobile_phone }</td>
								<td>${lm.name }</td>
								<td>${lm.identity }</td>
								<td>${lm.invitationcode }</td>
								<td>${lm.create_date }</td>
								<td><a class="btn btn-primary btn-sm"
									href="/p2p_project/member/listMemberId/${lm.id}">账号详情</a></td>
							</tr>
						</c:forEach>
					</table>
					<!-- --------------------------------------------------------------------------------------------------------------------------- -->

				</div>
				<div class="copy_layout">
					<p>Copyright Â© 2015 Modern. All Rights Reserved | Design by</p>
				</div>

				<!-- /#page-wrapper -->
			</div>
		</div></div>
		<!-- /#wrapper -->
		<!-- Nav CSS -->
		<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
		<!-- Metis Menu Plugin JavaScript -->
		<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
		<script src="/p2p_project/backStyle/js/custom.js"></script>
		<script type="text/javascript">
// $(function(){//查询
// 	$("#form1").click(function(){
// 		document.forms[0].action="/p2p_project/member/listMember";
// 		document.forms[0].submit();
// 	});
// });
</script>
</body>
</html>
