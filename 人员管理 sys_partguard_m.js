var partguardGrid;
$(function() {
	partguardGrid = mini.get("partguardGrid");
	partguardGrid.load();
}); 

function add(){
	mini.open({
				url : base + "/sys/jsp/sys_partguard.jsp",
				title : "新增",
				iconCls : "icon-add",
				width : 300,
				height :280,
				allowResize : false,
				onload : function() {
				},
				ondestroy : function(action) {
					if (action == 'ok') {
						partguardGrid.load();
					}
				}
			});
};

function search(){
	var nbjgh = mini.get('key').getValue();
	partguardGrid.load({nbjgh:nbjgh});
};

function onActionRenderer(e) {
	var record = e.record;// 行对象
	var uid = record._uid;

	var s = '<a class="mini-button mini-button-plain" href="javascript:edit(\''+ uid+ '\')"><span class="mini-button-text  mini-button-icon icon-edit">编辑</span></a>'
			+ '<a class="mini-button mini-button-plain" href="javascript:delRow(\''+ uid+ '\')"><span class="mini-button-text mini-button-icon icon-remove">删除</span></a>';
	return s;
};

function edit(row_uid) {
	var row = partguardGrid.getRowByUID(row_uid);
	if (row) {
		mini.open({
					url : base + "sys/part/toEditPart.nut?nbjgh=" + row.nbjgh,
					title : "编辑",
					width :300,
					height : 280,
					iconCls : "icon-edit",
					ondestroy : function(action) {
						if (action == 'ok') {
							partguardGrid.load();
						}
					}
				});
	}
};

function delRow(nbjgh) {
	var row = partguardGrid.getRowByUID(nbjgh);
	if (row) {
		mini.confirm("确定删除记录？", "确定？", function(action) {
					if (action == "ok") {
						$.ajax({
									url : base + "/sys/part/delPart.nut?nbjgh=" + row.nbjgh,
									dataType : 'json',
									success : function(data) {
										if (data.success) {
											partguardGrid.removeRow(row, true);
										}
									}
								});
					}
				});
	}
};
