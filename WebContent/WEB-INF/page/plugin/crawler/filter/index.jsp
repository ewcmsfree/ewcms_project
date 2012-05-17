<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
	<head>
		<title>过滤块</title>	
		<s:include value="../../../taglibs.jsp"/>
		<script type="text/javascript" src='<s:url value="/ewcmssource/page/crawler/block.js"/>'></script>
		<script type="text/javascript">
			queryURL = '<s:url namespace="/crawler/filter" action="query"><s:param name="gatherId" value="%{gatherId}"/></s:url>';
			inputURL = '<s:url namespace="/crawler/filter" action="input"><s:param name="gatherId" value="%{gatherId}"/></s:url>';
			deleteURL = '<s:url namespace="/crawler/filter" action="delete"><s:param name="gatherId" value="%{gatherId}"/></s:url>';
			upURL = '<s:url namespace="/crawler/filter" action="up"><s:param name="gatherId" value="%{gatherId}"/></s:url>';
			downURL = '<s:url namespace="/crawler/filter" action="down"><s:param name="gatherId" value="%{gatherId}"/></s:url>';
		</script>		
	</head>
	<body class="easyui-layout">
		<div region="center" style="padding:2px;" border="false">
	 		<table id="tt" fit="true"></table>	
	 	</div>
        <div id="edit-window" class="easyui-window" closed="true" icon="icon-winedit" title="&nbsp;内容过滤属性" style="display:none;">
            <div class="easyui-layout" fit="true">
                <div region="center" border="false">
                   <iframe id="editifr"  name="editifr" class="editifr" frameborder="0" onload="iframeFitHeight(this);" scrolling="no"></iframe>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                    <a class="easyui-linkbutton" icon="icon-save" href="javascript:void(0)" onclick="saveBlockOperate()">保存</a>
                    <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="javascript:$('#edit-window').window('close');">取消</a>
                </div>
            </div>
        </div>	
        <div id="query-window" class="easyui-window" closed="true" icon='icon-search' title="查询"  style="display:none;">
            <div class="easyui-layout" fit="true"  >
                <div region="center" border="false" >
                <form id="queryform">
                	<table class="formtable">
                            <tr>
                                <td class="tdtitle">表达式：</td>
                                <td class="tdinput">
                                    <input type="text" id="regex" name="regex" class="inputtext"/>
                                </td>
                            </tr>
               		</table>
               	</form>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                    <a class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="querySearch('');">查询</a>
                    <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="javascript:$('#query-window').window('close');">取消</a>
                </div>
            </div>
        </div>
        <s:hidden id="gatherId" name="gatherId"/>      	
	</body>
</html>