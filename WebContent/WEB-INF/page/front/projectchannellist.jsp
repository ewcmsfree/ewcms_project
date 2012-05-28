<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目审批公开信息</title>
<style type="text/css"> 
<!--
body {
	margin-top: 0px;
	margin-bottom: 0px;
	background-color:#B6D9FF;
	margin-left: 0px;
}
.STYLE1 {font-size: 12px; color:#8c857d }
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FFFFFF; }
.STYLE7 {
	font-size: 15px;
	font-weight: bold;
	color: #000000;
}
.STYLE8 {font-size: 15px}
.STYLE9 {color: #000000}
.STYLE4 {	font-size: 14px;
	font-weight: bold;
}
.STYLE10 {color: #FF0000}
a{ color: #000000;text-decoration:none;}
a:hover{ color: #FF0000;}
.box{ border-left:1px solid #cccccc;border-top:1px solid #cccccc;}
.box td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:12px;}
-->
</style></head>
 
<body>
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="100%"><style type="text/css"> 
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
          <td width="968" height="30" align="right" class="STYLE6">www.jiangxi.gov.cn </td>
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
                      <td height="34" align="center" id="sy" background="<s:url value="/ewcmssource/front/banner-01.jpg"/>" class="STYLE9" onmousemove="topchange(this)"><a href="<s:url action="index"/>">首页</a></td>
                    </tr>
                  </table></td>
		<td width="163" align="center" valign="bottom"><table width="113" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="34" id="xmxxgk" align="center" background="<s:url value="/ewcmssource/front/banner-0001.jpg"/>" class="STYLE10" onmousemove="topchange(this)"><a href="<s:url action="projectlist"/>">项目信息公开</a></td>
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
        <td width="251" valign="top"><table width="241" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="41" align="center" valign="middle" background="<s:url value="/ewcmssource/front/3-main-02.jpg"/>"><a href="<s:url action="projectlist"/>" ><span class="STYLE4">项目信息公开</span></a></td>
              </tr>
			  <tr><td width="100%" height="5px" background="<s:url value="/ewcmssource/front/3-main-04.jpg"/>"></td></tr>
              <tr>
                <td valign="top" background="<s:url value="/ewcmssource/front/3-main-04.jpg"/>"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
				    
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="l_change(1)"><span class="STYLE4">项目审批公开信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="con1" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./1/" ><span class="STYLE1">项目建议书批复结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./kxx/" ><span class="STYLE1">可行性研究报告批复结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./cbsjfa/" ><span class="STYLE1">初步设计方案批复结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./jnpg/" ><span class="STYLE1">节能评估审查批复结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./ghxzyj/" ><span class="STYLE1">规划选址意见批复结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./2/" ><span class="STYLE1">用地批复文件结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./3/" ><span class="STYLE1">环境影响评价审批的结果信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./jsxmaqssypj/" ><span class="STYLE1">建设项目安全设施预评价</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./xmhzxx/" ><span class="STYLE1">项目核准信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./jzgcsgxk/" ><span class="STYLE1">建筑工程施工许可行政许可</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="./aqssjgyspjxx/" ><span class="STYLE1">安全设施竣工验收评价信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="l_change(2)"><span class="STYLE4">项目建设管理公开信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="con2" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/xmjcxx/" ><span class="STYLE1">项目基本信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/zbtbxx/" ><span class="STYLE1">招标投标信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/zdcqxx/" ><span class="STYLE1">征地拆迁信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/zdsjbgxx/" ><span class="STYLE1">重大设计变更信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/sgglxx/" ><span class="STYLE1">施工管理信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/htlyxx/" ><span class="STYLE1">合同履约信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/zlaqjcxx/" ><span class="STYLE1">质量安全检查信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/zjglxx/" ><span class="STYLE1">资金管理信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../xmjsglgk/jjgysxx/" ><span class="STYLE1">交竣工验收信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="l_change(3)"><span class="STYLE4">土地使用权审批和出让信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="con3" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../tdsyqsphcrxx/tdzbpm/" ><span class="STYLE1">土地招标拍卖挂牌出让信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../tdsyqsphcrxx/syqcrht/" ><span class="STYLE1">国有土地使用权出让合同信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../tdsyqsphcrxx/jsydspxx/" ><span class="STYLE1">建设用地审批信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="l_change(4)"><span class="STYLE4">矿业权审批和出让信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="con4" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../kyqsphcrxx/tkqspxx/" ><span class="STYLE1">探矿权审批信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../kyqsphcrxx/tkccrxx/" ><span class="STYLE1">探矿权出让信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../kyqsphcrxx/ckqspxx/" ><span class="STYLE1">采矿权审批信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../kyqsphcrxx/ckqcrxx/" ><span class="STYLE1">采矿权出让信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td width="100%"></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="16" background="<s:url value="/ewcmssource/front/3-main-03.jpg"/>"></td>
              </tr>
              <tr></tr>
            </table>
			<br>
			<table width="241" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="41" align="center" valign="middle" background="<s:url value="/ewcmssource/front/3-main-02.jpg"/>"><a href="<s:url action="enterpriselist"/>" ><span class="STYLE4">信用信息公开</span></a></td>
              </tr>
			  <tr><td width="100%" height="5px" background="<s:url value="/ewcmssource/front/3-main-04.jpg"/>"></td></tr>
			  <tr>
                <td valign="top" background="<s:url value="/ewcmssource/front/3-main-04.jpg"/>"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
				    
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="xy_change(1)"><span class="STYLE4">从业单位公开信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="xy1" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/qyjbxx/" ><span class="STYLE1">企业基本信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/zzxx/" ><span class="STYLE1">资质信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/xmyjxx/" ><span class="STYLE1">项目业绩信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/xypjxx/" ><span class="STYLE1">信用评价信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/lhxwjlxx/" ><span class="STYLE1">良好行为记录信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cydwgkxx/blxwjlxx/" ><span class="STYLE1">不良行为记录信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td height="30"><table width="225" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="31" background="<s:url value="/ewcmssource/front/3-main-05.jpg"/>"><table width="225" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40">&nbsp;</td>
                                  <td height="25" style="cursor:pointer" onClick="xy_change(2)"><span class="STYLE4">从业人员公开信息</span></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr><td width="100%" height="5px"></td></tr>
                    <tr id="xy2" style="display:none">
                      <td width="100%" align="center"><table cellpadding="0" cellspacing="0" border="0" width="80%">
					      
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cyrygkxx/ryjbxx/" ><span class="STYLE1">人员基本信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cyrygkxx/zyzgxx/" ><span class="STYLE1">执业资格信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cyrygkxx/rylhxwjlxx/" ><span class="STYLE1">人员良好行为记录信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                          <tr>
                            <td width="100%" height="30px" background="<s:url value="/ewcmssource/front/chnl_bg_20110926.jpg"/>" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="../../gcjslyxyxxgk/cyrygkxx/ryblxwjlxx/" ><span class="STYLE1">人员不良行为记录信息</span></a></td>
                          </tr>
						  <tr><td width="100%" height="5px"></td></tr>
						  
                        </table></td>
                    </tr>
					
                    <tr>
                      <td width="100%"></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="16" background="<s:url value="/ewcmssource/front/3-main-03.jpg"/>"></td>
              </tr>
              <tr></tr>
            </table></td>
        <td width="10">&nbsp;</td>
        <td width="724" valign="top"><table width="724" height="409" border="0" cellpadding="0" cellspacing="0">
          <tr><td height="409" valign="top" style="border:#CCCCCC 1px solid"><table width="717" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="5"></td>
            </tr>
            <tr>
              <td height="402"><table width="717" height="402" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="402" valign="top"><table width="717" height="402" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10" height="23">&nbsp;</td>
                                <td background="<s:url value="/ewcmssource/front/main-07-3.jpg"/>" align="center" style="padding-left:10px; padding-right:10px"><span class="STYLE4">项目审批公开信息</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="5"></td>
                        </tr>
                        <tr>
                          <td height="342" valign="top"><table width="717" height="342" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="10"></td>
                              </tr>
                              <tr>
                                <td height="311" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                    <tr>
                                      <td width="50" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                      <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                      <td align="center"><span class="STYLE4">项目名称</span></td>
                                      <td width="100" align="center"><span class="STYLE4">发布日期</span></td>
                                    </tr>
									<s:iterator value="projectChannelArticleList" status="st">
                                    <tr>
                                      <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1+((page.page-1)*20)'/></td>
                                      <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
                                      <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
                                      <td align="center" class="STYLE1"><s:property value="published"/></td>
                                    </tr>
                                    </s:iterator>
								</table>
								  
 								 <br>
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="30" bgcolor="#F2F2F2" class="li_line"><div align="center" class="hui">
                                                        共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                                                        <s:if test="page.pagePrev == -1">
                                                            上一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="index" id="pageUrl" escapeAmp="false">
                                                                <s:param name="type" value="%{type}"/>
                                                                <s:param name="pageNumber" value="%{page.pagePrev-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">上一页</a>
                                                        </s:else>
                                                        <s:iterator value="page.pageList">
                                                            <s:if test = "page.page == top">
                                                                <strong><s:property value="top"/></strong>
                                                            </s:if>
                                                            <s:else>
                                                                <s:url action="index" id="pageUrl" escapeAmp="false">
                                                                    <s:param name="type" value="%{type}"/>
                                                                    <s:param name="pageNumber" value="%{top-1}"/>
                                                                </s:url>
                                                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                            </s:else>&nbsp;
                                                        </s:iterator>
                                                        <s:if test="page.pageNext == -1">
                                                            下一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="index" id="pageUrl" escapeAmp="false">
                                                                <s:param name="type" value="%{type}"/>
                                                                <s:param name="pageNumber" value="%{page.pageNext-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">下一页</a>
                                                        </s:else>&nbsp;转到
                                                        <select name="select" class="hui" onchange="jumpPage(this)">
                                                            <s:iterator value="page.pageListAll">
                                                                <s:if test = "page.page == top">
                                                                    <option selected><s:property value="top"/></option>
                                                                </s:if>
                                                                <s:else>
                                                                    <option><s:property value="top"/></option>
                                                                </s:else>
                                                            </s:iterator>
                                                        </select>页
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                      </td>
                                      </tr>
                                      </table>
                                      </td>
                                      </tr>
                                      </table>
                                      </td>
                                      </tr>
                                      </table>
                                      </td>
                                      </tr>
                                      </table>
                                      </td>
                                      </tr>
                                      </table>
                                      </td></tr>
                                      </table></td></tr>  
  <tr><td width="100%" height="10px"></td></tr>
  <tr>
    <td width="100%" colspan="5"><style type="text/css"> 
td{font-size:12px;} 
</style>
<table width="100%" height="95" border="0" align="center" cellpadding="0" cellspacing="0" background="<s:url value="/ewcmssource/front/main-16.jpg"/>" bgcolor="#FFFFFF">
  <tr>
    <td align="center" class="STYLE1 STYLE5">主办：省专项治理办(0791-86212113)、省协调小组办公室(0791-86253388)</td>
  </tr>
  <tr>
    <td align="center" class="STYLE1 STYLE5">技术支持：省信息中心(0791-86224772)</td>
  </tr>
  <tr>
    <td align="center" class="STYLE6">IPC备案号：赣ICP备05004294号 E-Mail：zfwz(at)jiangxi.gov.cn</td>
  </tr>
</table>
</td>
  </tr>
</table>
</body>
<script language="javascript"> 
  function $(id){
    return document.getElementById(id);
  }
  function l_change(bh){
     for(var i=0;i<10;i++){
	    if($('con'+i)){
		  $('con'+i).style.display="none";
		}
		if($('xy'+i)){
		  $('xy'+i).style.display="none";
		}
	 } 
	 $('con'+bh).style.display="block";
  }
  function xy_change(bh){
     for(var i=0;i<10;i++){
	    if($('con'+i)){
		  $('con'+i).style.display="none";
		}
	    if($('xy'+i)){
		  $('xy'+i).style.display="none";
		}
	 } 
	 $('xy'+bh).style.display="block";
  }
</script>

</html>