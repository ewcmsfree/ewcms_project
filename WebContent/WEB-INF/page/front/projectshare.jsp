<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信用信息基本指导 目录 </title>
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
              <tr><td align="left" style="font-size:15px;line-height:150%"><div class="Custom_UnionStyle">
<p>　　<span>为规范项目信息和信用信息公开共享，推进工程建设领域项目信息公开和诚信体系建设，制定《工程建设领域项目信息和信用信息公开共享规范（试行）》，供各地各部门开展项目信息和信用信息公开共享工作时使用。</span></p>
<p>　　<strong><span><span>一、</span></span><span>项目信息公开专栏</span></strong></p>
<p>　　<span><span>(一) </span></span><span>在政府网站首页设置项目信息公开专栏，名称为“工程建设领域项目信息和信用信息公开共享专栏”（以下简称“专栏”）。</span></p>
<p>　　<span><span>(二)</span></span><span>“专栏”首页顶部为标题区，标题内容包括专栏名称和专栏建设单位。“专栏建设单位”用“行政区域名称<span>+</span>建设单位名称”表示。</span></p>
<p>　　<span><span>(三)</span></span><span>“专栏”设置项目信息公开区和信用信息共享区。</span></p>
<p>　　<span><span>(四)</span></span><span>“项目信息公开区”应设立项目审批信息、项目建设管理信息、从业单位和主要从业人员信用信息、土地使用权、矿业权审批和出让信息等内容。</span></p>
<p>　　<span><span>(五)</span></span><span>“信用信息公开区”须设立 “信用信息共享目录”，提供信用信息共享的获取功能。</span></p>
<p>　　<span><span>(六)</span></span><span>“专栏”内设置项目信息搜索栏。在搜索栏输入关键字，可对专栏内公开的项目信息进行检索。</span></p>
<p>　　<strong><span><span>二、</span></span><span>项目信息公开</span></strong></p>
<p>　　<span><span>(一)</span></span><span>项目信息公开的基本内容，应包括：项目审批信息、项目建设管理信息、项目从业单位和主要从业人员信用信息、土地使用权、矿业权审批和出让信息等。</span></p>
<p>　　<span><span>(二)</span></span><span>项目信息公开内容列表页须采用分页浏览方式。列表条目内容应以“序号”、“项目编码”、“项目名称”、“发布日期”等标识。点击条目进入该条目项下的详细信息。</span></p>
<p>　　<span><span>(三)</span></span><span>详细信息页面上方应显示项目信息标题，注明信息发布部门和日期。</span></p>
<p>　　<span><span>(四)<span> </span></span></span><span>项目审批、核准信息由项目审批部门收集、审核和发布。项目招标投标信息由相应部门发布。项目建设管理信息由项目建设单位（项目法人）提供，项目主管部门审核、发布。从业单位、主要从业人员行为信息由项目建设单位（项目法人）提供，项目主管部门审核、发布。土地使用权、矿业权审批和出让信息由国土部门收集、审核和发布。</span></p>
<p>　　<span><span>(五)</span></span><span>项目信息和信用信息公开由部门依据职能负责信息更新、维护和服务。</span></p>
<p>　　<span><span>(六)</span></span><span>收集和发布的信息须及时、准确和完整。</span></p>
<p>　　<strong><span><span>三、</span></span><span>信用信息共享</span></strong></p>
<p>　　<span><span>(一)</span></span><span>信用信息共享的基本内容，应包括：从业单位基本信息、资质信息、项目业绩信息、信用评价信息、良好行为记录信息和不良行为记录信息等；从业人员基本信息、执业资格信息、良好行为记录信息和不良行为记录信息等。</span></p>
<p>　　<span><span>(二)</span></span><span>信用信息共享提供部门须提供网络在线的信息获取方式。</span></p>
<p>　　<span><span>(三)<span> </span></span></span><span>从业单位信用档案的内容，应包括基本信息、资质信息、业绩信息、荣誉（奖励）信息、不良行为信息等。</span></p>
<p>　　<span><span>(四)</span></span><span>从业人员信用档案的内容，应包括基本信息、执业资格信息、参与项目信息、荣誉（奖励）信息、不良行为信息等。</span></p>
<p>　　<span><span>(五)</span></span><span>从业单位和从业人员信用档案，须注明发布机构和发布日期，各类信息须注明来源部门和收集日期。</span></p>
<p>　　<span><span>(六)</span></span><span>共享信用信息的提供、更新、维护和服务，由各级行业主管部门依据职能负责。</span></p>
<p>　　<strong><span><span>四、</span></span><span>信用等级评价结果公开表示规则</span></strong></p>
<p>　　<span><span>(一)</span></span><span>各行业根据本行业规则开展工程建设领域的从业单位信用等级评价，评价加过信息公开时应遵循公开表示规则。</span></p>
<p>　　<span><span>(二)</span></span><span>信用等级评价结果公开表示分为<span>A</span>、<span>B</span>、<span>C</span>三等。</span></p>
<p>　　<span><span>(三)</span></span><span>信用等级评价结果公开表示为<span>A</span>等的，表示从业单位在评价期内信用较好，投标行为规范，履行合同情况较好，工程质量优良，无不良行为记录。</span></p>
<p>　　<span><span>(四)</span></span><span>信用等级评价结果公开表示为<span>B</span>等的，表示从业单位在评价期内信用一般，投标行为基本规范，履行合同法情况一般，无工程质量安全事故，无较大不良行为记录。</span></p>
<p>　　<span><span>(五)<span> </span></span></span><span>信用等级评价结果公开表示为<span>C</span>等的，表示从业单位在评价期内信用较差，经营活动中有违法行为，履行合同情况较差，有工程质量安全事故记录，有严重不良行为记录。</span></p>
<p>　　<span><span>(六)</span></span><span>信用等级评价结果信息公开共享时，评价结果信息的对应表示工作由信息发布或提供部门负责。评价结果信息对应表示后的展现方式是评价结果信息后位加括号标定对应等级信息，以示区分。如“<span>AAA(A)</span>”，表示原等级为<span>AAA</span>，对应表示后的等级为<span>A</span>。</span></p>
<p>　　<strong><span><span>五、</span></span><span>信息表现格式</span></strong></p>
<p>　　<span><span>(一)</span></span><span>项目信息和信用信息表现形式为电子数据，包括结构化数据和非结构化数据。</span></p>
<p>　　<span><span>(二)</span></span><span>非结构化数据包括办公文档、纯文本、表格、网页、图片、音频、视频。</span></p>
<p>　　<span><span>(三)</span></span><span>根据<span>GB/T20916-2007</span>，文本文档采用<span>XML</span>格式，图片采用<span>JPEG</span>格式，音频采用<span>WAV</span>格式，视频采用<span>AVI</span>格式。</span></p>
<p>　　<span><span>(四)</span></span><span>办公文档、纯文本、表格和网页中的中文采用简体中文字符。</span></p>
<p>　　<strong><span><span>六、</span></span><span>项目编码规则</span></strong></p>
<p>　　<span><span>(一)<span> </span></span></span><span>编码对象是工程建设领域的工程项目。</span></p>
<p>　　<span><span>(二)<span> </span></span></span><span>项目代码由项目审批单位在项目立项时负责赋码，项目代码在使用过程中保持唯一性和不变性。</span></p>
<p>　　<span><span>(三)<span>　　　　&nbsp; </span></span></span><span>
<table cellspacing="0" cellpadding="0" width="650">
    <tbody>
        <tr>
            <td>
            <div v:shape="_x0000_s1026">
            <p>　　<span>前段码（<span>19</span>位）</span></p>
            <p>　　<span>XXXXXX&nbsp;X</span><span>…<span>X&nbsp;XXXX&nbsp;XX</span>……<span>X</span></span></p>
            <p>　　<span><span>　　　　　　　　&nbsp; </span></span><span>序列码（不定长）</span></p>
            <p>　　<span><span>　　　　　　　　　　　　　 </span></span><span>年度（<span>4</span>位）</span></p>
            <p>　　<span><span>　　　　　　　　　　　　　　　　　　　　　　　 </span></span><span>组织机构代码（<span>9</span>位）</span></p>
            <p>　　<span><span>　　　　　　　　　　　　　 </span></span><span>行政区划代码（<span>6</span>位）</span></p>
            </div>
            </td>
        </tr>
    </tbody>
</table>
</span><span>　　　&nbsp; 项目代码是采用组合编码方式生成的特征组合码，由<span>19</span>位前段码和不定长序列码组成。排列顺序从左至右依次为：<span>6</span>位行政区划代码，<span>9</span>位项目建设单位组织机构代码，<span>4</span>位年度和不定长序列码。具体表示形式如下图所示。</span></p>
<br clear="all" />
<p>　　<span><span>(四)</span></span><span>行政区划代码：<span>6</span>位数字，按<span>GB/T2260(2007)</span>的规定执行。中央的行政区划代码为“<span>000000</span>”。</span></p>
<p>　　<span><span>(五)</span></span><span>项目建设单位组织机构代码：<span>9</span>位数字。</span></p>
<p>　　<span><span>(六)</span></span><span>年度：<span>4</span>位数字，表示项目立项的年度。</span></p>
<p>　　<span><span>(七)</span></span><span>序列号：不定长字符的序列号，在同一前段码下具有唯一性。</span></p>
</div></td></tr></table></td>
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