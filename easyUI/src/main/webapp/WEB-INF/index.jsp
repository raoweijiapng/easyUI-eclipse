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
    <script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
</head>
<style>
	.weizhi{
		position: relative;
		margin: 0px;
		padding: 0px;
		border: 0px;
	}
	label{
		font-size:12px;
	}
	

</style>

<body class="easyui-layout weizhi" style="width:100%;height:100%;left:0px;top:0px;">
	
	<!-- 页面北布局,即页面的头 --> 
	<div data-options="region:'north',border:false" style="background: #0081C3; height: 70px;" >
		<div style="display: inline-block; height: 100%; line-height: 100%; margin-left: 10px;">
			<h1 style="font-size: 2.2em;color: white;line-height: 30px;font-weight: 500;letter-spacing: 8px;line-height: 30px;margin-top: 10px;
   				margin-bottom: 0;vertical-align: middle;">
				智慧水务综合管理服务平台<br> 
				<span style="font-size: 0.9rem; line-height: 25px; letter-spacing: 3px; margin-top: 10px;">
					Smart Water Management &amp; Service Platform
				</span>
			</h1>
		</div>
	</div>
	
	<!-- 页面西布局,即页面左边的拉伸面板 --> 
	<div data-options="region:'west',collapsible:true" title="层级" style="width:400px;">
		<!-- 拉伸面板的选项卡 -->
		<div class="easyui-tabs" data-options="tools:'#tab-tools',border:false,tabWidth:70,fit:true">
			<!-- 设备层级的选项卡 -->
			<div title="设备层级">
				<!-- 设备层级的数据网格和数据操作 -->
				<table class="easyui-treegrid" data-options="url: '',border:false,method: 'get',idField: 'id',treeField: 'name',toolbar: '#tb-device',fit:true">
					<thead>
						<tr>
							<th data-options="field:'address'" width="200px">地址</th>
							<th data-options="field:'number'" width="150px" align="left">设备编号</th>
						</tr>
					</thead>
				</table>				
				<div id="tb-device" style="height:40px;padding-top:5px;padding-left:10px;">
					<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="outline:none;">刷新层级</a>
					<a href="#" id="mb" class="easyui-menubutton" data-options="menu:'#mm-device-cengji'" style="outline:none;">层级配置</a>
					<div id="mm-device-cengji">
					    <div>新增层级</div>
					    <div>修改名称</div>
					 	<div>删除层级</div>
					    <div>配置别名</div>					    
					</div>
				</div>			
			</div>
			
			<!-- 用户层级的选项卡 -->
			<div title="用户层级">
				<!-- 用户层级的数据网格和数据操作 -->
				<table class="easyui-treegrid" data-options="url: '',border:false,method: 'get',idField: 'id',treeField: 'name',toolbar: '#tb-user',fit:true">
					<thead>
						<tr>
							<th data-options="field:'address'" width="200px">地址</th>
							<th data-options="field:'number'" width="150px" align="left">设备编号</th>
						</tr>
					</thead>
				</table>				
				<div id="tb-user" style="height:40px;padding-top:5px;padding-left:10px;">
					<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" style="outline:none;">刷新层级</a>
					<a href="#" class="easyui-linkbutton" style="outline:none;">层级导入</a>
					<a href="#" class="easyui-menubutton" data-options="menu:'#mm-user-cengji'" style="outline:none;">层级配置</a>
					<div id="mm-user-cengji">
					    <div>新增层级</div>
					    <div>修改名称</div>
					    <div>移动层级</div>
					 	<div>删除层级</div>
					    <div>配置别名</div>					    
					</div>
				</div>
			</div>
			
			<!-- 管网层级的选项卡 -->
			<div title="管网层级">
			
			</div>
			
			<!-- 运维层级的选项卡 -->
			<div title="运维层级">
				<div class="easyui-tabs" data-options="border:false,fit:true">
					<div title="管线维护">
						
					</div>
					
					<div title="管阀联动分区">
			
					</div>
				</div>
			</div>
			
		</div>
		
		<div id="tab-tools">
			<span class="switchbutton" style="width: 80px; height: 30px;">
				<span class="switchbutton-inner" style="margin-left: 0px; width: 120px; height: 30px; line-height: 30px;">
					<span class="switchbutton-on" style="width: 60px; text-indent: -20px;">单选</span>
					<span class="switchbutton-handle" style="width: 40px; height: 30px; margin-left: -20px;">层级</span>
					<span class="switchbutton-off" style="width: 60px; text-indent: 20px;">多选</span>
					<input class="switchbutton-value" type="checkbox" value="on">
				</span>
			</span>
		</div>
	
	</div>
	
	<!-- 页面中心布局 -->
	<div data-options="region:'center',border:false">
		
		<!-- 页面中心布局的选项卡 -->
		<div id="" class="easyui-tabs" data-options="tools:'#tab-tools2',border:false,fit:true">
		
		    <div title="设备参数" data-options="closable:true">
		    	
		    	<!-- 选项卡的布局 -->
				<div class="easyui-layout" data-options="fit:true">
		
					<!-- 选项卡的西布局 -->
					<div data-options="region:'west',border:false,collapsible:false,split:true" style="width:50%;">
						
						<!-- 选项卡的西布局的嵌套布局 -->
						<div class="easyui-layout" data-options="fit:true">
						
							<!-- 口径的数据表格及工具栏操作 -->
							<div data-options="region:'west',split:true" title="口径" style="width:50%;height:50%;">
								
								<table id="opt-metersize" class="easyui-datagrid" data-options="border:false,fit:true,rownumbers:true,singleSelect:true,url:'findSize',method:'get',toolbar:'#tb1'">
									<thead>
										<tr>
											<th data-options="field:'metersize',align:'center'" style="width:40%;">口径</th>
											<th data-options="field:'createdate',align:'center'" style="width:60%;">创建时间</th>											
										</tr>
									</thead>
								</table>	
																
								<div id="tb1" style="height:40px;padding-top:5px;padding-left:10px;">
					
									<a onclick="findmeterSize()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="outline:none;">查询</a>
								
									<a onclick="addmeterSize()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="outline:none;">新增</a>
								
									<a onclick="updatemeterSize()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" style="outline:none;">修改</a>
													
									<a onclick="deletemeterSize()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="outline:none;">删除</a>
								</div>								
								
							</div>								
							
							<!-- 厂家的数据表格及工具栏操作 -->
							<div data-options="region:'center'" title="厂家管理" >
								<table id="opt-producter" class="easyui-datagrid" data-options="border:false,fit:true,rownumbers:true,singleSelect:true,url:'',method:'get',toolbar:'#tb2'">
									<thead>
										<tr>
											<th data-options="field:'metersize',align:'center'" style="width:40%;">厂家</th>
											<th data-options="field:'createdate',align:'center'" style="width:60%;">创建时间</th>											
										</tr>
									</thead>
								</table>	
																
								<div id="tb2" style="height:40px;padding-top:5px;padding-left:10px;">
					
									<a onclick="findproducter()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="outline:none;">查询</a>
								
									<a onclick="addproducter()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="outline:none;">新增</a>
								
									<a onclick="updateproducter()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" style="outline:none;">修改</a>
									
									<a onclick="deleteproducter()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="outline:none;">删除</a>
													
								</div>
							</div>
							
							<!-- 相关信息的保存 -->
							<div data-options="region:'south',collapsible:false,split:true" style="height:50%;" title="相关信息" >
								<!-- 创建带底部的面板 -->
								<div class="easyui-panel" data-options="footer:'#ft',fit:true,border:false">
									<table style="padding-top: 20px;">
										<tbody>										
											<tr>
												<td style="padding-left: 10px;width:50%;">												
													<select class="easyui-combobox" name="state" label="定时生成每月用水量日期"  labelwidth="150px;" style="width:300px;">
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3" selected>3</option>
														<option value="4">4</option>												
														<option value="5">5</option>
														<option value="6">6</option>												
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>												
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>												
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>												
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>												
														<option value="21">21</option>												
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>												
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
													</select>									
												</td>												
										
												<td style="padding-left: 25px;width:50%;">													
													<input class="easyui-textbox" id="update_Late_Rate_main" label="滞纳金比例"  labelwidth="100px;" style="width:300px;" data-options="value:0.001">
												</td>
											</tr>
					
											<tr>
												<td style="padding-left: 10px;">
													<select class="easyui-combobox" id="update_AccountDay_main" label="水司结账日"  labelwidth="150px;" style="width:300px;">
														<option value="0">每月最后一天</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>														
														<option value="5">5</option>
														<option value="6">6</option>														
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>														
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>														
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>														
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>														
														<option value="21">21</option>														
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>														
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>														
													</select>
												</td>
												
												<td style="padding-left: 25px;">
													<input class="easyui-textbox text" id="update_LateRateMin_main" style="width: 300px;" label="滞纳金最小金额"  labelwidth="100px;" data-options="value:0">
												</td>
											</tr>
									
											<tr>
												<td style="padding-left: 10px;">
													<input class="easyui-numberspinner" id="update_WasteMonth_main" label="垃圾费收取最高月封顶月数"  labelwidth="150px;" style="width:300px;" data-options="min:0,value:100">
												</td>
												
												<td style="padding-left: 25px;">
													<select class="easyui-combobox" id="update_zhangdanleixing_main" label="账单类型"  labelwidth="100px;" style="width: 300px;">
														<option value="0">每月水量</option>
														<option value="1">每月账单</option>
													</select>
												</td>
											</tr>
									
											<tr>
												<td style="padding-left: 10px;">
													<input class="easyui-textbox" label="最小抄表水量" id="update_MinReadWaterNum_main" style="width: 300px;" labelwidth="150px" data-options="value:0">
												</td>
											</tr>
											
											<tr>
												<td style="padding-left: 10px;">
													<select class="easyui-combobox" label="违约金收取方式" id="update_lateFeeType_main" style="width: 300px;" labelwidth="150px">
														<option value="0">无</option>
														<option value="1">每月</option>
														<option value="2">次月</option>
														<option value="3">下下月</option>
													</select>
												</td>
											</tr>
									
											<tr>
												<td style="padding-left: 10px;">
													<select class="easyui-combobox" label="违约金起算日" id="update_Late_FIX_main" style="width: 300px;" labelwidth="150px">
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>														
														<option value="5">5</option>
														<option value="6">6</option>														
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>														
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>														
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>														
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>														
														<option value="21">21</option>														
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>														
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
													</select>
												</td>
											</tr>					
										</tbody>
									</table>
								</div>
								
								<!-- 面板的尾部 -->
								<div id="ft" style="padding:5px;">
							        <a href="#" id="btn_update_yingshou" style="width: 150px;text-align: center;position:relative;left:40%;outline:none;" class="easyui-linkbutton" onclick="update_yingshou()">
								        <span style="margin-top: 0px;">
								        	<span>保存</span>
								        </span>
							        </a>
							    </div>
															
							</div>					
						</div>
					</div>
					
					<!-- 选项卡的中心布局 -->
					<div data-options="region:'center',border:false">
					
						<!-- 选项卡的中心布局的嵌套布局 -->
						<div class="easyui-layout" data-options="fit:true">
						
							<!-- 通讯模式的数据表格及工具栏操作 -->
							<div data-options="region:'north',split:true" title="通讯模式" style="width:50%;height:50%;">
								<table id="opt-connectmodel" class="easyui-datagrid" data-options="border:false,fit:true,rownumbers:true,singleSelect:true,url:'',method:'get',toolbar:'#tb3'">
									<thead>
										<tr>
											<th data-options="field:'metersize',align:'center'" style="width:50%;">通讯模式</th>
											<th data-options="field:'createdate',align:'center'" style="width:50%;">创建时间</th>											
										</tr>
									</thead>
								</table>	
																
								<div id="tb3" style="height:40px;padding-top:5px;padding-left:10px;">
					
									<a onclick="findconnectmodel()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="outline:none;">查询</a>
								
									<a onclick="addconnectmodel()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="outline:none;">新增</a>
								
									<a onclick="updateconnectmodel()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" style="outline:none;">修改</a>
													
								</div>
							</div>
					
							<!-- 阀门类型的数据表格及工具栏操作 -->
							<div data-options="region:'center',split:true" title="阀门类型" style="width:50%;height:50%;">
								<table id="opt-valuetype" class="easyui-datagrid" data-options="border:false,fit:true,rownumbers:true,singleSelect:true,url:'',method:'get',toolbar:'#tb4'">
									<thead>
										<tr>
											<th data-options="field:'metersize',align:'center'" style="width:50%;">阀门类型</th>
											<th data-options="field:'createdate',align:'center'" style="width:50%;">创建时间</th>											
										</tr>
									</thead>
								</table>	
																
								<div id="tb4" style="height:40px;padding-top:5px;padding-left:10px;">
					
									<a onclick="findvaluetype()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="outline:none;">查询</a>
								
									<a onclick="addvaluetype()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="outline:none;">新增</a>
								
									<a onclick="updatevaluetype()" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" style="outline:none;">修改</a>
													
								</div>	
							</div>
							
						</div>
					 
					</div>
				
				</div>
		   
		    </div>
		    
		    
		</div>
		
		<!-- 中心布局的选项卡的工具栏 -->
		<div id="tab-tools2" style=" height: 34px;float:right;display:block;">
			
			<input class="easyui-textbox" data-options="prompt:'请输入设备编码',iconCls:'icon-search'" style="width:150px">
	
			<select class="easyui-combobox" name="state" style="width:200px;">
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				<option value="IL">Illinois</option>
				<option value="IN">Indiana</option>
				<option value="IA">Iowa</option>					
			</select>					
				
		</div>
	</div>
		
	<!-- 口径数据表格的新增操作对话框 -->
	<div id="open_add_meterSize" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_add_meterSize-buttons">
		
			<form id="submit-add" method="post">
				<div style="margin: 20px;" class="fitem">
					<label style="text-align: left; height: 30px; line-height: 30px;">名称：</label>					
					<input name="metersize" class="easyui-validatebox" style="width: 200px;height:30px;">
				</div>
			</form>
		
	</div>	
	<div id="open_add_meterSize-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="add_meterSize()" style="outline:none;">提交</a>
	</div>
	
	<!-- 口径数据表格的修改操作对话框 -->
	<div id="open_update_meterSize" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_update_meterSize-buttons">
		
			<form id="submit-update" method="post">
				<div style="margin: 20px;" class="fitem">
					<label style="text-align: left; height: 30px; line-height: 30px;">名称：</label>				
					<input name="metersize" class="easyui-validatebox" style="width: 200px;height:30px;">
				</div>
			</form>
		
	</div>	
	<div id="open_update_meterSize-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="update_meterSize()" style="outline:none;">提交</a>
	</div>
	<!-- 口径数据表格的修改操作没选定数据 -->
	<div id="open_update_meterSize_failed" class="easyui-dialog" style="width:350px;height:200px;padding:5px" closed="true">	
		<div style="margin: 20px;" class="fitem">
			<label style="text-align: left; height: 30px; line-height: 30px;">请选择数据</label>					
		</div>		
	</div>
	
	<!-- 口径数据表格的删除操作对话框 -->
	<div id="open_delete_meterSize" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_delete_meterSize-buttons">
		<div style="margin: 20px;" class="fitem">
			<label style="text-align: left; height: 30px; line-height: 30px;">确认删除该口径</label>				
		</div>				
	</div>	
	<div id="open_delete_meterSize-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="delete_meterSize()" style="outline:none;">确定</a>
	</div>	
	<!-- 口径数据表格的删除操作没选定数据 -->
	<div id="open_delete_meterSize_failed" class="easyui-dialog" style="width:350px;height:200px;padding:5px" closed="true">	
		<div style="margin: 20px;" class="fitem">
			<label style="text-align: left; height: 30px; line-height: 30px;">请选择数据</label>					
		</div>		
	</div>
	
	<!-- 厂家数据表格的新增操作对话框 -->
	<div id="open_add_producter" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_add_producter-buttons">
		
			<form id="submit-addproducter" method="post">
				<div style="margin: 20px;" class="fitem">
					<label style="text-align: left; height: 30px; line-height: 30px;">厂家名称：</label>					
					<input name="productername" class="easyui-validatebox" style="width: 200px;height:30px;">
				</div>
			</form>
		
	</div>	
	<div id="open_add_producter-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="add_producter()" style="outline:none;">提交</a>
	</div>
	
	<!-- 通讯模式数据表格的新增操作对话框 -->
	<div id="open_add_connectmodel" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_add_connectmodel-buttons">
		
			<form id="submit-connectmodel" method="post">
				<div style="margin: 20px;" class="fitem">
					<label style="text-align: left; height: 30px; line-height: 30px;">名称：</label>					
					<input name="productername" class="easyui-validatebox" style="width: 200px;height:30px;">
				</div>
			</form>
		
	</div>	
	<div id="open_add_connectmodel-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="add_connectmodel()" style="outline:none;">提交</a>
	</div>
		
	<!-- 阀门类型数据表格的新增操作对话框 -->
	<div id="open_add_valuetype" class="easyui-dialog" style="width:350px;height:200px;padding:5px"	closed="true" buttons="#open_add_valuetype-buttons">
		
			<form id="submit-valuetype" method="post">
				<div style="margin: 20px;" class="fitem">
					<label style="text-align: left; height: 30px; line-height: 30px;">名称：</label>					
					<input name="productername" class="easyui-validatebox" style="width: 200px;height:30px;">
				</div>
			</form>
		
	</div>	
	<div id="open_add_valuetype-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="add_valuetype()" style="outline:none;">提交</a>
	</div>	

</body>
<script>
	var url;
	//口径数据网格的查询操作
	function findmeterSize(){
		$('#opt-metersize').datagrid('reload');			
	}
	
	//口径数据网格的新增操作
	function addmeterSize(){
		$('#open_add_meterSize').dialog('open').dialog('setTitle','新增口径');			
	}	
	function add_meterSize(){
		$('#submit-add').form('submit',{
			url: 'addSize',
			onSubmit: function(){
				//进行表单字段验证，当全部字段都有效时返回 true
				return $(this).form('validate');
			},
			success: function(result){
				//将后台返回的对象转换成json
				/* var result = eval('('+result+')'); */
				if (result.status == "failed"){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					//关闭对话框
					$('#open_add_meterSize').dialog('close');	
					// 重新加载口径的数据表格
					$('#opt-metersize').datagrid('reload');	
				}
			}
		});
	}
	
	//口径数据网格的修改操作
	function updatemeterSize(){
		var row = $('#opt-metersize').datagrid('getSelected');
		if (row){
			$('#open_update_meterSize').dialog('open').dialog('setTitle','修改口径');
			$('#submit-update').form('load',row);
			url= '/updateSize?id='+row.id;
		}else{
			$('#open_update_meterSize_failed').dialog('open').dialog('setTitle','提示');
		}
	}	
	function update_meterSize(){
		$('#submit-update').form('submit',{
			url: url,			
			onSubmit: function(){
				//进行表单字段验证，当全部字段都有效时返回 true 
				return $(this).form('validate');
			},
			success: function(result){
				//将后台返回的对象转换成json
				/* var result = eval('('+result+')'); */
				if (result.status == "failed"){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					//关闭对话框
					$('#open_update_meterSize').dialog('close');	
					// 重新加载口径的数据表格
					$('#opt-metersize').datagrid('reload');	
				}
			}
		});
	}
	
	//口径数据网格的删除操作
	function deletemeterSize(){
		var row = $('#opt-metersize').datagrid('getSelected');
		if (row){
			$('#open_delete_meterSize').dialog('open').dialog('setTitle','提示');
			url= '/deleteSize?id='+row.id;
		}else{
			$('#open_update_meterSize_failed').dialog('open').dialog('setTitle','提示');
		}
	}
	function delete_meterSize(){
		$.ajax({
		    type: 'GET',
		    url: url,
		    dataType: "json",
		    success: function(result){
		    	//var result = eval('('+result+')');
			    if (result.status == "success"){
			    	$('#open_delete_meterSize').dialog('close');	
					$('#opt-metersize').datagrid('reload');
				} else {
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				}
		    }
		});		
	}
	
	//厂家数据网格的新增操作
	function addproducter(){
		$('#open_add_producter').dialog('open').dialog('setTitle','新增厂家');			
	}
	
	function add_producter(){
		$('#submit-addproducter').form('submit',{
			url: url,
			onSubmit: function(){
				return $(this).form('validate');
			},
			success: function(result){
				var result = eval('('+result+')');
				if (result.errorMsg){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					//关闭对话框
					$('#open_add_producter').dialog('close');	
					// 重新加载口径的数据表格
					$('#opt-producter').datagrid('reload');	
				}
			}
		});
	}

	//通讯模式数据网格的新增操作
	function addconnectmodel(){
		$('#open_add_connectmodel').dialog('open').dialog('setTitle','新增通讯模式');			
	}
	
	function add_connectmodel(){
		$('#submit-connectmodel').form('submit',{
			url: url,
			onSubmit: function(){
				return $(this).form('validate');
			},
			success: function(result){
				var result = eval('('+result+')');
				if (result.errorMsg){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					//关闭对话框
					$('#open_add_connectmodel').dialog('close');	
					// 重新加载口径的数据表格
					$('#opt-connectmodel').datagrid('reload');	
				}
			}
		});
	}

	//阀门类型数据网格的新增操作
	function addvaluetype(){
		$('#open_add_valuetype').dialog('open').dialog('setTitle','新增阀门');			
	}
	
	function add_connectmodel(){
		$('#submit-valuetype').form('submit',{
			url: 'addSize',
			onSubmit: function(){
				return $(this).form('validate');
			},
			success: function(result){
				var result = eval('('+result+')');
				if (result.errorMsg){
					$.messager.show({
						title: 'Error',
						msg: result.errorMsg
					});
				} else {
					//关闭对话框
					$('#open_add_valuetype').dialog('close');	
					// 重新加载口径的数据表格
					$('#opt-valuetype').datagrid('reload');	
				}
			}
		});
	}
</script>

</html>

