<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="ewcms" uri="/ewcms-tags"%>

<html>
	<head>
		<title>收件箱</title>	
		<s:include value="../../taglibs.jsp"/>
		<ewcms:datepickerhead></ewcms:datepickerhead>
		<script type="text/javascript">
			$(function(){
				ewcmsBOBJ = new EwcmsBase();
				ewcmsBOBJ.setQueryURL('<s:url namespace="/message/receive" action="query"/>');
				
				ewcmsBOBJ.delToolItem('新增');
				ewcmsBOBJ.delToolItem('修改');
				ewcmsBOBJ.delToolItem('删除');
				ewcmsBOBJ.delToolItem('查询');
				ewcmsBOBJ.delToolItem('缺省查询');
				
				ewcmsBOBJ.addToolItem('标记为','icon-markread', null, 'btnMark');
				ewcmsBOBJ.addToolItem('删除', 'icon-remove', delCallBack, 'btnRemove');
				ewcmsBOBJ.addToolItem('查询', 'icon-search', queryCallBack, 'btnSearch');
				ewcmsBOBJ.addToolItem('缺省查询', 'icon-back', initOperateQuery, 'btnBack');
				
				ewcmsBOBJ.openDataGrid('#tt',{
					singleSelect : true,
	                columns:[[
							 {field:'id',title:'编号',width:60},
							 {field:'userName',title:'用户',hidden:true},
							 {field:'read',title:'标记 ',width:32,
			                	 formatter : function(val, rec) {
				                	if (val){
				                	  return "&nbsp;<img src='../../ewcmssource/image/msg/msg_read.gif' width='13px' height='13px' title='接收消息，已读'/>";
				                	}else{
				                	  return "&nbsp;<img src='../../ewcmssource/image/msg/msg_unread.gif' width='13px' height='13px' title='接收消息，未读'/>";
				                	}
			                	 }
			                 },
							 {field:'title',title:'标题',width:800,
			                	 formatter : function(val, rec){
			                		 return '<a href="javascript:void(0);" onclick="parent.showRecord(' + rec.id + ')" onfocus="this.blur();">' + rec.msgContent.title + '</a>';
			                	 }
			                 },
			                 {field:'readTime',title:'读取时间',width:145},
			                 {field:'subscription',title:'订阅',width:32,
			                	 formatter : function(val, rec) {
					                if (val){
					                  return "&nbsp;<img src='../../ewcmssource/theme/icons/ok.png' width='13px' height='13px'/>";
					                }else{
					                  return "";
					                }
				                }
			                 },
			                 {field:'sendUserName',title:'发送用户',width:80}
	                  ]]
				});
	
				ewcmsOOBJ = new EwcmsOperate();
				ewcmsOOBJ.setQueryURL(ewcmsBOBJ.getQueryURL());
				ewcmsOOBJ.setDeleteURL('<s:url namespace="/message/receive" action="delete"></s:url>');
				initSubMenu();
			});
			function initOperateQuery(){
				defQueryCallBack();
				initSubMenu();
			}
			function initSubMenu() {
				$('#btnMark .l-btn-left').attr('class', 'easyui-linkbutton').menubutton({menu : '#btnMarkRead'});
			}
			function markReadOperate(read){
				var rows = $("#tt").datagrid("getSelections");
				if (rows.length == 0){
					$.messager.alert("提示","请选择标记已读的记录","info");
					return;
				}
				if (rows.length > 1){
					$.messager.alert("提示","只能选择一个记录进行标记已读","info");
					return;
				}
				$.post('<s:url namespace="/message/receive" action="markRead"/>', {'selections':rows[0].id,'read':read}, function(data){
					if (data == "false"){
						$.messager.alert("提示","标记已读失败","info");
						return;
					}
					$("#tt").datagrid('reload');
					refreshTipMessage();
				});
	            return false;           
			}
			function refreshTipMessage(){
				  $.ajax({
					  type:'post',
					  datatype:'json',
					  cache:false,
					  url:'<s:url namespace="/message/receive" action="unRead"/>',
					  data: '',
					  success:function(message, textStatus){
						  parent.parent.$('#tipMessage').empty();
					      var html = '<span id="messageFlash">';
					      if (message != 'false'){
					      	var tiplength = message.length;
					        html += '<a href="javascript:void(0);" onclick="javascript:_home.addTab(\'个人消息\',\'message/index.do\');return false;" onfocus="this.blur();" style="color:red;font-size:13px;text-decoration:none;">【<img src="./ewcmssource/image/msg/msg_new.gif"/>新消息(' + tiplength + ')】</a>';
					      }
					      html += '</span>';
					      parent.parent.$('#tipMessage').append(html);
					  }
				  });
			}
		</script>		
	</head>
	<body class="easyui-layout">
		<div region="center" style="padding:2px;" border="false">
	 		<table id="tt" fit="true"></table>	
	 	</div>
        <div id="edit-window" class="easyui-window" closed="true" icon="icon-winedit" title="&nbsp;消息" style="display:none;">
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
                            <td class="tdtitle">名称：</td>
                            <td class="tdinput">
                                <input type="text" id="name" name="name" class="inputtext"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdtitle">读取时间：</td>
                            <td class="tdinput" colspan="3">
                                <ewcms:datepicker id="readTimeStart" name="readTimeStart" option="inputsimple" format="yyyy-MM-dd HH:mm:00"/>
                                &nbsp;至&nbsp;
                                <ewcms:datepicker id="readTimeEnd" name="readTimeEnd" option="inputsimple" format="yyyy-MM-dd HH:mm:00"/>
                            </td>
                        </tr>
                        <tr>
                        	<td class="tdtitle">是否订阅：</td>
                        	<td class="tdinput">
                        		<s:select list="#{true:'是',false:'否'}" name="subscription" id="subscription" headerKey="-1" headerValue="------请选择------"></s:select>
                        	</td>
                        	<td></td>
                        	<td></td>
                        </tr>
               		</table>
               	</form>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                    <a class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="querySearch('');initSubMenu();">查询</a>
                    <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="javascript:$('#query-window').window('close');">取消</a>
                </div>
            </div>
        </div>
        <div id="btnMarkRead" style="width:80px;display:none;">
        	<div id="btnRead" iconCls="" onclick="markReadOperate(true)">已读</div>
	        <div id="btnUnRead" iconCls="" onclick="markReadOperate(false)">未读</div>
	    </div>
	</body>
</html>