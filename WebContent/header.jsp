<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<style type="text/css"> 
<!--
body {
	margin-top: 0px;
	margin-bottom: 0px;
	background-color:#B6D9FF;
	margin-left: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FFFFFF; }
.STYLE7 {font-size: 13px}
a{ color: #000000;text-decoration:none;}
a:hover{ color: #FF0000;}
.box{ border-left:1px solid #cccccc;border-top:1px solid #cccccc;}
.box td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:12px; padding:1px;}
.box2{ border-left:1px solid #cccccc;border-top:1px solid #cccccc;}
.box2 td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:12px; padding:1px;}
.fenlei{ font-size:14px; font-weight:900; color:#000000}
-->
</style>
<script language="javascript"> 
 document.domain="jiangxi.gov.cn";
</script>
</head>
<body>
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="100%" valign="top"><style type="text/css"> 
td{font-size:12px;}
.STYLE9 a{
	font-size: 15px; 
	font-weight: bold;
	color: #0066FF;
	text-decoration:none;
}
.STYLE10 a{
	font-size: 15px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration:none;
}
.STYLE11 {
	font-size: 18px;
	font-weight: bold;
	color: #F1F903;
	text-decoration:none;
}
.STYLE11 a{
	font-size: 18px;
	font-weight: bold;
	color: #F1F903;
	text-decoration:none;
}
 
</style>
<script type="text/javascript"> 
function SearchForm_onsubmit() {
 var tempkeyword=document.SearchForm.keyword.value;
 var tempchannelid=document.SearchForm.keyword.value;
 if(!tempkeyword){
 	alert("请输入关键字");
	return false; 
 } 
 document.SearchForm.searchword.value="DOCTITLE='%"+tempkeyword+"%' OR DOCCONTENT='"+tempkeyword+"'";
 if(!window.ActiveXObject){document.charset='utf-8';}
 document.SearchForm.submit();
}
</script>
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1003" height="194" valign="top" background="<s:url value="/ewcmssource/front/TOP.jpg"/>" bgcolor="#B6D9FF"><table width="1003" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="968" height="30" align="right" class="STYLE6"><script language="javascript" src="<s:url value="/ewcmssource/front/language.js"/>"></script>|  www.jiangxi.gov.cn </td>
          <td width="35" align="right" class="STYLE6">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="34"><table width="1003" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="34" valign="bottom" background="<s:url value="/ewcmssource/front/banner-0.jpg"/>"><table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" id="top">
              <tr>
                <td width="120" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" align="center" id="sy" background="<s:url value="/ewcmssource/front/banner-01.jpg"/>" class="STYLE9" onmousemove="topchange(this)"><a href="<s:url action="index"/>" >首页</a></td>
                    </tr>
                  </table></td>
		<td width="130" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xmxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="projectbasiclist"/>" class="STYLE10">项目信息公开</a></td>
                    </tr>
                  </table></td>
                <td width="120" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xyxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="enterprisebasiclist"/>" class="STYLE10">信用信息公开</a></td>
                    </tr>
                  </table></td>
                <td width="120" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xyxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="workdynamic"/>" class="STYLE10">工作动态</a></td>
                    </tr>
                  </table></td>
                 <td width="120" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xyxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="policy"/>" class="STYLE10">政策法规</a></td>
                    </tr>
                  </table></td>  
		 <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id align="right" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE11"><a href="http://218.65.3.188:8082/was40/outside/shengbao.jsp" class="STYLE11">项目基本信息申请表&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                    </tr>
                  </table></td>
                  
              </tr>
            </table>
		  </td>
        </tr>
      </table></td>
  </tr>
   <tr>
    <td height="33" background="<s:url value="/ewcmssource/front/banner-2.jpg"/>">
	<form  name="SearchForm" method="get"  action="http://www.xunyang.gov.cn/search" target="_blank" style="margin:0; padding:0" onsubmit="SearchForm_onsubmit();return false;">
	<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="165" align="right"><span class="STYLE1"><SCRIPT> 
 <!---                            
 today=new Date();               
 var hours = today.getHours();       
 var minutes = today.getMinutes();       
 var seconds = today.getSeconds();        
 function initArray(){           
 this.length=initArray.arguments.length       
 for(var i=0;i<this.length;i++)       
 this[i+1]=initArray.arguments[i] }       
 var d=new initArray("<font class=bt1>星期日","<font class=bt1>星期一","<font class=bt1>星期二","<font class=bt1>星期三","<font class=bt1>星期四","<font class=bt1>星期五","<font class=bt1>星期六"); 
 document.write("<font class=bt1>",today.getFullYear(),"<font class=bt1>年","<font class=bt1>",today.getMonth()+1,"<font class=bt1>月","<font class=bt1>",today.getDate(),"<font class=bt1>日 </FONT>",d[today.getDay()+1]," ");        
//-->                            
</SCRIPT></span></td>
          <td width="67" height="33">&nbsp;</td>
          <td width="364" class="STYLE1" valign="middle"><iframe frameborder=0 width=360px height=14px marginheight=0 marginwidth=0 scrolling=no src="http://www.weather.cn/tianqi.asp"></iframe></td>
          <td width="169" align="right" class="STYLE1"><input type="hidden" name="searchword" /><input type="hidden" name="channelid" value="30933" />站内搜索：</td>
          <td width="238"><input type="text" name="query" id="keyword" style="width:150px; height:20px" />&nbsp;&nbsp;&nbsp;<input name="submit" type="submit" class="STYLE1" id="submit" value="检索" /></td>
        </tr>
      </table>
	  </form>
	  </td>
  </tr>
</table>
<script language="javascript"> 
  function $(id){
     return document.getElementById(id);
  }
  function topchange(obj){
     var top=$('top').childNodes[0].childNodes[0].childNodes;
         for(var i=0;i<top.length;i++){
	   var td=top[i].childNodes[0].childNodes[0].childNodes[0].childNodes[0];
	   td.background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>";
	   td.className="STYLE10";
	   if(obj.id==td.id){
	     if($("chnlcon"+i)){
		    $("chnlcon"+i).style.display="block";
		 }
	   }else{
	     if($("chnlcon"+i)){
		    $("chnlcon"+i).style.display="none";
		 }
	   }
	 }
	 obj.background="<s:url value="/ewcmssource/front/banner-01.jpg"/>";
	 obj.className="STYLE9";
  } 
</script></td>
  </tr>