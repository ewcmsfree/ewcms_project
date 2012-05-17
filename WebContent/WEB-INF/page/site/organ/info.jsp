<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>机构信息</title>	
		<s:include value="../../taglibs.jsp"/>
		<script type="text/javascript"> 
	    	$(function() {
		        <s:include value="../../alertMessage.jsp"/>
	    	});
		</script>
	</head>
	<body>
		<s:form action="saveInfo" namespace="/site/organ" method="post" enctype="multipart/form-data">
			<table class="formtable" align="center">
				<tr>
					<td>机构编号：</td>
					<td width="80%">
						<s:textfield name="organVo.id" readonly="true" cssClass="inputdisabled" />
					</td>
				</tr>
				<tr>
					<td>机构名称：</td>
					<td>
						<s:textfield name="organVo.name" readonly="true" cssClass="inputdisabled" />
					</td>
				</tr>
				<tr>
					<td>创建时间：</td>
					<td>
						<s:textfield name="organVo.createTime" readonly="true" cssClass="inputdisabled" />
					</td>
				</tr>
				<tr>
					<td>修改时间：</td>
					<td>
						<s:textfield name="organVo.updateTime" readonly="true" cssClass="inputdisabled" />
					</td>
				</tr>												
				<tr>
					<td>机构引导图：</td>
					<td>
						<s:file name="iconFile" cssClass="inputtext" size="50"/>				
					</td>				
				</tr>	
				<tr>
					<td>机构描述：</td>
					<td>
						<s:textarea name="organVo.descripe" style="width:222px;height:60px" cssClass="inputtext"></s:textarea>			
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
		</s:form>						
	</body>
</html>