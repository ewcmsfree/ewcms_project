<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目信息基本指导 目录 </title>
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
.box td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:14px; padding:10px;}
.box2{ border-left:1px solid #cccccc;border-top:1px solid #cccccc;}
.box2 td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:14px;}
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
                      <td height="34" id="xmxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="projectlist"/>" class="STYLE10">项目信息公开</a></td>
                    </tr>
                  </table></td>
                <td width="120" align="center" valign="bottom"><table width="98" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xyxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="enterpriselist"/>" class="STYLE10">信用信息公开</a></td>
                    </tr>
                  </table></td>
 
		 <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id align="right" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE11"><a href="http://app.jiangxi.gov.cn/was40/outside/shengbao.jsp" class="STYLE11">项目基本信息申请表&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
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
	<form  name="SearchForm" method="post"  accept-charset="utf-8"  action="http://app.jiangxi.gov.cn/was40/search" target="_blank" style="margin:0; padding:0" onsubmit="SearchForm_onsubmit();return false;">
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
          <td width="238"><input type="text" name="keyword" id="keyword" style="width:150px; height:20px" />&nbsp;&nbsp;&nbsp;<input name="submit" type="submit" class="STYLE1" id="submit" value="检索" /></td>
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
   <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" style="border:#CCCCCC 1px solid"><table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="33" align="center" background="<s:url value="/ewcmssource/front/2-main-01.jpg"/>"><span class="STYLE5"><strong>工程建设领域项目信息公开基本指导目录(试行）</strong></span></td>
          </tr>
          <tr>
            <td height="39" valign="bottom"><table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="39" align="center" background="<s:url value="/ewcmssource/front/2-main-02.jpg"/>" class="STYLE1">发布时间：2011-09-29</td>
              </tr>
            </table></td>
          </tr>
          <tr><td width="100%" height="10px"></td></tr>
          <tr>
            <td valign="top" align="center"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr><td align="left" style="font-size:15px;line-height:150%"><p>　　<span><span>（一）</span></span><span>项目审批公开信息</span></p>
<p>　　<span><span>1.<span>　　 </span></span></span><span>项目审批信息</span></p>
<p>　　<span><span>2.<span>　　&nbsp; </span></span></span><span>项目核准信息</span></p>
<p>　　<span><span>（二） </span></span><span>项目建设管理公开信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>项目基本信息</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>招标投标信息</span></p>
<p>　　<span><span>3.<span>　&nbsp; </span></span></span><span>征地拆迁信息</span></p>
<p>　　<span><span>4.<span>　&nbsp; </span></span></span><span>重大设计变更信息</span></p>
<p>　　<span><span>5.<span>　&nbsp; </span></span></span><span>施工管理信息</span></p>
<p>　　<span><span>6.<span>　&nbsp; </span></span></span><span>合同履约信息</span></p>
<p>　　<span><span>7.<span>　&nbsp; </span></span></span><span>质量安全检查信息</span></p>
<p>　　<span><span>8.<span>　&nbsp; </span></span></span><span>资金管理信息</span></p>
<p>　　<span><span>9.<span>　&nbsp; </span></span></span><span>交（竣）工验收信息</span></p>
<p>　　<span><span>（三）<span>　 </span></span></span><span>项目从业单位公开信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>良好行为记录信息</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>不良行为记录信息</span></p>
<p>　　<span><span>（四）<span>　 </span></span></span><span>项目从业人员公开信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>良好行为记录信息</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>不良行为记录信息</span></p>
<p>　　<span><span>（五）<span>　 </span></span></span><span>土地使用权审批和出让信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>土地招标拍卖挂牌出让信息</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>国有土地使用权出让结果信息</span></p>
<p>　　<span><span>3.<span>　&nbsp; </span></span></span><span>建设用地审批信息</span></p>
<p>　　<span><span>（六）<span>　 </span></span></span><span>矿业权审批和出让信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>探矿权审批信息</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>探矿权出让信息</span></p>
<p>　　<span><span>3.<span>　&nbsp; </span></span></span><span>采矿权审批信息</span></p>
<p>　　<span><span>4.<span>　&nbsp; </span></span></span><span>采矿权出让信息</span></p></td></tr></table></td>
          </tr>
          <tr><td></td></tr>
        </table></td>
      </tr>
    </table></td>
  </tr>

    <tr>
	   <td width="100" height="1px" colspan="3" bgcolor="#FFFFFF"></td>
	</tr>
	<tr>
	    <td width="100%"><table width="100%" height="95" border="0" align="center" cellpadding="0" cellspacing="0" background="<s:url value="/ewcmssource/front/main-16.jpg"/>" bgcolor="#FFFFFF">
	      <tr>
	        <td height="20"></td>
	      </tr>
	      <tr>
	        <td align="center" class="STYLE1 STYLE5">主办：九江市监察局 九江市工信委　承办：九江市政府信息办</td>
	      </tr>
	      <tr>
	        <td align="center" class="STYLE6">ICP备案编号：赣ICP备05005076号 E-Mail：webmaster@jiujiang.gov.cn</td>
	      </tr>
	      <tr>
	        <td height="30"></td>
	      </tr>	  
	</table>
</td>
</tr> 
</table>

</body>
</html>