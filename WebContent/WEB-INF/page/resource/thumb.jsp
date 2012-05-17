<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>更新缩略图</title>
		<s:include value="../taglibs.jsp"/>
        <link rel="stylesheet" type="text/css" href="<s:url value="/ewcmssource/uploadify/uploadify.css"/>"/>
        <script type='text/javascript' src='<s:url value="/ewcmssource/uploadify/jquery.uploadify.min.js"/>'></script>
        <script type='text/javascript' src='<s:url value="/ewcmssource/uploadify/swfobject.js"/>'></script>
        <script type='text/javascript' src='<s:url value="/ewcmssource/page/resource/thumb.js"/>'></script>
        <script type="text/javascript">
            var _t = new thumb('<s:property  value="id"/>',
                {uploader:'<s:url value="/ewcmssource/uploadify/medium/uploadify.allglyphs.swf"/>',
                expressInstall:'<s:url value="/ewcmssource/uploadify/medium/expressInstall.swf"/>',
                cancelImg: '<s:url value="/ewcmssource/uploadify/image/cancel.png"/>',
                script: '<s:url action="thumbReceive"/>;jsessionid=<%=session.getId()%>'});
            
            $(function() {
                _t.init();
            });
        </script>
    </head>
    <body>
        <div id="upload_queue" style="margin:20px 5px;height: 50px;"></div>
        <div align="right" style="text-align:right;height:38px;line-height:38px;padding:3px 6px;">
            <input type="file" name="upload" id="upload"/>
        </div>
    </body>
</html>
