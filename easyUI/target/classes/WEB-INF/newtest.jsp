<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    
    <link rel="stylesheet" type="text/css" href="css/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    
</head>
<style>
	

</style>

<body>
	<div>
		<table id="tt" class="easyui-datagrid" style="width:800px;height:500px"
		data-options="rownumbers:true,singleSelect:true,pagination:true,url:'findSizefenye',method:'get',toolbar:'#tb-tools'"
			title="Load Data" >
			<thead>
				<tr>
					<th data-options="field:'name',align:'center'" style="width:15%;">名字</th>
					<th data-options="field:'parentid',align:'center'" style="width:15%;">parentid</th>	
					<th data-options="field:'shortname',align:'center'" style="width:15%;">简称</th>	
					<th data-options="field:'mergername',align:'center'" style="width:40%;">全称</th>
					<th data-options="field:'pinyin',align:'center'" style="width:15%;">拼音</th>											
				</tr>
			</thead>
		</table>
	</div>
	
	<div id="tb-tools" style="padding:3px">
		<span>名字:</span>
		<input id="name" style="line-height:26px;border:1px solid #ccc">
		<span>拼音:</span>
		<input id="pinyin" style="line-height:26px;border:1px solid #ccc">
		<a href="#" class="easyui-linkbutton" plain="true" onclick="doSearch()">Search</a>
	</div>
	
</body>
<script type="text/javascript">
	function doSearch(){
		$('#tt').datagrid('load',{
			name: $('#name').val(),
			pinyin: $('#pinyin').val()
		});
	}


</script>

</html>

