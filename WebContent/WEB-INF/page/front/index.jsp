<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>工程建设共享平台 </title>
<style type="text/css"> 
<!--
body {
	margin-top: 0px;  
	margin-bottom: 0px;
	background-color:#B6D9FF;  
	margin-left: 0px;
         background-position:center;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; color: #000000; }
.STYLE4 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE5 {color: #FFFFFF}
.STYLE6 {font-size: 12px; color: #FFFFFF; }
a{ color: #000000;text-decoration:none;}
a:hover{ color: #FF0000;}
.STYLE7 a{
     font-size: 12px;
	font-weight: bold;
	color: #B0130F;
}
.STYLE2 a{	font-size: 12px;
	font-weight: bold;
	color: #000000;
}
.STYLE9 {
	font-size: 16px;
	font-weight: bold;
	color: #0066FF;
}
.STYLE10 {
	font-size: 16px;
	font-weight: bold;
	color: #FFFFFF;
}
.box{ border-left:1px solid #cccccc;border-top:1px solid #cccccc;}
.box td{ border-right:1px solid #cccccc;border-bottom:1px solid #cccccc; font-size:12px;}
-->
</style>

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
	<form  name="SearchForm" method="get"    action="http://www.xunyang.gov.cn/search" target="_blank" style="margin:0; padding:0" onsubmit="SearchForm_onsubmit();return false;">
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
  </td>
  </tr>
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
</script>  
<tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="993" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="215" valign="top"><table width="993" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" valign="top" style="border:#CCCCCC 1px solid" height="205"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="100%" height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="10" height="23">&nbsp;</td>
                                  <td width="194"><img src="<s:url value="/ewcmssource/front/main-12-1.jpg"/>" width="164" height="23" /></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="2"></td>
                          </tr>
                          <tr>
                            <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="100%" height="23" align="right" valign="bottom"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="50%" height="23" align="left" valign="bottom"><table width="98%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td width="241" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="sp1" onMouseMove="sp_change(this)" class="STYLE7"><a href="<s:url action="projectshenpilist"/>">项目审批信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right"><table width="98%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td width="241" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="sp2" onMouseMove="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel2"/>">项目核准信息</a></td>
                                            </tr>
                                          </table></td>
                                      </tr>
                                    </table></td>
                                </tr>
                                <tr>
                                  <td height="140" valign="top"><table id="spcon1" style="display:block" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                      <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      <s:iterator value="projectChannel1Articles" status="st">
                                      <s:if test="#st.index<5">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="center" class="STYLE1">&nbsp;<s:property value="projectBasic.code"/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
                                        <td align="center" class="STYLE1">
                                        &nbsp;
                                        	<script type="text/javascript">
						                      var jsrq = "<s:property value="%{getText('global.date',{published})}"/>";    
						                      if(jsrq!="null"){
						                    	  document.write(jsrq);
						                      }
						                     </script>
                                        </td>
                                      </tr>
                                      </s:if>
                                      </s:iterator>  
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table id="spcon2" style="display:none" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                      <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                      <s:iterator value="projectChannel2Articles" status="st">
                                      <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>'  target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1">&nbsp;
	                                      	<script type="text/javascript">
						                      var jsrq = "<s:property value="%{getText('global.date',{published})}"/>";    
						                      if(jsrq!="null"){
						                    	  document.write(jsrq);
						                      }
						                     </script>
	                                        </td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>  
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
                <td width="13">&nbsp;</td>
                <td width="255" height="205" align="center" valign="top" background="<s:url value="/ewcmssource/front/main_06.jpg"/>" style="border:#CCCCCC 1px solid">
				  <table width="255" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="215" align="center" style="border:#CCCCCC 1px solid"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="38" valign="bottom" align="center"><a href="<s:url action="projectdir"/>" target="_blank"><img src='<s:url value="/ewcmssource/front/1_03.gif"/>' border="0" /></a></td> 
                          </tr>
                          <tr>
                            <td width="100%" height="5px"></td>
                          </tr>
                          <tr>
                            <td height="38" valign="bottom" align="center"><a href="<s:url action="projectdescripe"/>" target="_blank"><img src="<s:url value="/ewcmssource/front/1_06.gif"/>" border="0" /></a></td>
                          </tr>
                          <tr>
                            <td width="100%" height="5px"></td>
                          </tr>
                          <tr>
                            <td height="38" valign="bottom" align="center"><a href="<s:url action="trustdir"/>" target="_blank"><img src="<s:url value="/ewcmssource/front/1_08.gif"/>" border="0" /></a></td>
                          </tr>
                          <tr>
                            <td width="100%" height="5px"></td>
                          </tr>
                          <tr>
                            <td height="38" valign="bottom" align="center"><a href="<s:url action="trustdescripe"/>" target="_blank"><img src="<s:url value="/ewcmssource/front/1_10.gif"/>" border="0" /></a></td>
                          </tr>
                          <tr>
                            <td width="100%" height="5px"></td>
                          </tr>
                          <tr>
                            <td height="38" valign="bottom" align="center"><a href="<s:url action="projectshare"/>" target="_blank"><img src="<s:url value="/ewcmssource/front/1_12.gif"/>" border="0" /></a></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
				  </td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
      </table></td>
  </tr>
  
<tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="993" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="625" valign="top"><table width="625" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td valign="top"><table width="625" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="208" valign="top" style="border:#CCCCCC 1px solid"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="10" height="23">&nbsp;</td>
                                  <td width="194"><img src="<s:url value="/ewcmssource/front/main-07-2.jpg"/>" width="194" height="23" /></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                          <tr>
                            <td height="165" valign="top" width="100%"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="21"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="jsgl1" onMouseOver="sp_change(this)" class="STYLE7"><a href="<s:url action="projectbasiclist"/>">基本信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl2" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel4"/>">招标投标</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl3" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel5"/>">征地拆迁</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl4" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel6"/>">重大变更设计</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl5" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel7"/>">施工管理</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl6" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel8"/>">合同履约</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl7" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel9"/>">质量安全</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl8" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel10"/>">资金管理</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl9" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel11"/>">交(竣)验工</a></td>
                                            </tr>
                                          </table></td>
                                      </tr>
                                    </table></td>
                                </tr>
                                <tr>
                                  <td height="140" valign="top"><table style="display:block" id="jsglcon1" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
								     <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel3Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectbasicdetail"/>?codeId=<s:property value="code"/>' title="<s:property value="name"/>" target="_blank" class="STYLE3"><s:property value="name"/></a></td>
	                                        <td align="center" class="STYLE1">&nbsp;
	                                         <script type="text/javascript">
						                      var jsrq = "<s:property value="%{getText('global.date',{buildTime})}"/>";    
						                      if(jsrq!="null"){
						                    	  document.write(jsrq);
						                      }
						                     </script>
	                                        </td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon2" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel4Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                  </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon3" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      <s:iterator value="projectChannel5Articles" status="st">
                                      <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>                                     
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon4" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel6Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon5" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel7Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon6" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel8Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon7" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                     <s:iterator value="projectChannel9Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon8" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel10Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table style="display:none" id="jsglcon9" width="98%" height="140" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									 <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel11Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="100%" height="5px"></td>
              </tr>
              <tr>
                <td valign="top"><table width="625" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="214" valign="top" style="border:#CCCCCC 1px solid"><table width="100%" height="205" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="615" height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="10" height="23">&nbsp;</td>
                                  <td width="194"><img src="<s:url value="/ewcmssource/front/main-09-1.jpg"/>" width="227" height="23" /></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                          <tr>
                            <td height="173" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="615" height="21" align="right" valign="bottom"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="210" height="21" valign="bottom"><table width="200" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="tdzb1" onMouseOver="sp_change(this)" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel12"/>">土地招标卖挂牌出让信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td width="210"><table width="200" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="tdzb2" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel13"/>">国有土地使用权出让结果信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td><table width="204" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="tdzb3" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel14"/>">建设用地审批信息</a></td>
                                            </tr>
                                          </table></td>
                                      </tr>
                                    </table></td>
                                </tr>
                                <tr>
                                  <td height="5"></td>
                                </tr>
                                <tr>
                                  <td height="140" valign="top"><table id="tdzbcon1" style="display:block" width="98%" height="142" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
								      <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                      <s:iterator value="projectChannel12Articles" status="st">
                                      <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table id="tdzbcon2" style="display:none" width="98%" height="142" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                      
                                     <s:iterator value="projectChannel13Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table>
                                    <table id="tdzbcon3" style="display:none" width="98%" height="142" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
									  <tr>
                                        <td width="42" align="center" height="30px"><span class="STYLE4">序号</span></td>
                                        <td width="150" align="center"><span class="STYLE4">项目编码</span></td>
                                        <td align="center" class="STYLE1"><span class="STYLE4">项目名称</span></td>
                                        <td width="129" align="center" class="STYLE1"><span class="STYLE4">发布日期</span></td>
                                      </tr>
                                     <s:iterator value="projectChannel14Articles" status="st">
                                     <s:if test="#st.index<5">
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="100%" height="5px"></td>
              </tr>
              <tr>
                <td valign="top"><table width="625" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top" style="border:#CCCCCC 1px solid"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="100%" height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="10" height="23">&nbsp;</td>
                                  <td width="194"><img src="<s:url value="/ewcmssource/front/main-15-02.jpg"/>" /></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                          <tr>
                            <td valign="top"><table width="615" border="0" align="center" cellpadding="0" cellspacing="0">
							    <s:iterator value="xianShiLinkList" status="st">
                                     <s:if test="#st.index%5==0">
                                	 </tr><tr>
                                  </s:if> 
                                  	<td height="32" align="left" valign="middle"><a href='<s:property value="link"/>'  target="_blank" class="STYLE3">&nbsp;&nbsp;<s:property value="title"/></a></td>                        					
								</s:iterator>
                                <tr>
                                  <td align="center" valign="middle" colspan="5"></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="100%"></td>
              </tr>
            </table></td>
          <td width="13">&nbsp;</td>
          
          
          <td width="355" valign="top"><table width="355" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="border:#CCCCCC 1px solid" height="208" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="355" height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="10" height="23">&nbsp;</td>
                            <td width="194"><img src="<s:url value="/ewcmssource/front/main-10-1.jpg"/>" width="233" height="22" /></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr>
                      <td height="5"></td>
                    </tr>
                    <tr>
                      <td valign="top"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="615" height="21" align="right" valign="bottom"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="87" height="21" align="left" valign="bottom"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" onMouseOver="sp_change(this)" id="ky1" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel15"/>">探矿权审批</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="87" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky2" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel16"/>">探矿权出让</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="88" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky3" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel17"/>">采矿权审批</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="88" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky4" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=<s:text name="project.channel18"/>">采矿权出让</a></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td valign="top"><table style="display:none" id="kycon1" width="350" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                <tr>
                                  <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30"  align="center">项目编码</td>
                                  <td align="center" >项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                     <s:iterator value="projectChannel15Articles" status="st">
                                     <s:if test="#st.index<4">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:none" id="kycon2" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" align="center">项目编码</td>
                                  <td align="center">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      <s:iterator value="projectChannel16Articles" status="st">
                                      <s:if test="#st.index<4">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>                                     
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:block" id="kycon3" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30"  align="center">项目编码</td>
                                  <td align="center">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      
                                     <s:iterator value="projectChannel17Articles" status="st">
                                      <s:if test="#st.index<4">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:none" id="kycon4" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" align="center">项目编码</td>
                                  <td align="center" >项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      <s:iterator value="projectChannel18Articles" status="st">
                                       <s:if test="#st.index<4">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
	                                      </s:if>
                                      </s:iterator>                                     
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td height="5"></td>
              </tr>
              <tr>
                <td height="330" align="center" valign="top" style="border:#CCCCCC 1px solid"><table width="100%" height="205" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="355" height="27" valign="bottom" background="<s:url value="/ewcmssource/front/main-07.jpg"/>"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="10" height="23">&nbsp;</td>
                            <td width="194"><img src="<s:url value="/ewcmssource/front/main-13-1.jpg"/>" width="314" height="22" /></td>
                          </tr>
                        </table></td>
                    </tr>
					<tr>
                      <td height="5"></td>
                    </tr>
                    <tr>
                      <td height="287" valign="top"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="615" height="21" align="right" valign="bottom"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="183" align="left" valign="bottom"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-009.jpg"/>" id="cydw1" onMouseOver="ry_change(this)" class="STYLE7"><a href="<s:url action="enterprisechannellist"/>?channelId=<s:text name="enterprise.channel1"/>">从业单位良好行为记录信息</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="172" align="right"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-009-2.jpg"/>" class="STYLE2" id="cydw2" onMouseOver="ry_change(this)"><a href="<s:url action="enterprisechannellist"/>?channelId=<s:text name="enterprise.channel2"/>">从业单位不良行为记录信息</a></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                          <tr>
                            <td height="254" valign="top"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="100" valign="top"><table id="cydwcon1" style="display:block" width="350" height="112" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                      <tr>
                                        <td width="40" height="30" align="center">序号</td>
                                        <td width="230" align="center">单位名称 </td>
                                        <td width="80" align="center">发布时间</td>
                                      </tr>
                                     <s:iterator value="lhxwjlxxEnterprises" status="st">\
                                      <s:if test="#st.index<4">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="enterprisedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="enterpriseBasic.name"/>" target="_blank" class="STYLE3"><s:property value="enterpriseBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
                                      </s:if>
                                      </s:iterator>                
                                      <tr>
                                        <td colspan="3" width="100%"></td>
                                      </tr>
                                    </table>
                                    <table id="cydwcon2" style="display:none" width="350" height="112" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                      <tr>
                                        <td width="40" height="30" align="center">序号</td>
                                        <td width="230" align="center">单位名称</td>
                                        <td width="80" align="center">发布时间</td>
                                      </tr>
                                     <s:iterator value="blxwjlxxEnterprises" status="st">
                                      <s:if test="#st.index<4">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="enterprisedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="enterpriseBasic.name"/>" target="_blank" class="STYLE3"><s:property value="enterpriseBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
                                      </s:if>
                                      </s:iterator>                                       
                                      <tr>
                                        <td colspan="3" width="100%"></td>
                                      </tr>
                                    </table></td>
                                </tr>
                                <tr>
                                  <td height="5"></td>
                                </tr>
                                <tr>
                                  <td valign="top"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="615" height="21" align="right" valign="bottom"><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td width="183" height="29" align="left" valign="bottom"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="29" align="center" background="<s:url value="/ewcmssource/front/main-009.jpg"/>" id="ry1" onMouseOver="ry_change(this)" class="STYLE7"><a href="<s:url action="employebasiclist"/>">人员基本信息</a></td>
                                                  </tr>
                                                </table></td>
                                              <td width="172" align="right"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="29" align="center" background="<s:url value="/ewcmssource/front/main-009-2.jpg"/>" class="STYLE2" id="ry2" onMouseOver="ry_change(this)"><a href="<s:url action="employechannellist"/>?channelId=<s:text name="employe.channel1"/>">执业资格信息 </a></td>
                                                  </tr>
                                                </table></td>
                                            </tr>
                                          </table></td>
                                      </tr>
                                      <tr>
                                        <td height="2"></td>
                                      </tr>
                                      <tr>
                                        <td valign="top"><table id="rycon1" style="display:block" width="350" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                            <tr>
                                        <td width="40" height="30" align="center">序号</td>
                                        <td width="230" align="center">信息名称</td>
                                        <td width="80" align="center">发布时间</td>
                                      </tr>
                                     <s:iterator value="ryjbxxArticles" status="st">
                                      <s:if test="#st.index<4">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="employebasicdetail"/>?codeId=<s:property value="cardCode"/>' title="<s:property value="name"/>" target="_blank" class="STYLE3"><s:property value="name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
                                      </s:if>
                                      </s:iterator>  
                                      <tr>
                                        <td colspan="3" width="100%"></td>
                                      </tr>
                                          </table>
                                          <table id="rycon2" style="display:none" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                            <tr>
                                        <td width="40" height="30" align="center">序号</td>
                                        <td width="230" align="center">信息名称</td>
                                        <td width="80" align="center">发布时间</td>
                                      </tr>
                                     <s:iterator value="zyzgxxArticles" status="st" >
                                      <s:if test="#st.index<4">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="employedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="employeBasic.name"/>" target="_blank" class="STYLE3"><s:property value="employeBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
                                       </s:if>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="3" width="100%"></td>
                                      </tr>
                                          </table></td>
                                      </tr>
                                    </table></td>
                                </tr>
                                <tr></tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  
  <tr>
    <td width="100%" height="5px" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
		<table width="997" border="0" cellpadding="0" cellspacing="0">
		  <tr>
	　　　　　 <td valign="bottom" width="135"><img src="<s:url value="/ewcmssource/front/main-15-01.jpg"/>" width="135" height="29" border="0" /></td>
			  <td width="286" align="right" valign="bottom"><a href="http://gc.cio360.org/index.html" target="_blank"><img src="<s:url value="/ewcmssource/front/20120428jl_1.jpg"/>" width="286" height="30" border="0" /></a></td>
	          <td width="286" align="right" valign="bottom"><a href="http://xxgk.jiangxi.gov.cn/gcly/" target="_blank"><img src="<s:url value="/ewcmssource/front/20120428jl_2.jpg"/>" width="286" height="30" border="0" /></a></td>
	          <td width="286" align="right" valign="bottom"><a href="http://www.jiujiang.gov.cn/gcjsly/" target="_blank"><img src="<s:url value="/ewcmssource/front/20120428jl_3.jpg"/>" width="286" height="30" border="0" /></a></td>	
	      </tr></table>
	 </td>
	    </tr>
	        <tr>
	          <td colspan="3" valign="top" background="<s:url value="/ewcmssource/front/main-15-05.jpg"/>" style="border:#CCCCCC 1px solid"><table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
	                                
							    <s:iterator value="danWeiLinkList" status="st">
                                     <s:if test="#st.index%6==0">
                                	 </tr><tr>
                                  </s:if> 
                                  	<td height="32" align="left" valign="middle"><a href='<s:url action="sectorarticlelist"/>?organId=<s:property value="id"/>'  target="_blank" class="STYLE3">&nbsp;&nbsp;<s:property value="name"/></a></td>                        					
								</s:iterator>
                           								                               
	                                <tr>
	                                  <td align="center" valign="middle" colspan="6"></td>
	                                </tr>
	            </table></td>
	        </tr>
	        <tr>
	          <td width="100" height="1px" colspan="3" bgcolor="#FFFFFF"></td>
	        </tr>
			<s:include value="/footer.jsp"/>
  
</table>

<script language="javascript"> 
 function $(id){
   return document.getElementById(id);
 }
 function sp_change(obj){
    var len=obj.id.length;
	var flag=obj.id.substring(0,len-1);
	var order=obj.id.substring(len-1);
	for(var i=0;i<10;i++){
	  if($(flag+i)){
	    $(flag+i).className="STYLE2";
		$(flag+i).background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>";
	  }
	  if($(flag+'con'+i)){
	    $(flag+'con'+i).style.display="none";
	  }
	}
	obj.className="STYLE7";
	obj.background="<s:url value="/ewcmssource/front/main-008.jpg"/>";
	$(flag+'con'+order).style.display="block";
 }
 
  function ry_change(obj){
    var len=obj.id.length;
	var flag=obj.id.substring(0,len-1);
	var order=obj.id.substring(len-1);
	for(var i=0;i<10;i++){
	  if($(flag+i)){
	    $(flag+i).className="STYLE2";
		$(flag+i).background="<s:url value="/ewcmssource/front/main-009-2.jpg"/>";
	  }
	  if($(flag+'con'+i)){
	    $(flag+'con'+i).style.display="none";
	  }
	}
	obj.className="STYLE7";
	obj.background="<s:url value="/ewcmssource/front/main-009.jpg"/>";
	$(flag+'con'+order).style.display="block";
 }
</script>

</body>
</html>
