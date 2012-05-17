<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
	<head>
		<title>调查投票</title>
		<s:include value="../../../taglibs.jsp"/>
        <script type="text/javascript">
	    	$(function() {
		        <s:include value="../../../alertMessage.jsp"/>
	    	});
        </script>
	</head>
	<body>
		<s:form action="save" namespace="/vote/subjectitem">
			<table class="formtable" >
				<tr>
					<td width="17%" height="21px;">选项名称：</td>
					<td width="83%" height="21px" class="formFieldError">
						<s:textfield id="title" cssClass="inputtext" name="subjectItemVo.title"/>
						<s:fielderror ><s:param value="%{'subjectItemVo.title'}" /></s:fielderror>&nbsp;&nbsp;<label style="color: red;">*</label>
					</td>
				</tr>
				<tr>
					<td>选项方式：</td>
					<td>
						<s:radio list="@com.ewcms.plugin.vote.model.SubjectItem$Status@values()" listValue="description" name="subjectItemVo.status" id="subjectItemVo_status"></s:radio>
					</td>
				</tr>
				<tr>
					<td>票数：</td>
					<td class="formFieldError">
						<s:textfield id="title" cssClass="inputtext" name="subjectItemVo.voteNumber" maxlength="10"/>
						<s:fielderror ><s:param value="%{'subjectItemVo.voteNumber'}" /></s:fielderror>
					</td>
				</tr>
			</table>
			<s:hidden name="subjectItemVo.id"/>
			<s:hidden name="subjectItemVo.sort"/>
			<s:hidden name="subjectId"/>
            <s:iterator value="selections" var="id">
                <s:hidden name="selections" value="%{id}"/>
            </s:iterator>			
		</s:form>
	</body>
</html>