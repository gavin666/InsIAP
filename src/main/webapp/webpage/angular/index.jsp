<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="AceApp">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />

<title ng-bind-template="{{pageTitle || 'Welcome'}} - Ace Admin">Welcome
	- InsiAP </title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="plug-in/ace-insiap/components/font-awesome/css/font-awesome.css" />

<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace.css"
	id="main-ace-style" />

<!--
	<link rel="stylesheet" href="plug-in/ace-insiap/components/angular-loading-bar/build/loading-bar.css" />
	-->

<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/ace-skins.css">

</head>

<body ng-controller="MainController" ng-class="bodySkin()">
	<div class="navbar navbar-default"
		ng-class="{'navbar-fixed-top': ace.settings.navbar}"
		ng-include="'webpage/angular/views/layouts/default/partial/navbar.html'"></div>

	<div class="main-container"
		ng-class="{'container': ace.settings.container}">

		<div id="sidebar" class="sidebar responsive"
			ng-controller="SidebarCtrl" ace-sidebar props="ace.sidebar"
			scroll="true" hover="true"
			ng-class="{'menu-min': ace.sidebar.minimized, 'sidebar-fixed': ace.settings.sidebar, 'compact': ace.settings.compact}"
			ng-include="'webpage/angular/views/layouts/default/partial/sidebar.html'"></div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs"
					ng-class="{'breadcrumbs-fixed': ace.settings.breadcrumbs}"
					ng-include="'webpage/angular/views/layouts/default/partial/breadcrumbs.html'"></div>
				<div class="page-content">
					<div class="ace-settings-container" ng-controller="SettingsCtrl"
						ng-include="'webpage/angular/views/layouts/default/partial/settings.html'"></div>
					<ui-view ng-show="!viewContentLoading"></ui-view>
				</div>
			</div>
		</div>


		<div class="footer"
			ng-include="'webpage/angular/views/layouts/default/partial/footer.html'"></div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>

	<div ng-show="viewContentLoading"
		class="ajax-loading-overlay ajax-overlay-body">
		<i class="ajax-loading-icon fa fa-spin fa-spinner fa-2x orange"></i>
	</div>



	<script src="plug-in/ace-insiap/components/jquery/dist/jquery.js"></script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='plug-in/ace-insiap/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>

	<script src="plug-in/ace-insiap/components/angular/angular.js"></script>
	<script
		src="plug-in/ace-insiap/components/angular-animate/angular-animate.js"></script>
	<script
		src="plug-in/ace-insiap/components/angular-sanitize/angular-sanitize.js"></script>

	<!--
	<script src="plug-in/ace-insiap/components/angular-loading-bar/build/loading-bar.js"></script>
	-->

	<script
		src="plug-in/ace-insiap/components/angular-touch/angular-touch.js"></script>
	<script
		src="plug-in/ace-insiap/components/angular-resource/angular-resource.js"></script>

	<script
		src="plug-in/ace-insiap/components/oclazyload/dist/ocLazyLoad.js"></script>
	<script
		src="plug-in/ace-insiap/components/angular-ui-router/release/angular-ui-router.js"></script>
	<script
		src="plug-in/ace-insiap/components/angular-bootstrap/ui-bootstrap-tpls.js"></script>


	<script src="plug-in/ace-insiap/components/ngstorage/ngStorage.js"></script>


	<script src="plug-in/ace-insiap/components/bootstrap/js/transition.js"></script>
	<!-- for sidebar transition events -->

	<!-- ACE -->
	<script src="plug-in/ace-insiap/assets/js/ace-small.js"></script>
	<!-- slimmer version of ace.js -->
	<script src="plug-in/ace-insiap/assets/js/ace-elements.js"></script>

	<!-- ACE ANGULAR -->
	<script src="webpage/angular/js/app.js"></script>
	<!-- INSERT TEMPLATE CACHE -->


	<script src="webpage/angular/js/directives/ace.js"></script>
	<script src="webpage/angular/js/directives/vendor.js"></script>
	<script src="webpage/angular/js/controllers/main.js"></script>


</body>
</html>
