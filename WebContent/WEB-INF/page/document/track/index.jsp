<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
	<head>
		<title>操作明细</title>
		<s:include value="../../taglibs.jsp"/>
		<script type="text/javascript">
			$(function(){
				$('#tt_track').datagrid({
					singleSelect:true,
					rownumbers:true,
					nowrap:false,
					pagination:true,
					url : '<s:url namespace="/document/track" action="query"><s:param name="articleMainId" value="articleMainId"></s:param></s:url>',
					columns:[[
						{field:'userRealName',title:'操作员',width:100},
						{field:'statusDesc',title:'上次状态',width:60},
						{field:'operateTime',title:'操作时间',width:145},
						{field:'description', title:'描述', width:600,
							formatter : function(val, rec) {
								var reason = '&nbsp;&nbsp;';
								if (rec.reason != null && rec.reason.length > 0){
									var url = parent.reasonURL + '?trackId=' + rec.id;
									reason += '<a href="#" onclick="parent.showReason(\'' + url + '\');">原因</a>';
								}
								return val + reason; 
							}
						}
					]]
				});
				var pager = $('#tt_track').datagrid('getPager');
				pager.pagination({
					showPageList:false
				});
			})
		</script>
	</head>
	<body class="easyui-layout">
		<div region="center" style="padding:2px;" border="false">
			<table id="tt_track" fit="true"></table>
		</div>
	</body>
</html>