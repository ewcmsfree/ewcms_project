<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目信息基本目录内容说明</title>
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
            <td height="33" align="center" background="<s:url value="/ewcmssource/front/2-main-01.jpg"/>"><span class="STYLE5"><strong>项目信息公开目录说明</strong></span></td>
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
              <tr><td align="left" style="font-size:15px;line-height:150%"><p>　　<span>从业单位是指参与工程建设领域相关业务活动的法人单位，包括建设、勘察、设计、施工、监理、咨询、检测、招标代理、材料及设备供应等单位和机构。</span></p>
<p>　　<span>从业人员是指参与工程建设领域相关业务活动的主要自然人，包括法人代表，项目负责人（项目经理），具有建造师、监理工程师、城市规划师等执业资格的从业人员。</span></p>
<p>　　<span>不良行为记录信息限定在工程建设相关的信息范畴内。</span></p>
<p>　　<span><span>（一）<span> </span></span></span><span>从业单位信用信息</span></p>
<p>　　<span><span>1.<span>　&nbsp; </span></span></span><span>企业基本信息：企（事）业单位名称、营业执照注册号、营业执照登记机关、企业类型（事业性质）、经营范围、注册资本、实缴注册资本、成立日期、住所、经营期限、法定代表人信息、工商年检结果等内容。</span></p>
<p>　　<span><span>2.<span>　&nbsp; </span></span></span><span>资质信息：包括资质等级名称、资质证书号、有效起始日期、有效到期日期、资质证书核发日期、资质证书核发机关、资质证书状态等内容。</span></p>
<p>　　<span><span>3.<span>　&nbsp; </span></span></span><span>项目业绩信息：包括项目名称、起止日期、项目规模、项目负责人、项目获奖情况等内容。</span></p>
<p>　　<span><span>4.<span>　&nbsp; </span></span></span><span>信用评价信息：包括信用评价结果、评价日期、评价机构等信息及重合同守信用情况等内容。</span></p>
<p>　　<span><span>5.<span>　&nbsp; </span></span></span><span>良好行为记录信息：包括地市级及以上的荣誉文书编号、荣誉内容、荣誉认定日期、颁发机构等奖励信息内容。</span></p>
<p>　　<span><span>6.<span>　&nbsp; </span></span></span><span>不良行为记录信息</span></p>
<p>　　<span><span>（1）<span>&nbsp; </span></span></span><span>违法信息：包括法院判决结果、处罚对象、执行期限、判决机关和检察院行贿受贿犯罪档案查询结果等内容。</span></p>
<p>　　<span><span>（2）<span>　</span></span></span><span>行政处罚信息：包括处罚种类、处罚对象、处罚事由、处罚依据、处罚内容、处罚日期、处罚执行情况、处罚机关等内容。</span></p>
<p>　　<span><span>（3）<span>　&nbsp;</span></span></span><span>行政强制信息：包括行政强制机关、行政强制决定文书编号、行政强制事项名称、行政强制依据、行政强制日期、行政强制执行情况等内容。</span></p>
<p>　　<span><span>（4）<span>　&nbsp;</span></span></span><span>行政裁决（定）信息：包括行政裁决机关、行政裁决（定）书编号、行政裁决（定）地位、行政裁决（定）事由、行政裁决（定）结果、行政裁决（定）日期等内容。</span></p>
<p>　　<span><span>（5）<span>　&nbsp;</span></span></span><span>欠薪及欠缴社保金信息：包括欠薪时段、欠薪总额、欠薪记录机关、欠薪社会保险种类及金额等内容。</span></p>
<p>　　<span><span>（6）<span>　&nbsp;</span></span></span><span>质量安全信息：质量安全事故责任认定信息和通报批评信息等内容。</span></p>
<p>　　<span><span>（二）</span></span><span>从业人员信用信息</span></p>
<p>　　<span><span>1.<span>　　&nbsp; </span></span></span><span>人员基本信息：包括姓名、性别、证件类型、证件号码等内容。</span></p>
<p>　　<span><span>2.<span>　　&nbsp; </span></span></span><span>执业资格信息：包括证书名称、编号、有效起始日期、有效到期日期、核发日期、核发机关、证书状态等内容。</span></p>
<p>　　<span><span>3.<span>　　&nbsp; </span></span></span><span>良好行为记录信息：包括市地级及以上的荣誉文书编号、荣誉内容、荣誉认定日期、颁发机构等内容。</span></p>
<p>　　<span><span>4.<span>　　&nbsp; </span></span></span><span>不良行为记录信息：</span></p>
<p>　　<span><span>（1）<span>　　</span></span></span><span>违法信息：包括法院判决结果、处罚对象、执行期限、判决机关和检察院行贿受贿犯罪档案查询结果等内容。</span></p>
<p>　　<span><span>（2）<span>　　</span></span></span><span>行政处罚信息：包括处罚种类、处罚对象、处罚事由、处罚依据、处罚内容、处罚日期、处罚执行情况、处罚机关等内容。</span></p>
<span><br clear="all" />
</span></td></tr></table></td>
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