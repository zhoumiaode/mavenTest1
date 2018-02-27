<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!--  新增菜单Modal -->
<div class="modal fade" id="modalTest" tabindex="-1" role="dialog"
	style="display: none">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">新增菜单</h4>
			</div>
			<div class="modal-body">
				<form action="post" id="addTest">
					<table class="input-table">
						<tr>
							<td class="before-labels" style="text-align:right">菜单名称：</td>
							<td class="td-input"><input type="text" name="name"
								id="name" class="form-control" maxlength="10"> 
							</td>
						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">菜单url：</td>
							<td class="td-input"><input type="text" name="url"
								id="url" class="form-control" maxlength="60"> <span
								class="red-star"></span>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="Msg()">添加</button>
				<button type="button" class="btn btn-danger" data-target="#modalTest"
					data-toggle="modal">关闭</button>
					
			</div>
		</div>
	</div>
</div>




<!--  修改菜单Modal -->
<div class="modal fade" id="menuEdit" tabindex="-1" role="dialog"
	style="display: none">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">修改菜单</h4>
			</div>
			<div class="modal-body">
				<form action="post" id="updateMenuForm">
					<table class="input-table">
						<tr>
							<td class="before-labels" style="text-align:right">菜单名称：</td>
							<td class="td-input"><input type="text" name="menuName"
								id="updateMenuName" class="form-control" readonly="readonly">
								<span class="red-star">*</span>
							</td>
							<td><input type="hidden" name="mid" id="mid">
							</td>
						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">菜单url：</td>
							<td class="td-input"><input type="text" name="menuUrl"
								id="updateMenuUrl" class="form-control" > <span
								class="red-star"></span>
							</td>
						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">菜单顺序：</td>
							<td class="td-input"><input type="text" name="menuOrder"
								id="updateMenuOrder" class="form-control"   onkeyup="value=value.replace(/[^\d]/g,'') "   lipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
								<span class="red-star"></span>
							</td>
						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">上级菜单：</td>
							<td class="td-input"><select class="form-control"
								name="menu.menuParent.id" id="updateMenuParent">
							</select> <span class="red-star"></span>
							</td>
						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">是否启用：</td>
							<td class="td-input"><select class="form-control"
								name="menuState" id="updateMenuState">
									<option value="可用">是</option>
									<option value="禁用">否</option>
							</select> <span class="red-star"></span>
							</td>

						</tr>
						<tr>
							<td class="before-labels" style="text-align:right">图标名称：</td>
							<td class="td-input"><input type="text" name="icon"
								id="updateMenuIcon" class="form-control"> <span
								class="red-star"></span>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="editMenu()">确认</button>
				<button type="button" class="btn btn-danger" data-target="#menuEdit"
					data-toggle="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
