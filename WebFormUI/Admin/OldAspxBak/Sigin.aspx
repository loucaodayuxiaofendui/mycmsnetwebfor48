<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sigin.aspx.cs" Inherits="Admin_Sigin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <title>『Wandefour's』后台管理</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../Styles/Images/favicon.ico" media="screen" />
    <link href="css/admin_login.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
</head>
<body>
<div class="admin_login_wrap">
    <h1>『Wandefour's』后台管理</h1>
    <div class="adming_login_border">
        <div class="admin_input">
           
                <ul class="admin_items">
                    <li>
                        <label for="user">用户名：</label>
                        <input type="text" name="uname" value="" id="uname" size="40" class="admin_input_style" />
                    </li>
                    <li>
                        <label for="pwd">密码：</label>
                        <input type="password" name="pwd" value="" id="pwd" size="40" class="admin_input_style"  />
                    </li>
                    <li>
                        <label for="pwd">验证码：</label>                       
                        <input type="text" name="code"  id="codetext" size="40" class="code_input_style" />
                        <img src="/Ashx/GetVolidata.ashx" id="volidata" onclick="change()" alt="点击刷新验证码" title="点击刷新验证码" />
                    </li>
                    <li>
                        <input type="checkbox" id="cbremenber" tabindex="3" value="" style=" float:left;"/><label id="lblremenber">记住密码</label> 
                        <a id="losecredentials">忘记密码?</a>                      
                    </li>
                    <li>
                        <input type="button" id="btnLogin" tabindex="3" value="登录" class="btn btn-primary"  />                        
                    </li>
                </ul>
           
        </div>
    </div>
    <p class="admin_copyright"><a tabindex="5" href="/Admin/Sigin.aspx">返回首页</a> &copy; 2015 Powered by <a href="javascript:void" target="_blank">Wandefour's</a></p>
</div>
</body>
 <script src="js/GetVolidata.js" type="text/javascript"></script>
 <script src="js/Sigin.js" type="text/javascript"></script>
</html>


