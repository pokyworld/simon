
<!DOCTYPE html>
<html>
<head>
	<title>CMS Dashboard</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" sizes="57x57" href="assets/images/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="assets/images/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="assets/images/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="assets/images/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="assets/images/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="assets/images/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="assets/images/apple-icon-180x180.png">
	<link rel="apple-touch-icon-precomposed" sizes="192x192" href="assets/images/apple-icon-precomposed.png">	
	<link rel="icon" type="image/png" sizes="192x192"  href="assets/images/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon-16x16.png">
	<link rel="manifest" href="assets/images/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="assets/images/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

	<!-- 
	MY THOUGHTS
	
	WHY JAVASCRIPT LIBRARIES 
	SLOW DOWN YOUR SITE: The reason Javascript libraries are bad for page speed is simple; you load a large 
	collection of Javascripts without, in almost all cases, actually using 95% of those loaded Javascripts on 
	your page. In almost all cases you only use a small component of the much larger library. This is not optimal 
	for page speed since Javascripts need time to download and load on your web page. The more and bigger 
	Javascripts you load, the slower your website will be.
	
	AVOID USING JQUERY ALL TOGETHER OR USE MINIFIED JQUERY
	As said before, the most used Javascript library is the Jquery library, it is used for many of the popular 
	Javascript plugins and custom made Javascripts. But not all Javascript developers rely on a Javascript library 
	to create a Javascript. There are a lot of good scripts available which do not rely on a larger library but 
	have all the functions Jquery can provide you with built-in in the Javascript itself instead of using a outside 
	library. This assures you that only those Javascripts loaded on your site are the ones you actually use. 
	When it comes to page speed, this is usually a much better option as using a library.
	-->
	<script>
	function load(t,e){if("js"==e)(s=document.createElement("script")).setAttribute("type","text/javascript"),s.setAttribute("src",t);else if("css"==e){var s=document.createElement("link");s.setAttribute("rel","stylesheet"),s.setAttribute("type","text/css"),s.setAttribute("href",t)}void 0!==s&&document.getElementsByTagName("head")[0].appendChild(s)}	
	load("assets/js/j.min.js", "js")	// DO NOT delete or this search on grids etc will fail to work
	load("assets/js/jquery.min.js", "js")
	load("assets-store/js/shop.min.js", "js")
	</script>

	<script>
function load(t,e){if("js"==e)(s=document.createElement("script")).setAttribute("type","text/javascript"),s.setAttribute("src",t);else if("css"==e){var s=document.createElement("link");s.setAttribute("rel","stylesheet"),s.setAttribute("type","text/css"),s.setAttribute("href",t)}void 0!==s&&document.getElementsByTagName("head")[0].appendChild(s)}
load('http://www.avoli.com/simon//assets-store/js/shop.min.js", "js')
</script>
<script>
function loadCSS(e){var n=window.document.createElement("link"),t=window.document.getElementsByTagName("head")[0];n.rel="stylesheet",n.href=e,n.media="only x",t.parentNode.insertBefore(n,t),setTimeout(function(){n.media="all"},0)}
loadCSS('assets/css/j.min.css');
loadCSS('assets-store/css/style.min.css');
loadCSS('../../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
loadCSS('assets/css/j-theme-cyan.min.css');
</script>
<noscript>
	<!-- Your browser does NOT support Javascript -->
	<link rel="stylesheet" href='assets/css/j.min.css'>
	<link rel="stylesheet" href='assets-store/css/style.min.css'>
	<link rel="stylesheet" href="../../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/j-theme-cyan.min.css">
</noscript>

	
	<style>
	html,body,h1,h2,h3,h4,h5 { font-family: "Open Sans", sans-serif }
	.j-sidebar { display: none; }
	.j-bar a.active { background-color: white; color: black; }
	.j-badge { padding-left: 4px; padding-right: 4px; }
	.list-grid {margin-left: 9px!important;}
	input[type=text], input[type=password] {
	    width: 100%;
	    padding: 12px 20px;
	    margin: 8px 0;
	    display: inline-block;
	    border: 1px solid #ccc;
	    box-sizing: border-box;
	}
	.btn {
	    background-color: #4CAF50;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    cursor: pointer;
	    width: 100%;
	}
	.btn:hover { opacity: 0.8;}
	.imgcontainer { text-align: center; margin: 24px 0 12px 0;}
	.container { padding: 16px; }
	.checked { color: orange; }
	</style>
	
</head>
<body class="j-theme-l5">
	<br /><h3>&nbsp;&nbsp;Login</h3>

	<form action="http://www.avoli.com/simon/cms.asp" method="post">
		<div class="imgcontainer">
			<a href="index-2.html"><img src="assets/images/mascot/logo-medium.png" alt="" class="avatar"></a>
		</div>
		
		<div class="container">
			<label><b>Username</b></label>
			<input type="text" placeholder="Enter Username" name="login" required>
			
			<label><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="password" required>
			
			<button class="btn j-cyan" type="submit">Login</button>
		</div>
	</form>
	
</body>
</html> 
