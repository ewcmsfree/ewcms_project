<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信用信息公开</title>
<s:include value="/header.jsp"/>
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <s:include value="/channellist.jsp"/>
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
                                <td background="<s:url value="/ewcmssource/front/main-07-3.jpg"/>" align="center" style="padding-left:10px; padding-right:10px"><span class="STYLE4">企业基本信息</span></td>
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
                                      <td width="150" align="center"><span class="STYLE4">营业执照注册号</span></td>
                                      <td align="center"><span class="STYLE4">企业名称</span></td>
                                      <td width="100" align="center"><span class="STYLE4">发布日期</span></td>
                                    </tr>
									<s:iterator value="enterpriseBasicList" status="st">
									<s:if test="#st.index>=(page.page-1)*20&&#st.index<page.page*20">
                                    <tr>
                                      <td align="center" class="STYLE1" height="24px"><s:property value='#st.index+1'/></td>
                                      <td align="center" class="STYLE1"><s:property value="yyzzzch"/></td>
                                      <td align="left" class="STYLE1">&nbsp;<a href=' <s:url action="enterprisebasicdetail"/>?codeId=<s:property value="yyzzzch"/>'  target="_blank" class="STYLE3"><s:property value="name"/></a></td>
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
                                                            <s:url action="enterprisebasiclist" id="pageUrl" escapeAmp="false">
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
                                                                <s:url action="enterprisebasiclist" id="pageUrl" escapeAmp="false">
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
                                                            <s:url action="enterprisebasiclist" id="pageUrl" escapeAmp="false">
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
<s:include value="/footer.jsp"/>
</table>
</body>
<script language="javascript">
function jumpPage(obj){
    var page = obj.options[obj.selectedIndex].text -1 ;
    window.location = ' <s:url action="enterprisebasiclist"/>?type=<s:property value="type"/>&pageNumber=' + page ;
}
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