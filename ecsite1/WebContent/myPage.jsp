<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>BuyItemConfirm画面</title>
<style type="text/css">



body{

margin:0;
padding:0;
line-height:1.6;
letter-spacing:1px;
font-family:Verdana,Helvetica.sans-serif;
font-size:12px;
color:#333;
background-color: #f7f7f7;

}

table{
text-align:center;
margin:0 auto;

}
#top{

width:75%;
 margin:30px auto;
 border:1px solid #333;
}


#header{
width:100%;
height:60px;
background-color:black;
}

#pr{padding-top:20px;
padding-left:20px;
color:white;
}
#pr2{padding-top:20px;
padding-left:20px;
color:white;
text-align:center;
}

#main{
margin-top:50px;
width:100%;
height:400px;
text-align:center;
}

#footer{

width:100%;
height:60px;
background-color:black;
clear:both;
}
</style>
</head>
<body>
<div id="header">
	<div id="pr">
	ECサイト演習<i class="fa fa-pencil-square-o"></i>
	</div>
</div>
<i class="fa fa-clock-o"></i><span id="view_clock"></span>

<script type="text/javascript">
timerID = setInterval('clock()',500);

function clock() {
	document.getElementById("view_clock").innerHTML = getNow();
}

function getNow() {
	var now = new Date();
	var year = now.getFullYear();
	var mon = now.getMonth()+1;
	var day = now.getDate();
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();


	var s = year + "年" + mon + "月" + day + "日" + hour + "時" + min + "分" + sec + "秒";
	return s;
}
</script>

<div id="main">
	<div id="top">
		<p>MyPage</p>
	</div>
<div>
	<s:if test="myPageList == null">
		<h3>ご購入情報はありません。</h3>
	</s:if>
	<s:elseif test="message == null">
		<h3>ご購入情報は以下になります。</h3>
<table border="1">
		<tr>
			<th>商品名</th>
			<th>値段</th>
			<th>購入個数</th>
			<th>支払い方法</th>
			<th>購入日</th>
		</tr>

		<s:iterator value="myPageList">
		<tr>
			<td><s:property value="itemName" /></td>
			<td><s:property value="totalPrice" /><span>円</span></td>
			<td><s:property value="totalCount" /><span>個</span></td>
			<td><s:property value="payment" /></td>
			<td><s:property value="insert_date" /></td>
		</tr>
		</s:iterator>
		</table>
		<s:form action="MyPageAction">
		<input type="hidden" name="deleteFlg" value="1">
		<s:submit value="削除" method="delete" />
		</s:form>
</s:elseif>
<s:if test="message != null">
<h3><s:property value="message"/></h3>
</s:if>
<div id="text-right">
	<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
	<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
		</div>
	</div>
</div>
<div id="footer">
	<div id="pr2">
	Copyright&copy;ABC Inc. All Rights Reserved.
	</div>
</div>
</body>
</html>

