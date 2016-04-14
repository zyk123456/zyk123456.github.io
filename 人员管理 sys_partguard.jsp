<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<%@include file="../../common/quote/boot.html"%>
<script type="text/javascript" src="../js/sys_partguard.js"></script>
<title>新增</title>
<script type="text/javascript">
	var objNbjgh = '${obj.nbjgh}';
</script>
</head>
<body>
	<form id="addPartguardForm" method="post" action="${base}/sys/part/addOrUpdatePart.nut">
		<div >
			<table class="tab" cellpadding="6" cellspacing="0">
				<tr>
					<td style="width: 100px;"class="tab_label tab_align_r" align="left">内部机构号：</td>
					<td class="tab_field_nr"><input id="nbjgh" name="nbjgh" width="170px" class="mini-textbox" required="true" emptyText="请输入内部机构号" value="${obj.nbjgh}" onvalidation="nbjghValid"/></td>
				</tr>
				<tr>
					<td class="tab_label tab_align_r">机构名称：</td>
					<td class="tab_field_nr"><input id="jgmc" name="jgmc" width="170px" class="mini-textbox" required="true"  value="${obj.jgmc}" /></td>
				</tr>
				<tr>
					<td class="tab_label tab_align_r">证件号码：</td>
					<td class="tab_field_nr"><input id="sfzjhm" name="sfzjhm" width="170px" class="mini-textbox" required="true"  value="${obj.sfzjhm}" onvalidation="checkSfz" /></td>
				</tr>
				<tr>
					<td class="tab_label tab_align_r">性别：</td>
					<td class="tab_field_nr"><input id="xbhm" name="xbhm" width="170px" class="mini-textbox" required="true" value="${obj.xbhm}" /></td>
				</tr>
			</table>
		</div> 
		<div style="text-align: center; padding: 10px;">
			<a class="mini-button" onclick="add()" iconCls="icon-ok" style="width: 60px; margin-right: 20px;">确定</a> <a class="mini-button" onclick="onCancel"
				iconCls="icon-cancel" style="width: 60px;">取消</a>
		</div>
	</form>

</body>
</html>
