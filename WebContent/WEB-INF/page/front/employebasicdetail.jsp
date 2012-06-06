<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信用信息公开</title>
<s:include value="/header.jsp"/>
   <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td style="font-size:15px" height="30px" valign="middle"><strong>信用信息公开</strong> </td>
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
                      <td width="10%" align="center" height="30px">信息编号</td>
                      <td align="left">&nbsp;&nbsp;<s:property value="ebVO.id"/></td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">人员名称</td>
                      <td align="left">&nbsp;&nbsp;<s:property value="ebVO.name"/></td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">性别</td>
                      <td align="left">&nbsp;&nbsp;
                      <script type="text/javascript">
                      	if("<s:property value="ebVO.sex"/>"=='MALE'){
                      		document.write("男");
                      	}else{
                      		document.write("女");
                      	}
                      </script>
                      
                      
                      </td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">证件类型</td>
                      <td align="left">&nbsp;&nbsp;
                       <script type="text/javascript">
                       	var cardType="<s:property value="ebVO.cardType"/>";
                      	if(cardType=='RESIDENT'){
                      		document.write("身份证");
                      	}
                      	if(cardType=='DRIVE'){
                      		document.write("驾驶证");
                      	}
                      	if(cardType=='JINGGUAN'){
                      		document.write("警官证");
                      	}
                      	if(cardType=='OFFICER'){
                      		document.write("军官证");
                      	}
                      	if(cardType=='OTHER'){
                      		document.write("其他证件");
                      	}
                      </script>
                      
                      
                      </td>
                    </tr>
					<tr>
                      <td width="10%" align="center" height="30px">证件号码</td>
                      <td align="left">&nbsp;&nbsp;<s:property value="ebVO.cardCode"/></td>
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
           <s:iterator value="employeArticleList">
              <tr>
                <td height="40px" class="fenlei"><s:property value="channelVO.channelName"/></td>
              </tr>
               
              <tr>
                <td><table cellpadding="0" cellspacing="0" border="1" width="100%" class="box">
                    <tr>
                      <td align="left" height="100px" valign="top" id="articlecontent">
                    
                      		<s:property value="employeArticle.content.detail" escape="false"/>
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
                      		——<s:property value="employeArticle.organ.name" escape="false"/> 
                      <script type="text/javascript">
	                      var fbsj = "<s:property value="%{getText('global.date',{employeArticle.published})}"/>";    
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