<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>模板信息</title>			
		<s:include value="../../taglibs.jsp"/>
		<script type="text/javascript"> 
	    	$(function() {
		        <s:include value="../../alertMessage.jsp"/>
	    	});
		</script>
	</head>
	<body>
		<s:form action="saveInfo" namespace="/site/template" enctype="multipart/form-data">	
			<table class="formtable" align="center">
				<tr>
					<td >模板路径：</td>
					<td >
						<s:textfield name="templateVo.path" readonly="true" cssClass="inputdisabled" size="60"/>
					</td>
				</tr>						
				<tr>
					<td >模板名称：</td>
					<td >
						<s:textfield name="templateVo.name" readonly="true" cssClass="inputdisabled" size="60"/>
					</td>
				</tr>
				<tr>
					<td>模板文件：</td>
					<td class="formFieldError" width="80%">
						<s:file name="templateFile" cssClass="inputtext" size="60"/>
						<s:fielderror><s:param value="%{'templateFile'}" /></s:fielderror>
					</td>
				</tr>								
				<tr>
					<td>模板说明：</td>
					<td>
						<s:textfield name="templateVo.describe" cssClass="inputtext" size="60"/>
					</td>
				</tr>	
				<tr>
					<td colspan="2" style="padding:0;">
						<div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
						   <a class="easyui-linkbutton" icon="icon-save" href="javascript:document.forms[0].submit();">保存</a>
						   <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:document.forms[0].reset();">重置</a>
						</div>								
					</td>
				</tr>																							
			</table>
			<s:hidden name="templateVo.id"/>
		</s:form>
	</body>
</html>