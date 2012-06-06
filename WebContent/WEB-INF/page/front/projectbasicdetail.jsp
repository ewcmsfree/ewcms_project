<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目审批公开信息</title>
<s:include value="/header.jsp"/>
   <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td style="font-size:15px" height="30px" valign="middle"><strong>项目审批公开信息</strong> </td>
        </tr>
        <tr>
          <td width="100" height="5px" bgcolor="#2F8DBB"></td>
        </tr>
        <tr>
          <td valign="top" align="center"><table cellpadding="0" cellspacing="0" width="80%" border="0">
              <tr>
                <td height="40px" class="fenlei">项目基本信息</td>
              </tr>
              <tr>
                <td><table cellpadding="0" cellspacing="0" border="0" width="100%" class="box2">
                    <tr>
                      <td width="10%" align="center" height="30px">项目编码</td>
                      <td align="left">&nbsp;&nbsp;<s:property value="pbVO.code"/></td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">项目名称</td>
                      <td align="left">&nbsp;&nbsp;<s:property value="pbVO.name"/></td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">建设时间</td>
                      <td align="left">&nbsp;&nbsp;
                      <script type="text/javascript">
                      var jsrq = "<s:property value="%{getText('global.date',{pbVO.buildTime})}"/>";    
                      if(jsrq!="null"){
                    	  document.write(jsrq);
                      }
                      </script>
                      
                      </td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">发布时间</td>
                      <td align="left">&nbsp;&nbsp;
                      <script type="text/javascript">
                      var fbsj = "<s:property value="%{getText('global.date',{pbVO.published})}"/>";    
                      if(fbsj!="null"){
                    	  document.write(fbsj);
                      }
                      </script>               
                      </td>
                    </tr>
					
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
		  <td width="100%" height="10px"></td>
		</tr>
		<tr id="">
          <td valign="top" align="center"><table cellpadding="0" cellspacing="0" width="80%" border="0">
           <s:iterator value="projectArticleList">
              <tr>
                <td height="40px" class="fenlei"><s:property value="channelVO.channelName"/></td>
              </tr>
               
              <tr>
                <td><table cellpadding="0" cellspacing="0" border="1" width="100%" class="box">
                    <tr>
                      <td align="left" height="100px" valign="top" id="articlecontent">
                    
                      		<s:property value="projectArticle.content.detail" escape="false"/>
							<br><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      		——<s:property value="projectArticle.organ.name" escape="false"/> 
                      <script type="text/javascript">
	                      var fbsj = "<s:property value="%{getText('global.date',{projectArticle.published})}"/>";    
	                      if(fbsj!="null"){
	                    	  document.write(fbsj);
	                      }
                      </script> 
                      </td >
                       
                    </tr>
                   
                  </table></td>
              </tr>
               </s:iterator>
			  <tr><td width="100%" height="10px"></td></tr>
            </table></td>
        </tr>	        
     </table>
     </td>
    </tr>
    <tr>
	   <td width="100" height="1px" colspan="3" bgcolor="#FFFFFF"></td>
	</tr>
<s:include value="/footer.jsp"/>
</table>

</body>
</html>