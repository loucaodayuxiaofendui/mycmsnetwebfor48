<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS-首页</title>
    <link rel="shortcut icon" type="image/x-icon" href="../Styles/Images/favicon.ico" media="screen" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Styles/Css/style.css" rel="stylesheet" type="text/css" />
    <script src="../Styles/Js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="../Styles/Js/jquery.SuperSlide.js" type="text/javascript"></script>
</head>
<body class="body_background">
<input type="hidden"id="txtHtml"/>
<div class="head">
	<div class="login_01">
    	<a href="/Admin/Sigin.aspx" title="" class="login_wt">登录</a><a href="" title="">返回首页</a>|<a href="" title="">联系我们</a>
    </div>
    <img src="../Styles/Images/bananer.jpg" alt="" width="1000" height="244">
    <div class="nav">
    	<a href="home.html">首页</a><a href="Organization.html">组织机构</a><a href="leaders.html">领导讲话</a><a href="yndt.html">工作动态</a><a href="hydt.html">行业动态</a><a href="Project.html">项目进程</a><a class="a6" onClick="aa('aa')">团队家园</a><a href="xxzs.html">形象展示</a><a href="zlxz.html">资料下载</a>
    </div>
</div>

<div class="conter">
	<div class="conter_div">
    	<div class="conter_div_01">
        	<div class="notice">
            	<div class="notice_top">
                	通知公告
                </div>
                <a href="" title="">关于督促企业做好2013年重点用能...</a><a href="" title="">关于督促企业做好2013年重点用能...</a><a href="" title="">关于督促企业做好2013年重点用能...</a><a href="" title="">关于督促企业做好2013年重点用能...</a><a href="" title="">关于督促企业做好2013年重点用能...</a><a href="" title="">关于督促企业做好2013年重点用能...</a>
            </div>
            <div class="email a6" onClick="aa('mail.html')">
            	院长信箱
            </div>
        </div>
    
    	<div class="news">
        	<img src="images/news.jpg" alt="" >
            <div class="news_title">
            	新闻标题
            </div>
        </div>
    
    	<div class="notice w409">
        	<div class="notice_top margin0">
                	<dl class="dl">
                    	<dt>工作动态</dt>
                        <dd><img src="images/home_01.jpg" width="4" height="30"></dd>
                    </dl>
            </div>
            <dl class="dl2">
            	<dt>院内动态标题</dt>
                <dd>2013-10-15</dd>
            </dl>
            <p class="p">院内动态内容院内动态内容院内动态内容院内动态内容院内动态内容院内动态内容...</p>
            <ul class="ul">
            	<li><a href="" title="">院内动态内容院内动态内容院内动态内容</a></li>
                <li><a href="" title="">院内动态内容院内动态内容院内动态内容</a></li>
                <li><a href="" title="">院内动态内容院内动态内容院内动态内容</a></li>
                <li><a href="" title="">院内动态内容院内动态内容院内动态内容</a></li>
            </ul>
                
        </div>
    </div>
    
    <div class="conter_div margin14">
    	<div class="notice w2471">
            <div class="notice_top margin11">
                业务交流
            </div>
            <img src="images/home_02.jpg" alt="" class="img">
            <p class="p2">院内动态内容院内动态内容院院内动态内容院内动态内容院内动态内...</p>
            <ul class="ul3">
            	<li><a href="" title="">院内动态内容院内动fefe态内容</a></li>
                <li><a href="" title="">院内动态内容院gef内动态内容</a></li>
                <li><a href="" title="">院内动态内容院内动态内容</a></li>
                <li><a href="" title="">院内动态内容院内fefe动态内容</a></li>
                <li><a href="" title="">院内动态内容院内fefe动态内容</a></li>
            </ul>
        </div>
        
        <div class="Query">
        	<div class="Search a6">
            	<img src="images/home_04.png" alt="" class="img2">
            	<b>快速查询</b>
                <div class="Search_right">
                	<div class="Search_div">
                    	<input type="text" class="Search_input">
                        <input type="image" src="images/home_06.png" value="" class="Search_input2">
                    </div>
                    <input type="submit" value="搜 索" class="Search_input3">
                </div>
            </div>
            
            <div class="notice w739">
        		<div class="notice_top margin0">
                	<dl class="dl">
                    	<dt>项目进程</dt>
                        <dd><img src="images/home_01.jpg"  width="4" height="30"></dd>
                    </dl>
            	</div>
                <ul class="ul4">
                	<li><a href="project_xqy.html" title="" class="a4"><img src="images/0001.jpg" alt=""><b>杨汛大桥公路桥</b></a></li>
                    <li><a href="project_xqy.html" title="" class="a4"><img src="images/0002.jpg" alt=""><b>03省道萧山东复线工程</b></a></li>
                    <li><a href="project_xqy.html" title="" class="a4"><img src="images/0003.jpg" alt=""><b>杭徽高速留下段工程</b></a></li>
                    <li><a href="project_xqy.html" title="" class="a4"><img src="images/home_08.jpg" alt=""><b>临余公路改建工程</b></a></li>
                </ul>
            </div>
        </div>
    </div>
    
   <%-- <div class="conter_div_02">
    	<div class="notice w363">
        		<div class="notice_top margin0">
                	<dl class="dl">
                    	<dt>行业动态</dt>
                        <dd><img src="images/home_01.jpg" width="4" height="30" ></dd>
                    </dl>
            	</div>
                <ul class="ul5">
                	<li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                </ul>
         </div>
         
         <div class="notice w363 margin_le_ri">
        		<div class="notice_top margin0">
                	<dl class="dl">
                    	<dt>领导讲话</dt>
                        <dd><img src="images/home_01.jpg" width="4" height="30"></dd>
                    </dl>
            	</div>
                <ul class="ul5">
                	<li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                    <li><a href="" title="">院内动态内容院内动态内容院内动态内容院内</a></li>
                </ul>
         </div>
         
         <div class="notice h208">
            <div class="notice_top margin7">
                友情链接
            </div>
            <a href="" title="" class="a2"><img src="images/home_09.jpg" alt="" width="239" height="52"></a>
            <a href="" title="" class="a2"><img src="images/home_10.jpg" alt="" width="239" height="52"></a>
            <a href="" title="" class="a2"><img src="images/home_11.jpg" alt="" width="239" height="52"></a>
        </div>
    </div>
       
    <div class="conter_div_02">
    	<div class="notice w998">
        		<div class="notice_top margin0">
                	<dl class="dl">
                    	<dt>形象展示</dt>
                        <dd><img src="images/home_01.jpg" width="4" height="30"></dd>
                    </dl>
            	</div>
                <div class="more">
					<ul>
   	  					<li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
                        <li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
                        <li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
                        <li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
                        <li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
                        <li><a href="" title=""><img src="images/home_012.jpg" alt="" width="176" height="108">证书名称</a></li>
    				</ul>
				</div>
<script type="text/javascript">
    jQuery(".more").slide({ mainCell: "ul", effect: "leftMarquee", interTime: 9, vis: 5, scroll: 2, autoPlay: true });
</script>
         </div>
    </div>--%>
</div>


<div class="foot">
	<span>版权所有：FYJT_WandeFour</span><span>地址：浙江省杭州市迦黎敦大学001号</span><span>邮编：1314520</span><br/>
    <span>电话：0571-1314520 0254131</span><span>传真：0571-1314520</span><span>Email：fangyong809178958@163.com</span><br/>
    <span>技术支持：<a href="" title="">FYJT_WandeFour</a></span><span>备案号：浙迦黎敦备 1314520</span>
</div>

<!---------------------------登录框----------------------------------------->	
<div id="d1" class="winpop login" style="display:none;position: fixed;top: 40px;left: 541.5px;z-index: 500;">
    	<div class="hd">
    	    <h3>登录</h3><a href="javascript:void(0)" class="close"></a>
    	</div>
    	<div class="bd">
    	    <ul class="clearfix">
    	        <li style="" class="leho-app-login">请使用帐号登录</li>
		<li class="error-msg" style="display:none">密码不正确 <a href="">找回密码</a></li>
    	        <li><input class="ipt-txt vemail input-mail" id="email" type="text" name="email" tip="邮箱不能为空" placeholder="请输入邮箱" /></li>
    	        <li><input class="ipt-txt password" name="password" type="password"  placeholder="请输入密码" tip="密码不能为空" /></li>
    	    </ul>
    	    <div class="login-btn-box clearfix">
    	        <a class="a5" href="javascript:void(0)" action-type="ajaxBox" >还未注册?</a>
    	        <a class="button orange" href="javascript:void(0)" onClick="LoginS()">登录</a>
    	    </div>
    	</div>
    <div style="display:none">
    		   <input type="hidden" name="backUrl" id="backUrl" />
    </div>
</div>
<div id="d2" class="js-mask" style=" display:none;width: 1423px; height: 1400px; position: absolute; opacity: 0.5; z-index: 250;filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#7F000000', endColorstr='#7F000000');background:rgba(0,0,0,0.5);top: 0px; left: 0px; background-position: initial initial; background-repeat: initial initial;"></div>
</body>
<script type="text/javascript">
    function aa(vals) {
        $("#d1,#d2").css("display", "block");
        $('#txtHtml').val(vals);
    }
    function LoginS() {
        window.location.href = $('#txtHtml').val();
    }
</script>
</html>
