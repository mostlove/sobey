﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Head -->
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title></title>
	
    <meta name="description" content="Dashboard" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="<%=basePath%>resource/assets/img/favicon.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="<%=basePath%>resource/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="<%=basePath%>resource/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="<%=basePath%>resource/assets/css/weather-icons.min.css" rel="stylesheet" />
    <!--Fonts-->

    <!--Beyond styles-->
    <link href="<%=basePath%>resource/assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>resource/assets/css/demo.min.css" rel="stylesheet" />
    <link href="<%=basePath%>resource/assets/css/typicons.min.css" rel="stylesheet" />
    <link href="<%=basePath%>resource/assets/css/animate.min.css" rel="stylesheet" />
    <link href="<%=basePath%>resource/assets/css/skins/deepblue.min.css" rel="stylesheet" type="text/css" />

	<link href="<%=basePath%>resource/css/common.css" rel="stylesheet" />
    <script src="<%=basePath%>resource/assets/js/skins.min.js"></script>
    
  
</head>
<!-- /Head -->
<!-- Body -->
<body>
    <div class="page-breadcrumbs">
        <ul class="breadcrumb">
            <li><a href="javascript:getPage('main.html')">首页</a></li>
            <li class="active">Banner列表</li>
        </ul>
    </div>
    <div class="header-title">
	    <h1>
	         Banner
	        <small>
	            Ads
	        </small>
	    </h1>
	</div>
    <div class="page-body">
		<div class="widget">
			<div class="widget-header ">
                <span class="widget-caption">查看Banner</span>
                <div class="widget-buttons">
                    <a href="<%=basePath%>admin/requestpage/ads/add" target="iframe" class="btn btn-info" id="addBtn" disabled="true" >添加Banner</a>
                </div>
            </div>
            <div class="widget-body">
            
                <table class="table table-striped table-hover" id="simpledatatable">
                    <thead>
                        <tr>
                            <th>图片</th>
                            <th>链接</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody id="bodyData">
              
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- 删除模态 -->
    <div class="modal modal-darkorange" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">删除提示</h4>
				</div>
				<div class="modal-body">
					<p>确认删除？</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-default" onclick="delAds()" data-dismiss="modal">确认</button>
					<input type="hidden" id="tempADsId" value="0">
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
    
    <!--Basic Scripts-->
    <script src="<%=basePath%>resource/assets/js/jquery-2.0.3.min.js"></script>
    <script src="<%=basePath%>resource/assets/js/bootstrap.min.js"></script>

    <!--Beyond Scripts-->
    <script src="<%=basePath%>resource/assets/js/beyond.min.js"></script>
	<script src="<%=basePath%>resource/assets/js/toastr/toastr.js"></script>
	<!--Common Scripts -->
	<script src="/SanghaCloud/resource/js/common.js"></script>
	<script src="/SanghaCloud/resource/js/jqPaginator.js"></script>
	<script src="/SanghaCloud/resource/js/jqPage.js"></script>
	<script src="/SanghaCloud/resource/laydate/laydate.js"></script>
	<script src="<%=basePath%>resource/assets/js/bootbox/bootbox.js"></script>   
	<script type="text/javascript" src="/SanghaCloud/resource/js/ads/ads.js"></script>
    <script>
    	var totalpage=10;
    	$(function(){
    		
    		addpage(); //加载分页方法
    		
    		totalpage = initData();
    		
    		//返回的数据不为undefind(也就是有数据时),调用$('#pageCon').show();
			$('#pageCon').show();


			//数据添加到页面后，调用一下方式
    		$.jqPaginator('#pagination', {
	   	    	totalPages: totalpage,  //总页数
	   	        visiblePages: 3,  //可见页面
	   	        currentPage: 1,   //当前页面
	   	        onPageChange: function (num, type) {
	   	        	$('#showing').text('共'+totalpage+'条  第1/'+totalpage+'页');
	   	            if(type != "init"){
	   	            	//获取第num页数据，
	   	            	//userId, searchName, wbxID, czMoney, xfMoney, syMoney, uTel, isEnabled,isOperator 条件查询的参数
	   	            	//getData(num, userId, searchName, wbxID, czMoney, xfMoney, syMoney, uTel, isEnabled,isOperator);
	   	            }
	   	        }
	   	    });   
    	})
    </script>
</body>
<!--  /Body -->
</html>
