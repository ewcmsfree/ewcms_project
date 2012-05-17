<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="ewcms" uri="/ewcms-tags"%>

<html>
	<head>
		<title>企业文章信息</title>
		<s:include value="../../taglibs.jsp"/>
		<link rel="stylesheet" type="text/css" href="<s:url value='/ewcmssource/page/document/article.css'/>"></link>
		<script type="text/javascript" src="<s:url value='/ewcmssource/tiny_mce/tiny_mce_gzip.js'/>"></script>
		<script type="text/javascript" src="<s:url value='/ewcmssource/tiny_mce/config_gzip.js'/>"></script>
		<script type="text/javascript" src="<s:url value='/ewcmssource/tiny_mce/config_particular.js'/>"></script>
        <script type="text/javascript">
        $(function(){
            <s:include value="../../alertMessage.jsp"/>
            
            $('#cc_publishingSector').combobox({
        		url: '<s:url namespace="/particular/ps" action="findPsToEa"><s:param name="enterpriseArticleId" value="enterpriseArticleVo.id"></s:param></s:url>',
        		valueField:'id',
                textField:'text',
        		editable:false,
        		multiple:false,
        		cascadeCheck:false,
        		panelWidth:120
            });
            
            $('#cc_enterpriseBasic').combogrid({
				panelWidth:850,
				value:'<s:property value="enterpriseArticleVo.enterpriseBasic.yyzzzch"/>',
				idField:'yyzzzch',
				textField:'name',
				url:'<s:url namespace="/particular/ea" action="findEbAll"/>',
				columns:[[
						{field:'id',title:'编号',hidden:true},
						{field:'yyzzzch',title:'营业执照注册号',width:150,sortable:true},
		                {field:'name',title:'企业名称',width:200},
		                {field:'published',title:'发布时间',width:85},
		                {field:'yyzzdjjg',title:'营业执照登记机关',width:200},
		                {field:'frdb',title:'法人代表',width:300},
		                {field:'clrq',title:'成立日期',width:200},
		                {field:'jyfw',title:'经营范围',width:60},
		                {field:'zzjgdjjg',title:'组织机构登记机关',width:100},
		                {field:'zzjgdm',title:'组织机构代码',width:200},
		                {field:'qyrx',title:'企业类型',width:80,},
		                {field:'zzzb',title:'注册资本',width:80},
		                {field:'sjzzzb',title:'实缴注册资本',width:80},
		                {field:'jyqx',title:'经营期限',width:120},
		                {field:'zs',title:'住所',width:120},
		                {field:'denseDescription',title:'所属密级',width:100}
				]],
				onClickRow : function(rowIndex, rowData){
					$('#enterpriseBasic_yyzzch').html(rowData.yyzzzch);
				}
			});
        	var height = $(window).height() - $("#inputBarTable").height() - 10;
        	var width = $(window).width() - 30*2;
        	$("div #_DivContainer").css("height",height + "px");
        	try{
        		if (tinyMCE.getInstanceById('_Content_1') != null){
        			tinyMCE.getInstanceById('_Content_1').theme.resizeTo(width,(height - 110));
        		}else{
        			$("#_Content_1").css("width", (width + 2) + "px");
        			$("#_Content_1").css("height", (height - 42) + "px");
        		}
        	}catch(errRes){
        	}
       });
        </script>
        <ewcms:datepickerhead></ewcms:datepickerhead>		
	</head>
	<body>
		<s:form action="save" namespace="/particular/ea">
			<div id="wrapper" >
			<table id="inputBarTable" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F6F9FD" style="border: #B7D8ED 1px solid;" class="formtable">
				<tr>
					<td width="10%">企业名称：</td>
					<td width="40%">
						<input id="cc_enterpriseBasic" name="enterpriseArticleVo.enterpriseBasic.yyzzzch" style="width:150px;" size="20"></input>
						(<span id="enterpriseBasic_yyzzch"><s:property value="enterpriseArticleVo.enterpriseBasic.yyzzzch"/></span>)
					</td>
					<td width="10%">发布部门：</td>
					<td width="40">
						<input id="cc_publishingSector" name="enterpriseArticleVo.publishingSector.code" style="width: 120px;"></input>
					</td>
				</tr>
				<tr>
					<td>发布日期：</td>
					<td>
						<ewcms:datepicker id="published" name="enterpriseArticleVo.published" option="inputsimple" format="yyyy-MM-dd HH:mm:ss"/>
					</td>
					<td>所属密级：</td>
					<td>
						<s:select list="@com.ewcms.content.particular.model.Dense@values()" listValue="description" name="enterpriseArticleVo.dense" id="enterpriseArticleVo_dense" headerKey="" headerValue="----请选择----"></s:select>
					</td>
				</tr>
			</table>
			
			<table id="table_content" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F6F9FD" style="border: #B7D8ED 1px solid;border-collapse:collapse">
				<tr>
					<td valign='top'>
						<div id="_DivContainer" style="text-align: center; overflow: auto; height: 476px; width: 100%; background-color: #666666; position: relative">
			  				<table id="_Table1" width="800" border="0" cellpadding="10" bgcolor="#FFFFFF" style="margin: 5px auto;">
			  					<tr>
			  						<td valign="top">
			  							<div id="DivContent">
			  								<table id="tableContent" width="100%" height="100%" cellpadding="0" cellspacing="0">
												<tr id="trContent_1">
													<td>
														<textarea id="_Content_1" class="mceEditor" name="enterpriseArticleVo.content.detail">
														    <s:property value="enterpriseArticleVo.content.detail" escape="false"/>
														</textarea>
													</td>
												</tr>
											</table>
			  							</div>
			  						</td>
			  					</tr>
			  				</table>
			  			</div>
			  		</td>
				</tr>
			</table>
			</div>
			<s:hidden id="enterpriseArticleId" name="enterpriseArticleVo.id"/>
			<s:hidden id="particularContentId" name="enterpriseArticleVo.content.id"/>
           	<s:iterator value="selections" var="id">
               <s:hidden name="selections" value="%{id}"/>
            </s:iterator>			
		</s:form>
	</body>
</html>