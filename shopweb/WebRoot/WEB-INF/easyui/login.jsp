<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
  	<%@include file="/common/head.jspf" %>
   <link href="${basePath }/resources/css/admin_login.css" rel="stylesheet" type="text/css" />
  	<title>『网上商城』后台管理</title>
  	<style type="text/css">
  		.admin_login_logo img{width: 100%;height: 100%;}
  	</style>
  	<script type="text/javascript">
	  function login(){
	  	var url = "home.action";
	 	$("#loginForm").attr("action",url);
	  	$("#loginForm").submit();
	  }
  	</script>
  </head>
<body>
<div class="admin_login_logo"><img src="${basePath }/resources/images/login/login.jpg"/></div>
<div class="admin_login_wrap">
    <h1><br><strong></strong></h1><h1><strong>网上商城后台登陆</strong></h1>
    <div class="adming_login_border">
        <div class="admin_input">
      		<font color="red"><s:actionerror/></font>
            <form id="loginForm" action="" method="post">
                <ul class="admin_items">
                    <li>
                    	<label for="user">用户名：</label>
                        <input type="text" name="userName"  id="userNames" size="40" placeholder="请输入用户名" class="admin_input_style" />
                        <font color="red"><s:fielderror fieldName="userName"/></font>
                    </li>
                    <li>
                        <label for="pwd">密码：</label>
                        <input type="password" name="passWord"  id="passWords" size="40" placeholder="请输入密码" class="admin_input_style" />
                        <font color="red"><s:fielderror fieldName="passWord"/></font>
                    </li>
                    <li>
                        <input onclick="login()" type="submit" tabindex="3" value="提交" class="btn btn-primary" />
                    </li>
                </ul>
            </form>
        </div>
    </div>
    <p class="admin_copyright"><a tabindex="5" href="#">返回首页</a> &copy; 2015 Powered by <a href="#" target="_blank">豪情</a></p>
</div>
</body>
</html>