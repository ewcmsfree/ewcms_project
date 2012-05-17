<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>机构介绍</title>	
		<s:include value="../../taglibs.jsp"/>
		<script type="text/javascript"> 
	    	$(function() {
		        <s:include value="../../alertMessage.jsp"/>
	    	});
		</script>
	</head>
	<body>
		<s:form action="saveIntroduce" namespace="/site/organ">
			<table class="formtable" align="center">
				<tr>
					<td>机构编号：</td>
					<td width="80%">
						<s:textfield name="organVo.id" readonly="true" cssClass="inputdisabled" />
					</td>
				</tr>
				<tr>
					<td>地址：</td>
					<td>
						<s:textfield name="organVo.organInfo.address" cssClass="inputtext" />
					</td>
				</tr>
				<tr>
					<td>邮编：</td>
					<td>
						<s:textfield name="organVo.organInfo.postCode" cssClass="inputtext" />
					</td>
				</tr>
				<tr>
					<td>交通方式：</td>
					<td>
						<s:textfield name="organVo.organInfo.tranWay" cssClass="inputtext" />
					</td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td>
						<s:textfield name="organVo.organInfo.tel" cssClass="inputtext" />
					</td>
				</tr>	
				<tr>
					<td>上班时间：</td>
					<td>
						<s:textfield name="organVo.organInfo.serviceTime" cssClass="inputtext" />
					</td>
				</tr>																							
				<tr>
					<td>机构介绍：</td>
					<td>
						<s:textarea name="organVo.organInfo.introduce" style="width:222px;height:60px" cssClass="inputtext"></s:textarea>			
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
			<s:hidden name="organVo.organInfo.id"/>
		</s:form>						
	</body>
</html>