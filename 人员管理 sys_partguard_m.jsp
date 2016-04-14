<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>保安炊事员管理</title>
<%@include file="../../common/quote/boot.html"%>
<script type="text/javascript" src="../js/sys_partguard_m.js"></script>
</head>
<body>
	<div class="mini-toolbar" style="border-bottom: 0; padding: 0px;">
		<table style="width: 100%;">
			<tr>
				<td style="width: 100%;"><a class="mini-button" iconCls="icon-add"  plain="true"   onclick="add()">新增</a></td>
				<td style="white-space: nowrap;"><label style="font-family: Verdana;">内部机构号: </label> <input id="key" class="mini-textbox"
					onenter="onKeyEnter" /> <a class="mini-button" iconCls="icon-search"   onclick="search()">查询</a></td>
			</tr>
		</table>
	</div>
	
	<div class="mini-fit">
		<div id="partguardGrid" class="mini-datagrid" style="width: 100%; height: 100%" 
		url="${base}/sys/part/getPartguardList.nut" pageSize="40" showPager="true" showModified="false">
			<div property="columns">
				<div field="nbjgh" id="nbjgh" width="80" align="center" headerAlign="center" >内部机构号</div>
				<div field="jgmc" width="100" align="center" headerAlign="center">机构名称</div>
				<div field="sfzjhm" width="center" align="center" headerAlign="center">证件号码</div>
				<div field="xbhm" width="80" align="center" headerAlign="center" >性别</div>
				<div name="action" width="140" headerAlign="center" align="center" renderer="onActionRenderer" cellStyle="padding:0;">操作</div>
			</div>
		</div>
	</div>

</body>
</html>
