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
<title>SelectBuyItemConfirm画面</title>
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
<script type="text/javascript">
function submitAction(url){
	$('form').attr('action', url);
	$('form').submit();

}
</script>

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
			<p>SelectBuyItemconfirm</p>
		</div>
        <div>
   <table>
   <tr>
       <td>商品名:</td>

<td>
	<s:if test='item_name=="orange"'>
			みかん
	</s:if>

	<s:if test='item_name=="apple"'>
			りんご

	</s:if>
	<s:if test='item_name=="grape"'>
	 		ぶどう
	</s:if>

	<s:if test='item_name=="strawberry"'>
			いちご
	</s:if>
	<s:if test='item_name=="pear"'>
			梨
	</s:if>
</td>
</tr>

<tr>
 	<td>値段:</td>
 	<td>
 	<s:property value="item_price"/>円
 	</td>
</tr>

<tr>
	<td>個数:</td>
	<td>
	<s:if test='stock=="1"'>1
	</s:if>
    <s:if test='stock=="2"'>2
	</s:if>
	<s:if test='stock=="3"'>3
	</s:if>
	<s:if test='stock=="4"'>4
	</s:if>
	<s:if test='stock=="5"'>5
	</s:if>



</td>

	<td>個</td>
</tr>




</table>

<s:form>
        	<tr>
        		<td><br></td>
        	</tr>
        	<tr>
        		<td><input type="button" value="戻る"
        		onclick="submitAction('SelectAction')" /></td>
             <td><input type="button" value="完了"
               onclick="submitAction('SelectBuyItemConfirmAction')" /></td>
              </tr>

              </s:form>
        </div>
		</div>

		<div id="footer">
              <div id="pr2">
              Copyright&copy;ABC Inc. All Rights Reserved.
              </div>
              </div>

</body>
</html>