<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
	<head>
		<title>问卷调查主题列表</title>	
		<s:include value="../../../taglibs.jsp"/>
		<script type="text/javascript">
			$(function(){
				ewcmsBOBJ = new EwcmsBase();
				ewcmsBOBJ.setQueryURL('<s:url namespace="/vote/subjectitem" action="query"/>?subjectId=' + $('#subjectId').val() + '');

				ewcmsBOBJ.addToolItem('上移','icon-up',upOperate);
				ewcmsBOBJ.addToolItem('下移','icon-down',downOperate);

				ewcmsBOBJ.setWinWidth(500);
				ewcmsBOBJ.setWinHeight(200);
				
				ewcmsBOBJ.openDataGrid('#tt_item',{
                    columns:[[
                              {field:'id',title:'编号',width:60},
                              {field:'title',title:'选项名称',width:500},
                              {field:'statusDescription',title:'选择方式',width:100},
                              {field:'voteNumber',title:'票数',width:60}
                      ]]
				});

				ewcmsOOBJ = new EwcmsOperate();
				ewcmsOOBJ.setDatagridID('#tt_item');
				ewcmsOOBJ.setQueryURL(ewcmsBOBJ.getQueryURL());
				ewcmsOOBJ.setInputURL('<s:url namespace="/vote/subjectitem" action="input"/>?subjectId=' + $('#subjectId').val() + '');
				ewcmsOOBJ.setDeleteURL('<s:url namespace="/vote/subjectitem" action="delete"/>?subjectId=' + $('#subjectId').val() + '');
			});
			function upOperate(){
				var rows = $('#tt_item').datagrid('getSelections');
				if(rows.length == 0){
	            	$.messager.alert('提示','请选择问卷调查主题列表记录','info');
	                return;
	            }
	            if (rows.length > 1){
					$.messager.alert('提示','只能选择一个问卷调查主题列表记录','info');
					return;
		        }
		        var url = '<s:url namespace="/vote/subjectitem" action="up"/>';
		        var parameter = 'subjectId=' + $('#subjectId').val() + '&selections=' + rows[0].id + '';
	            $.post(url,parameter,function(data){
					if (data == "false"){
						$.messager.alert("提示","上移失败","info");
						return;
					}else if (data == "false-system"){
						$.messager.alert("提示","系统错误","info");
						return;
					}
					$("#tt_item").datagrid('reload');
		            
	            });
	            return false;
			}
			function downOperate(){
				var rows = $('#tt_item').datagrid('getSelections');
				if(rows.length == 0){
	            	$.messager.alert('提示','请选择问卷调查主题列表记录','info');
	                return;
	            }
	            if (rows.length > 1){
					$.messager.alert('提示','只能选择一个问卷调查主题列表记录','info');
					return;
		        }
		        var url = '<s:url namespace="/vote/subjectitem" action="down"/>';
		        var parameter = 'subjectId=' + $('#subjectId').val() + '&selections=' + rows[0].id + '';
	            $.post(url,parameter,function(data){
					if (data == "false"){
						$.messager.alert("提示","下移失败","info");
						return;
					}else if (data == "false-system"){
						$.messager.alert("提示","系统错误","info");
						return;
					}
					$("#tt_item").datagrid('reload');
	            });
	            return false;
			}
			function queryOperate(){
				$('#tt_item').datagrid('clearSelections');
				queryCallBack();
			}
		</script>
	</head>
	<body class="easyui-layout">
	    <div region="center" style="padding:2px;" split="true">  
			<table id="tt_item" fit="true" split="true"></table>
	    </div>
        <div id="edit-window" class="easyui-window" closed="true" icon="icon-winedit" title="&nbsp;问卷调查主题列表" style="display:none;">
            <div class="easyui-layout" fit="true">
                <div region="center" border="false">
                   <iframe id="editifr"  name="editifr" class="editifr" frameborder="0" onload="iframeFitHeight(this);" scrolling="no"></iframe>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                	<a class="easyui-linkbutton" icon="icon-save" href="javascript:void(0)" onclick="saveOperator()">保存</a>
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
                            <td class="tdtitle">编号：</td>
                            <td class="tdinput">
                                <input type="text" id="id" name="id" class="inputtext"/>
                            </td>
                            <td class="tdtitle">选项名称：</td>
                            <td class="tdinput">
                                <input type="text" id="title" name="title" class="inputtext"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdtitle">选择方式：</td>
                            <td class="tdinput">
                                <s:select list="@com.ewcms.plugin.vote.model.SubjectItem$Status@values()" listValue="description" name="status" id="status" headerKey="-1" headerValue="------请选择------"></s:select>
                            </td>
                        	<td class="tdtitle">票数：</td>
                            <td class="tdinput">
                            	<table cellpadding="0" border="0">
                            		<tr>
                            			<td style="border:0px;">
                            				<input type="text" id="voteNumberBegin" name="voteNumberBegin" class="inputtext" size="7"/>
                            			</td>
			                            <td style="border:0px;">到</td>
			                            <td style="border:0px;">
			                            	<input type="text" id="voteNumberEnd" name="voteNumberEnd" class="inputtext" size="7"/>
			                            </td>
			                           </tr>
                            	</table>
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
        <s:hidden id="subjectId" name="subjectId"/>
	</body>
</html>