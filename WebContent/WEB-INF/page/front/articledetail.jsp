<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="channelVO.channelName"/></title>
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
.STYLE4 {
	font-size: 14px;
	font-weight: bold;
	color: #AC0000;
}
.STYLE5 {color: #FFFFFF;}
.STYLE6 {font-size: 12px; color: #FFFFFF; }
.STYLE7 {font-size: 13px}
.STYLE10 {color: #CC0000; font-size: 12px;}
.STYLE17 {font-size: 13px}
-->
</style>
</head>
<body>
<s:include value="/header.jsp"/>
   <tr>
    <td valign="top" bgcolor="#FFFFFF">
<table align="center" border="0" cellpadding="0" cellspacing="0" width="90%">
      <tbody><tr>
        <td style="border:#CCCCCC 1px solid" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" width="983">
          <tbody><tr>
            <td height="33" align="center" background="<s:url value="/ewcmssource/front/2-main-01.jpg"/>"><span class="STYLE5"><strong><s:property value="articlemainVo.article.title"/></strong></span></td>
          </tr>
          <tr>
            <td height="39" valign="bottom"><table align="center" border="0" cellpadding="0" cellspacing="0" width="950">
              <tbody><tr>
                <td class="STYLE1" align="center" background="t20120424_676385_files/2-main-02.jpg" height="39">来源：<s:property value="articlemainVo.article.origin"/>&nbsp;&nbsp;作者：<s:property value="articlemainVo.article.author"/>&nbsp;&nbsp;时间：<s:property value="articlemainVo.article.published"/>&nbsp;&nbsp;</td>
              </tr>
            </tbody></table></td>
          </tr>
          <tr><td height="10px" width="100%"></td></tr>
          <tr>
            <td align="center" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" width="963">
              <tbody><tr><td class="STYLE17" align="left"><p align="center">
<s:property value="articlemainVo.article.content.detail" escape="false"/>
</p></td></tr>
			</tbody></table></td>
          </tr>
        </tbody></table></td>
      </tr>
    </tbody></table></td></tr>
	<s:include value="/footer.jsp"/>
</table>

</body>
</html>