<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>用户管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<!-- Custom CSS -->
<link href="/p2p_project/backStyle/css/style.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>

<!---//webfonts--->
<!-- Bootstrap Core JavaScript -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="top1 navbar navbar-default navbar-static-top"
			role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/p2p_project/backJsp/indexback.jsp">YJ
				Finance</a>
		</div>
		<!-- /.navbar-header -->
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" aria-expanded="false"><i
					class="fa fa-comments-o"></i><span class="badge">4</span></a>
				<ul class="dropdown-menu">
					<li class="dropdown-menu-header"><strong>Messages</strong>
						<div class="progress thin">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/1.png" alt="" />
							<div>New message</div> <small>1 minute ago</small> <span
							class="label label-info">NEW</span>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/2.png" alt="" />
							<div>New message</div> <small>1 minute ago</small> <span
							class="label label-info">NEW</span>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/3.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/4.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/5.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="avatar"><a href="#"> <img
							src="/p2p_project/backStyle/images/pic1.png" alt="" />
							<div>New message</div> <small>1 minute ago</small>
					</a></li>
					<li class="dropdown-menu-footer text-center"><a href="#">View
							all messages</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle avatar"
				data-toggle="dropdown"><img
					src="/p2p_project/backStyle/images/1.png" alt="" /><span
					class="badge">9</span></a>
				<ul class="dropdown-menu">
					<li class="dropdown-menu-header text-center"><strong>Account</strong>
					</li>
					<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i>
							Updates <span class="label label-info">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i>
							Messages <span class="label label-success">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-tasks"></i>
							Tasks <span class="label label-danger">42</span></a></li>
					<li><a href="#"><i class="fa fa-comments"></i> Comments <span
							class="label label-warning">42</span></a></li>
					<li class="dropdown-menu-header text-center"><strong>Settings</strong>
					</li>
					<li class="m_2"><a href="#"><i class="fa fa-user"></i>
							Profile</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-wrench"></i>
							Settings</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-usd"></i>
							Payments <span class="label label-default">42</span></a></li>
					<li class="m_2"><a href="#"><i class="fa fa-file"></i>
							Projects <span class="label label-primary">42</span></a></li>
					<li class="divider"></li>
					<li class="m_2"><a href="#"><i class="fa fa-shield"></i>
							Lock Profile</a></li>
					<li class="m_2"><a href="#"><i class="fa fa-lock"></i>
							Logout</a></li>
				</ul></li>
		</ul>

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href=""><i class="fa fa-dashboard fa-fw nav_icon"></i>回到首页</a>
					</li>
					<li><a href="#"><i class="fa fa-laptop nav_icon"></i>理财产品<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">固收类</a></li>
						</ul>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">私募/股权类</a></li>
						</ul>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/grids.jsp">海外配置</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-indent nav_icon"></i>钱包管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/graphs.jsp">钱包缴费记录</a></li>
							<li><a href="/p2p_project/backJsp/typography.jsp">Typography</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-envelope nav_icon"></i>学院管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/inbox.jsp">资讯分类</a></li>
							<li><a href="/p2p_project/backJsp/compose.jsp">资讯管理</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="/p2p_project/backJsp/widgets.jsp"><i
							class="fa fa-flask nav_icon"></i>Widgets</a></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-check-square-o nav_icon"></i>会员管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/member/listMember">账号管理</a></li>
							<li><a
								href="/p2p_project/member_bankcards/listMember_Bankcards">绑卡管理</a>
							</li>
							<li><a href="/p2p_project/subject/listSubject">付息计划</a></li>
							<li><a
								href="/p2p_project/member_deposit_record/listMember_deposit_record">充值管理</a>
							</li>
							<li><a
								href="/p2p_project/member_withdraw_record/listMember_withdraw_record">提现管理</a>
							</li>
							<li><a href="/p2p_project/award_records/listAward_records">邀请奖励</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-table nav_icon"></i>盈加统计<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/basic_tables.jsp">财务统计</a>
							</li>
							<li><a href="/p2p_project/backJsp/basic_tables.jsp">用户综合统计</a>
							</li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-flask nav_icon"></i>盈加设置<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/media.jsp">公告管理</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">意见反馈</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- ----------------------------------------------------- -->
					<li><a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>系统设置<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/p2p_project/backJsp/usersetting.jsp">账户设置</a>
							</li>
							<li><a href="/p2p_project/backJsp/login.jsp">角色设置</a></li>
							<li><a href="/p2p_project/backJsp/login.jsp">密码设置</a></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<script type="text/javascript">
		  $(function(){
			  $("#btn1").click(function(){  //添加
				  $("#form1").attr("aciton","/p2p_project/backJsp/addProduct");
			  	  $("#form1").submit();
			  });
			  
		 	 $("#btn1").click(function(){  //模糊查询
			   $("#form1").attr("aciton","/p2p_project/product/showProduct");
		  	   $("#form1").submit();
		     });
		 	 
		 	 $("#btn3").click(function(){
		 		 $("#qname").val("");
		 		 $("#s1").val("-1");
		 		$("#s2").val("-1");
		 	 });
		 
		});
		  
		</script>
		<div id="page-wrapper">
			<div class="graphs">
				<div class="widget_head">
					<div class="box-right-main">
						<h2>
							<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>固收类
						</h2>
					</div>
				</div>


				<div class="tablelist">
					<form name="form1" id="form1" method="post">
						<table class="table">
							<tr>
								<td style="width: 150px; padding-left: 30px;">
									<button type="button" id="btn1" name="btn1"
										class="btn btn-primary btn-sm">新增</button>
								</td>
								<td style="width: 150px; padding-left: 30px;"><h4>名称：</h4></td>
								<td style="width: 300px"><input type="text" id="qname" name="qname"
									class="form-control" placeholder="名称" value="${qname}"></td>
								<td style="width: 150px; padding-left: 30px;"><h4>状态：</h4></td>
								<td style="width: 170px">
								<select class="form-control" id="s1" name="s1" >
										<option value="-1"/>请选择
										<option value="0"  ${s1==0?"selected":""}/>未发布
										<option value="1"  ${s1==1?"selected":""}/>募集中
										<option value="2"  ${s1==2?"selected":""}/>回款中
										<option value="3"  ${s1==3?"selected":""}/>还款完成
								</select></td>
								<td style="width: 150px; padding-left: 30px;"><h4>类型：</h4></td>
								<td style="width: 170px">
								<select class="form-control" id="s2" name="s2">
										<option value="-1" />请选择
										<option value="0" ${s2==0?"selected":""}/>固收类
										<option value="1" ${s2==1?"selected":""}/>P2P车贷
										<option value="2" ${s2==2?"selected":""}/>P2P房贷
								</select></td>
								<td>
									<button type="submit" id="btn2" name="btn2"
										class="btn btn-primary btn-sm">查询</button>
								</td>
								<td>
									<button type="button" id="btn3" class="btn btn-primary btn-sm">重置</button>
								</td>
							</tr>
						</table>
						<table border="1" class="table table-bordered tablebox">
							<tr class="text-center" bgcolor="#f7f7f7">
								<td>序 号</td>
								<td>ID</td>
								<td>合同编号</td>
								<td>类型</td>
								<td>名称</td>
								<td>标的总金额</td>
								<td>已投总金额</td>
								<td>投资期限</td>
								<td>起投金额</td>
								<td>年化收益</td>
								<td>状态</td>
								<td>可使用体验金</td>
								<td>添加时间</td>
								<td>操 作</td>
							</tr>
							<c:forEach items="${list}" var="p" varStatus="stat">
								<tr class="text-center" bgcolor="#f7f7f7">
									<td>${stat.index+1 }</td>
									<td>${p.id }</td>
									<td>${p.serial_no }</td>
									<td><c:if test="${p.type==0}">固收类</c:if> <c:if
											test="${p.type==1}">P2P车贷</c:if></td>
									<td>${p.name}</td>
									<td></td>
									<td></td>
									<td></td>
									<td>${p.floor_amount}</td>
									<td>${p.year_rate}%</td>
									<td><c:if test="${p.status==0}">未募集</c:if> <c:if
											test="${p.status==1}">募集中</c:if> <c:if test="${p.status==2}">已结束</c:if>
									</td>
									<td><c:if test="${p.exper_status==0}">否</c:if> <c:if
											test="${p.exper_status==1}">是</c:if></td>
									<td>${p.create_date }</td>
									<td>修改</td>
								</tr>
							</c:forEach>
						</table>
					</form>
				</div>
			</div>
		</div>


		<!-- Nav CSS -->
		<link href="/p2p_project/backStyle/css/custom.css" rel="stylesheet">
		<!-- Metis Menu Plugin JavaScript -->
		<script src="/p2p_project/backStyle/js/metisMenu.min.js"></script>
		<script src="/p2p_project/backStyle/js/custom.js"></script>
</body>
</html>