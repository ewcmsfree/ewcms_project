<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>浔阳区工程建设领域项目信息公开</title>


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
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
  <tr>
    <td valign="top" width="100%"><script type="text/javascript"> 
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
		        <td width="1003" height="194" valign="top" background="<s:url value="/ewcmssource/front/TOP.jpg"/>" bgcolor="#B6D9FF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		          <tr>
		            <td width="968" height="30" align="right" style="font-size: 12px; color: #FFFFFF;">简体·繁体  |  www.xunyang.gov.cn</td>
		            <td width="35" align="right" class="STYLE6">&nbsp;</td>
		          </tr>
		        </table></td>
		    </tr>
		    <tr>
		        <td height="34"><table width="1003" border="0" cellspacing="0" cellpadding="0">
		            <tr>
		              <td class="Nav" valign="bottom" background="<s:url value="/ewcmssource/front/banner-0.jpg"/>"><table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="124" align="center" valign="bottom"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		                        <tr>
		                          <td height="34" class="home" align="center" style="background-position:center"><a href="./" class="hover"><b><font color="white">首页</font></b></a></td>
		                        </tr>
		                    </table></td>
		                    <td width="124" align="center" valign="bottom"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		                        <tr>
		                          <td height="34" class="nav_xmgk" align="center" style="background-position:center"><a href="<s:url action="projectlist"/>"><b><font color="white">项目信息公开</font></b></a></td>
		                        </tr>
		                    </table></td>
		                    <td width="124" align="center" valign="bottom"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		                        <tr>
		                          <td height="34" class="nav_xygk" align="center" style="background-position:center"><a href="<s:url action="enterpriselist"/>"><b><font color="white">信用信息公开</font></b></a></td>
		                        </tr>
		                    </table></td>
		                    <td width="631" align="right" valign="middle"><a href="http://218.65.3.188:8082/was40/outside/shengbao.jsp" class="STYLE11" style=" font-size:15px; font-weight:900; text-decoration:none; color:#FFFFFF">项目基本信息申请表&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
		                  </tr>
		              </table></td>
		            </tr>
		        </table></td>
		      </tr>
		    <tr>
		        <td height="33" valign="top" background="<s:url value="/ewcmssource/front/banner-2.jpg"/>">
				<form  name="SearchForm" method="post"  accept-charset="utf-8"  action="http://218.65.3.188:8082/was40/search" target="_blank" style="margin:0; padding:0" onsubmit="SearchForm_onsubmit();return false;">
				
				<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
		            <tr>
		              <td width="165" align="right"><span style="font-size: 12px;"><SCRIPT> 
		 <!---                            
		 today=new Date();               
		 var hours = today.getHours();       
		 var minutes = today.getMinutes();       
		 var seconds = today.getSeconds();        
		 function initArray(){           
		 this.length=initArray.arguments.length       
		 for(var i=0;i<this.length;i++)       
		 this[i+1]=initArray.arguments[i] }       
		 var d=new initArray("<font style='font-size: 12px;'>星期日","<font style='font-size: 12px;'>星期一","<font style='font-size: 12px;'>星期二","<font style='font-size: 12px;'>星期三","<font style='font-size: 12px;'>星期四","<font style='font-size: 12px;'>星期五","<font style='font-size: 12px;'>星期六"); document.write("<font style='font-size: 12px;'>",today.getFullYear(),"<font style='font-size: 12px;'>年","<font style='font-size: 12px;'>",today.getMonth()+1,"<font style='font-size: 12px;'>月","<font style='font-size: 12px;'>",today.getDate(),"<font style='font-size: 12px;'>日 </font>",d[today.getDay()+1]," ");     
		 //--> 
		</SCRIPT></span></td>
		              <td width="67" height="33">&nbsp;</td>
		              <td width="364" style="font-size: 12px;" valign="middle"><iframe frameborder=0 allowtransparency=true width=360px height=14px marginheight=0 marginwidth=0 scrolling=no src="" style="filter:chroma(color=#ffffff)"></iframe></td>
		              <td width="169" align="right" style="font-size: 12px;"><input type="hidden" name="searchword" /><input type="hidden" name="channelid" value="14242" />站内搜索：</td>
		              <td width="238"><input type="text" name="keyword" id="keyword" style="width:150px;" />&nbsp;<input name="submit" type="submit" id="submit" value="检索" /></td>
		            </tr>
		        </table>
				</form>
				</td>
		    </tr> 
		</table>
	</td>
</tr>
  
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
                                              <td width="241" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="sp1" onMouseMove="sp_change(this)" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=1">项目审批信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right"><table width="98%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td width="241" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="sp2" onMouseMove="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">项目核准信息</a></td>
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
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="jsgl1" onMouseOver="sp_change(this)" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=2">基本信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl2" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">招标投标</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl3" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">征地拆迁</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="left" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl4" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">重大变更设计</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl5" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">施工管理</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl6" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">合同履约</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl7" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">质量安全</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl8" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">资金管理</a></td>
                                            </tr>
                                          </table></td>
                                        <td align="right" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="jsgl9" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">交(竣)验工</a></td>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" id="tdzb1" onMouseOver="sp_change(this)" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=2">土地招标卖挂牌出让信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td width="210"><table width="200" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="tdzb2" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">国有土地使用权出让结果信息</a></td>
                                            </tr>
                                          </table></td>
                                        <td><table width="204" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" id="tdzb3" onMouseOver="sp_change(this)" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">建设用地审批信息</a></td>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
	                                      <tr>
	                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
	                                      </tr>
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
							    
                                <tr>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.xunyang.gov.cn/zhugongkai/gcjslygk/' title="浔阳区" target="_blank" class="STYLE3">&nbsp;&nbsp;浔阳区</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.lsq.gov.cn/SWGK/GcFille/Gc_index.aspx' title="庐山区" target="_blank" class="STYLE3">&nbsp;&nbsp;庐山区</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.jjx.gov.cn/html/cc/cc1/gcjslyxmxxhxyxxgkgxpt/' title="九江县" target="_blank" class="STYLE3">&nbsp;&nbsp;九江县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.dean.gov.cn/web/dean_gcly.asp?ts=10&lm=251|252|254|253|255|256|257' title="德安县" target="_blank" class="STYLE3">&nbsp;&nbsp;德安县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.yongxiu.gov.cn/yxxgcly/' title="永修县" target="_blank" class="STYLE3">&nbsp;&nbsp;永修县</a></td>
								                                  </tr>
								
                                <tr>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.xingzi.gov.cn/xingzi/zhuanti/index.asp?newtype=40F13F' title="星子县" target="_blank" class="STYLE3">&nbsp;&nbsp;星子县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.xiushui.gov.cn/ProjectPublicInfo/index.aspx' title="修水县" target="_blank" class="STYLE3">&nbsp;&nbsp;修水县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.wuning.gov.cn/?list-371.html' title="武宁县" target="_blank" class="STYLE3">&nbsp;&nbsp;武宁县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.ruichang.gov.cn/ztzl/gcjs.asp?types=项目审批公开' title="瑞昌市" target="_blank" class="STYLE3">&nbsp;&nbsp;瑞昌市</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.hukou.gov.cn/gc/index.asp' title="湖口县" target="_blank" class="STYLE3">&nbsp;&nbsp;湖口县</a></td>
								                                  </tr>
								
                                <tr>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.duchang.gov.cn/dcxgcly/' title="都昌县" target="_blank" class="STYLE3">&nbsp;&nbsp;都昌县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.pengze.gov.cn/indexgc.htm' title="彭泽县" target="_blank" class="STYLE3">&nbsp;&nbsp;彭泽县</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.gongqing.gov.cn/sites/gongqing/xmxxgk.jsp' title="共青城市" target="_blank" class="STYLE3">&nbsp;&nbsp;共青城市</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://218.204.68.90:81/Constr/default.html' title="庐山管理局" target="_blank" class="STYLE3">&nbsp;&nbsp;庐山管理局</a></td>
								  
                                  <td height="32" align="left" valign="middle"><a href='http://www.jjkfq.gov.cn/xxgs/' title="九江开发区管委会" target="_blank" class="STYLE3">&nbsp;&nbsp;九江开发区管委会</a></td>
								                                  </tr>
								
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
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008.jpg"/>" onMouseOver="sp_change(this)" id="ky1" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">探矿权审批</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="87" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky2" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">探矿权出让</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="88" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky3" class="STYLE7"><a href="<s:url action="projectchannellist"/>?channelId=2">采矿权审批</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="88" align="right"><table width="85" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="86" height="21" align="center" background="<s:url value="/ewcmssource/front/main-008-2.jpg"/>" onMouseOver="sp_change(this)" id="ky4" class="STYLE2"><a href="<s:url action="projectchannellist"/>?channelId=2">采矿权出让</a></td>
                                      </tr>
                                    </table></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td valign="top"><table style="display:none" id="kycon1" width="350" border="0" align="center" cellpadding="0" cellspacing="0" class="box">
                                <tr>
                                  <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" bgcolor="#EBEBEB" align="center">项目编码</td>
                                  <td align="center" bgcolor="#EBEBEB">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                     <s:iterator value="projectChannel15Articles" status="st">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
                                      </s:iterator>                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:none" id="kycon2" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" bgcolor="#EBEBEB" align="center">项目编码</td>
                                  <td align="center" bgcolor="#EBEBEB">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      <s:iterator value="projectChannel16Articles" status="st">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
                                      </s:iterator>                                     
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:block" id="kycon3" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" bgcolor="#EBEBEB" align="center">项目编码</td>
                                  <td align="center" bgcolor="#EBEBEB">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      
                                     <s:iterator value="projectChannel17Articles" status="st">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
                                      </s:iterator>
                                      
                                      <tr>
                                        <td colspan="4"></td>
                                      </tr>
                              </table>
                              <table style="display:none" id="kycon4" width="350" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#E7E7E7" class="box">
                                <tr>
                                     <!--<td width="40" height="30" bgcolor="#EBEBEB" align="center">序号</td>-->
                                  <td width="106" height="30" bgcolor="#EBEBEB" align="center">项目编码</td>
                                  <td align="center" bgcolor="#EBEBEB">项目名称</td>
                                  <!--<td width="80" bgcolor="#EBEBEB" align="center">发布时间</td>-->
                                      </tr>
                                      <s:iterator value="projectChannel18Articles" status="st">
	                                      <tr>
	                                        <td align="center" class="STYLE1"><s:property value="projectBasic.code"/></td>
	                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="projectdetail"/>?articleId=<s:property value="id"/>' title="<s:property value="projectBasic.name"/>" target="_blank" class="STYLE3"><s:property value="projectBasic.name"/></a></td>
	                                      </tr>
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
                                        <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-009.jpg"/>" id="cydw1" onMouseOver="ry_change(this)" class="STYLE7"><a href="<s:url action="enterprisechannellist"/>?channelId=1">从业单位良好行为记录信息</a></td>
                                      </tr>
                                    </table></td>
                                  <td width="172" align="right"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td height="21" align="center" background="<s:url value="/ewcmssource/front/main-009-2.jpg"/>" class="STYLE2" id="cydw2" onMouseOver="ry_change(this)"><a href="<s:url action="enterprisechannellist"/>?channelId=2">从业单位不良行为记录信息</a></td>
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
                                     <s:iterator value="lhxwjlxxEnterprises" status="st">
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="enterprisedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="enterpriseBasic.name"/>" target="_blank" class="STYLE3"><s:property value="enterpriseBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
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
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="enterprisedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="enterpriseBasic.name"/>" target="_blank" class="STYLE3"><s:property value="enterpriseBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
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
                                                    <td height="29" align="center" background="<s:url value="/ewcmssource/front/main-009.jpg"/>" id="ry1" onMouseOver="ry_change(this)" class="STYLE7"><a href="<s:url action="employechannellist"/>?channelId=1">人员基本信息</a></td>
                                                  </tr>
                                                </table></td>
                                              <td width="172" align="right"><table width="172" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="29" align="center" background="<s:url value="/ewcmssource/front/main-009-2.jpg"/>" class="STYLE2" id="ry2" onMouseOver="ry_change(this)"><a href="<s:url action="employechannellist"/>?channelId=2">执业资格信息 </a></td>
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
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="employedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="employeBasic.name"/>" target="_blank" class="STYLE3"><s:property value="employeBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
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
                                      <tr>
                                        <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                        <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="employedetail"/>?articleId=<s:property value="id"/>' title="<s:property value="employeBasic.name"/>" target="_blank" class="STYLE3"><s:property value="employeBasic.name"/></a></td>
                                        <td align="center" class="STYLE1"><s:property value="%{getText('global.date',{published})}"/>&nbsp;</td>
                                      </tr>
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
	          <td width="496" align="right" valign="bottom"><a href="http://gc.cio360.org/index.html" target="_blank"><img src="<s:url value="/ewcmssource/front/20111223_1.jpg"/>" width="348" height="30" border="0" /></a></td>
	          <td width="366" align="right" valign="bottom"><a href="http://xxgk.jiangxi.gov.cn/gcly/" target="_blank"><img src="<s:url value="/ewcmssource/front/20111223_2.jpg"/>" width="360" height="30" border="0" /></a></td>	
	      </tr></table>
	 </td>
	    </tr>
	        <tr>
	          <td colspan="3" valign="top" background="<s:url value="/ewcmssource/front/main-15-05.jpg"/>" style="border:#CCCCCC 1px solid"><table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
	                                
	                                <tr>
					
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/1470/index_115.htm' target="_blank" class="STYLE3">公路管理局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/229/index_115.htm' target="_blank" class="STYLE3">市房管局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.188/bmgkxx/jjrmyh/' target="_blank" class="STYLE3">人行九江中心支行</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/temp/index2.asp' target="_blank" class="STYLE3">市国税局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.164:8080/Kxfz/Kxfz.asp' target="_blank" class="STYLE3">市法制办</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/221/index_115.htm' target="_blank" class="STYLE3">市安监局</a></td>
									                                  </tr>
									
	                                <tr>
					
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://www.jjgs.gov.cn/' target="_blank" class="STYLE3">市工商局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/temp/index1.asp' target="_blank" class="STYLE3">市地税局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/220/index_115.htm' target="_blank" class="STYLE3">市环保局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/1466/index_115.htm' target="_blank" class="STYLE3">市交通运输局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://www.jjjcy.gov.cn/c31.aspx' target="_blank" class="STYLE3">市检察院</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/1469/index_115.htm' target="_blank" class="STYLE3">市建设规划局</a></td>
									                                  </tr>
									
	                                <tr>
					
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.170/jjswj/web/jj_more.asp?lm2=143' target="_blank" class="STYLE3">市商务局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://www.jjslj.gov.cn/zlnews.aspx?classid=80' target="_blank" class="STYLE3">市水利局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/219/index_115.htm' target="_blank" class="STYLE3">市国土局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://www.jjf.gov.cn/caizhenju/zhuanti/ziye.asp?nid=9&newtype=18F10F' target="_blank" class="STYLE3">市财政局</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://218.65.3.189/dwfllm/215/216/index_115.htm' target="_blank" class="STYLE3">市发改委</a></td>
									  
	                                  <td width="13%" height="30" align="left" valign="middle"><a href='http://www.jjciit.gov.cn/gcly/' target="_blank" class="STYLE3">市工信委</a></td>
									                                  </tr>
									                               
	                                <tr>
	                                  <td align="center" valign="middle" colspan="6"></td>
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
