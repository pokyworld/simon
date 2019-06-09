<%@ Language="VBScript" %>
<!-- #include virtual="./simon/lib/dbOpen.asp" -->
<!-- #include virtual="./simon/lib/functions.asp" -->
<!-- #include virtual="./simon/includes/post_handler.asp" -->

<%
    referer = Request.ServerVariables("HTTP_REFERER")
    script = Request.ServerVariables("SCRIPT_NAME")
    ' slug = Request.QueryString("u")
    queryString = Request.ServerVariables("QUERY_STRING")
    If Len(queryString) >= 1 Then : script = script & "?" & queryString
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<%=Application("https_root")%>/simon/assets/css/j.min.css" media="all">
    <link rel="stylesheet" href="<%=Application("https_root")%>/simon/assets-store/css/style.min.css" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all">
    <link rel="icon" type="image/ico" href="/simon/assets/images/favicon.ico">
    <title><% =title %></title>
    <style>
        header { max-width: 980px; }
        form.j-menu-search { margin-right: 20px; }
        .j-main { margin-top: 80px; }
        .j-sidebar { margin-top: -14px; }
        .j-pad-16 { height: 100%; width: 100%; flex-direction: column; }
        .j-pad-16 > img { height: 100%; width: 100%; }
        .j-SlugView { margin-left:200px; width: 80%; }
        #mySidebar, #myOverlay { display: none; }
        pre { line-height: 0.0; font-size: 18px; }
    </style>
</head>
<body class="j-content" id="content" onload="if ('Navigator' == navigator.appName) document.forms[0].reset();">
	<!-- Sidebar Navigation -->
	<!-- #include virtual="./simon/includes/nav.asp" -->
	
	<!-- Header Navigation -->
	
	<header class="j-top j-bar j-text-white j-cyan">
		<button id="hamburgermenu" class="j-bar-item j-button j-xlarge hamburgermenu" onclick="toggle('mySidebar');"><i class="fa fa-bars j-large"></i></button>
		<a href="/simon/"><h1 class="j-bar-item j-large j-hover-text-white site-title">Simon</h1></a>
		<form name="search" class="j-menu-search j-left autocomplete" method="post" action="/simon/">
			<input name="search" type="text" autocomplete="off" class="j-bar-item j-menu-search j-input j-display-right j-round" placeholder="Search Simon..." onclick="document.getElementById('myOverlay').style.display = 'block';toggle('mySidebar');">
		</form>
	</header>
	

	<!-- Overlay effect when opening sidebar -->
	<div class="j-overlay j-cyan-overlay pointer" onclick="toggle('mySidebar'); hide('mySearch');" id="myOverlay"></div>
	<div class="j-main" id="topofpage">
		<!-- Body Content -->
		<div class="j-SlugView">
            <!-- <pre>Referer: <% '=referer%></pre> -->
            <pre>Page: <%=script%></pre>

            <%
                For Each Item In Request.QueryString
                    Response.Write "<pre>" & Item & ": " & RegexReplace(Trim(Request.QueryString(Item)&""),"\/?$","") & "</pre>"
                Next
                Response.Write "<hr/>"
            %>
        </div>
			<!-- CONTENT BLOCK - COVER TRI -->			
			
			<!-- CONTAINER - CATEGORIES -->
			<div class="j-container j-hide-small">
				<div class="j-row-padding">
				<h5 class="j-medium">BROWSE TOP  CATEGORIES</h5>
					<div class="j-third">
						<a href="/simon/filter/all/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-grocery.jpg" alt="Grocery" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Grocery</span>
						<div class="j-col m4 "><p><a href="/simon/search/dairy/">Dairy</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/juice/">Juice</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/snacks/">Snacks</a></p></div>
					</div>
					<div class="j-third">
						<a href="/simon/search/health/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-health-and-beauty.jpg" alt="Health and Beauty" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Health &amp; Beauty</span>
						<div class="j-col m4 "><p><a href="/simon/search/vitamins/">Vitamins</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/dental/">Dental</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/hair/">Hair</a></p></div>
					</div>
					<div class="j-third">
						<a href="/simon/category/dish_detergent/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-household-essentials.jpg" alt="Household" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Household Essentials</span>
						<div class="j-col m4 "><p><a href="/simon/search/laundry/">Laundry</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/surface_cleaners/">Cleaners</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/soap/">Soaps</a></p></div>
					</div>
					<div class="j-third">
						<a href="/simon/search/pet/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-pet-supplies.jpg" alt="Pet Supplies" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Pet Supplies</span>
						<div class="j-col m4 "><p><a href="/simon/search/pet_food/">Dog</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/cat_food/">Cat</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/category/air_fresheners/">Fresh</a></p></div>
					</div>
					<div class="j-third">
						<a href="/simon/search/home/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-home-kitchen-office.jpg" alt="Kitchen" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Home, Kitchen &amp; Office</span>
						<div class="j-col m4 "><p><a href="/simon/search/trash_bags/">Trash</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/paper/">Paper</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/coffee/">Coffee</a></p></div>
					</div>
					<div class="j-third">
						<a href="/simon/search/kids/">
							<img src="<%=Application("https_root")%>/simon/uploads/images/cat-narrow-toys-kids-and-baby.jpg" alt="Kids and Baby" style="width: 100%; margin-top: 15px; margin-bottom: 5px;">
						</a>
						<span class="j-col m12 j-border-bottom">Kids &amp; Baby</span>
						<div class="j-col m4 "><p><a href="/simon/search/diapers/">Diapers</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/chocolate/">Chocolate</a></p></div>
						<div class="j-col m4 "><p><a href="/simon/search/gentle_baby/">Baby</a></p></div>
					</div>
				</div>
			</div>	
			<hr class="j-hide-small"><div class="j-container j-pad-16">FLYING OFF THE SHELVES - <a href="/simon/filter/featured/" style="color:blue;">VIEW ALL</a></div>
<ul page="1" class="j-center list-grid list-products" style="">
    <li weight="500" rating="4" dairy="1" data-sid="20.99">
      <span itemscope="" itemtype="https://schema.org/Product">
        <a itemprop="url" href="/simon/item/1/" class="product-tiles block overflow-hidden">
            <div class="tile-img-wrap">
                <div class="img-holder">
                <div class="img-helper"></div><img itemprop="image" class="j-grow" src="https://dcmzfk78s4reh.cloudfront.net/r512x400_1534882605213.jpg" alt="Charmin Ultra Strong, 36 Count">
                </div>
			       <div class="rating-block">
4<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star"></span>
				   </div>
            </div>
            <div class="tile-contents">
                <div class="name-block"><h3 class="j-medium"><span itemprop="name">Charmin Ultra Strong, 36 Count</span></h3></div>
                <span itemprop="offers" itemscope="" itemtype="https://schema.org/Offer">
                <div class="j-medium j-text-blue j-inline"><span itemprop="priceCurrency" content="USD">$</span><span itemprop="price">20.99</span><span itemprop="availability" href="https://schema.org/InStock" class="j-text-green"> ( In Stock )</span></div>
                </span>
            </div>
        </a>
     </span>
    </li>
    <li weight="500" rating="4" dairy="1" data-sid="9.99">
      <span itemscope="" itemtype="https://schema.org/Product">
        <a itemprop="url" href="/simon/item/122/" class="product-tiles block overflow-hidden">
            <div class="tile-img-wrap">
                <div class="img-holder">
                <div class="img-helper"></div><img itemprop="image" class="j-grow" src="/simon/uploads/images/products/9472bfe1-a74e-4fcb-97d5-7a704ef8d1e7.jpg" alt="Natures Path Pumpkin Seed + Flax Granola, 35.3oz">
                </div>
			       <div class="rating-block">
4<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star"></span>
				   </div>
            </div>
            <div class="tile-contents">
                <div class="name-block"><h3 class="j-medium"><span itemprop="name">Natures Path Pumpkin Seed + Flax Granola, 35.3oz</span></h3></div>
                <span itemprop="offers" itemscope="" itemtype="https://schema.org/Offer">
                <div class="j-medium j-text-blue j-inline"><span itemprop="priceCurrency" content="USD">$</span><span itemprop="price">9.99</span><span itemprop="availability" href="https://schema.org/InStock" class="j-text-green"> ( In Stock )</span></div>
                </span>
            </div>
        </a>
     </span>
    </li>
    <li weight="500" rating="4" dairy="1" data-sid="14.99">
      <span itemscope="" itemtype="https://schema.org/Product">
        <a itemprop="url" href="/simon/item/322/" class="product-tiles block overflow-hidden">
            <div class="tile-img-wrap">
                <div class="img-holder">
                <div class="img-helper"></div><img itemprop="image" class="j-grow" src="/simon/uploads/images/products/d49401cd-4bf4-4a7e-9464-f8b3c82224db.jpg" alt="Ricola Natural Herb Cough Drops, 260ct">
                </div>
			       <div class="rating-block">
4<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star"></span>
				   </div>
            </div>
            <div class="tile-contents">
                <div class="name-block"><h3 class="j-medium"><span itemprop="name">Ricola Natural Herb Cough Drops, 260ct</span></h3></div>
                <span itemprop="offers" itemscope="" itemtype="https://schema.org/Offer">
                <div class="j-medium j-text-blue j-inline"><span itemprop="priceCurrency" content="USD">$</span><span itemprop="price">14.99</span><span itemprop="availability" href="https://schema.org/InStock" class="j-text-green"> ( In Stock )</span></div>
                </span>
            </div>
        </a>
     </span>
    </li>
    <li weight="500" rating="4" dairy="1" data-sid="11.99">
      <span itemscope="" itemtype="https://schema.org/Product">
        <a itemprop="url" href="/simon/item/422/" class="product-tiles block overflow-hidden">
            <div class="tile-img-wrap">
                <div class="img-holder">
                <div class="img-helper"></div><img itemprop="image" class="j-grow" src="https://dcmzfk78s4reh.cloudfront.net/r512x400_1510459371065.jpg" alt="Easy Off Oven &amp; Grill Cleaner">
                </div>
			       <div class="rating-block">
4<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star"></span>
				   </div>
            </div>
            <div class="tile-contents">
                <div class="name-block"><h3 class="j-medium"><span itemprop="name">Easy Off Oven &amp; Grill Cleaner</span></h3></div>
                <span itemprop="offers" itemscope="" itemtype="https://schema.org/Offer">
                <div class="j-medium j-text-blue j-inline"><span itemprop="priceCurrency" content="USD">$</span><span itemprop="price">11.99</span><span itemprop="availability" href="https://schema.org/InStock" class="j-text-green"> ( In Stock )</span></div>
                </span>
            </div>
        </a>
     </span>
    </li>
    <li weight="500" rating="4" dairy="1" data-sid="9.99">
      <span itemscope="" itemtype="https://schema.org/Product">
        <a itemprop="url" href="/simon/item/522/" class="product-tiles block overflow-hidden">
            <div class="tile-img-wrap">
                <div class="img-holder">
                <div class="img-helper"></div><img itemprop="image" class="j-grow" src="https://dcmzfk78s4reh.cloudfront.net/r512x400_1441033464751.jpg" alt="Polar 100% Natural Seltzer, 12 X 1 Liter Bottles, Original">
                </div>
			       <div class="rating-block">
4<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star checked"></span>
<span class="j-small j-inline fa fa-star"></span>
				   </div>
            </div>
            <div class="tile-contents">
                <div class="name-block"><h3 class="j-medium"><span itemprop="name">Polar 100% Natural Seltzer, 12 X 1 Liter Bottles, Original</span></h3></div>
                <span itemprop="offers" itemscope="" itemtype="https://schema.org/Offer">
                <div class="j-medium j-text-blue j-inline"><span itemprop="priceCurrency" content="USD">$</span><span itemprop="price">9.99</span><span itemprop="availability" href="https://schema.org/InStock" class="j-text-green"> ( In Stock )</span></div>
                </span>
            </div>
        </a>
     </span>
    </li>
</ul>
<br>
		<br class="j-hide-small">
		<div id="subscribe" class="j-container j-cyan-7 j-pad-32">
			<form name="subscribe" method="post" action="/simon/">
				<h1 class="j-text-white">Savings Signup</h1><p class="j-text-white">Special offers and VIP treatment:</p>
				<p><input name="subscribe" class="j-input j-border" type="text" placeholder="Enter e-mail"></p>
				<button type="submit" class="j-button j-orange j-text-white j-margin-bottom">Subscribe</button>
			</form>
		</div>

		
		<footer id="footer" class="j-pad-32 j-light-grey j-small j-center">
			<div class="j-row-padding">
				<div class="j-col s6 j-small">
					<h4>Contact</h4>
					<p>Questions? &nbsp;Go ahead.</p>
					<form name="contact" method="post" action="/simon/" target="_blank">
						<p><input name="name" class="j-input j-hover-border-cyan j-border-bottom j-border-cyan" type="text" placeholder="Name" required=""></p>
						<p><input name="phone" class="j-input j-hover-border-cyan j-border-bottom j-border-cyan" type="text" placeholder="Phone" required=""></p>
						<p><input name="email" class="j-input j-hover-border-cyan j-border-bottom j-border-cyan" type="text" placeholder="Email" required=""></p>
						<p><input name="subject" class="j-input j-hover-border-cyan j-border-bottom j-border-cyan" type="text" placeholder="Subject" required=""></p>
						<p><input name="message" class="j-input j-hover-border-cyan j-border-bottom j-border-cyan" type="text" placeholder="Message" required=""></p>
						<button type="submit" class="j-button j-block j-medium j-orange j-text-white">Send</button>
					</form>
				</div>
				<div class="j-col s1">&nbsp;</div>
				<div class="j-col s4 j-justify j-small">
					<h4>Search Redefined</h4>
					<p>8AM-5PM (M-F)</p><p><i class="fa fa-fw fa-phone"></i> 111-222-3333</p>
					<!-- <p><i class="fa fa-fw fa-envelope"></i>&nbsp;</p> -->
					
					<br>
					
					
					<h4>We accept</h4><p><i class="fa fa-fw fa-cc-amex"></i> &nbsp;Amex</p><p><i class="fa fa-fw fa-cc-visa"></i> &nbsp;Visa</p><p><i class="fa fa-fw fa-cc-mastercard"></i> &nbsp;Mastercard</p><p><i class="fa fa-fw fa-cc-discover"></i> &nbsp;Discover</p><br>
					
																
					<a href="https://testmysite.thinkwithgoogle.com/?url=https://avoli.com/simon" rel="nofollow">Google Preferred</a>
					<br><br>
					<a class="copyrighted-badge" title="Copyrighted.com Registered &amp; Protected" target="_blank" href="https://www.copyrighted.com/work/gsEnjq9MGXHAjJsE?url=http%3A%2F%2Fwww.avoli.com%2Fsimon%2Findex.asp"><img alt="Copyrighted.com Registered &amp; Protected" width="125" height="25" srcset="https://static.copyrighted.com/badges/125x25/04_2_2x.png 2x" src="https://static.copyrighted.com/badges/125x25/04_2.png"></a><script src="https://static.copyrighted.com/badges/helper.js"></script>
					<br><br>
					
					
					
					<!-- <div class="j-hide-small j-hide-medium">
						<a href="https://play.google.com/store/apps/details?id=anvil.simon.app.mangotech"  onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">
							<img src="/simon/assets/images/download-google-play-app-medium.JPG" alt="Download the Simon Android App">
						</a>
					</div> -->
				</div>
			</div>
		</footer>
		

		<!-- Page Load Elapsed Time -->
		<div class="j-display-container j-cyan-6 j-center j-pad-24">
			Simon Fetched In: 0.02 sec / 20 ms

		</div>
		
		<!-- Final Footer -->
		<div class="j-display-container j-cyan-8 j-center j-pad-24">
			<a href="cms.asp" class="j-left-offset footer-cms j-circle j-white">&nbsp;<i class="fa fa-user pointer" style="padding-left: 2px; padding-right: 2px;"></i>&nbsp;</a>
			© 2017
			<a href="#topofpage" class="j-right-offset footer-top j-circle j-white">&nbsp;<i class="fa fa-arrow-up pointer"></i>&nbsp;</a>
		</div>
		
	</div>
	
	<!-- EU Law Cookie Notice -->
	<div id="banner" class="j-banner j-text-white j-purple" style="display: none;">
		<div class="j-banner_content j-center">
			<span class="j-hide-small">Use our site if you agree with these &nbsp;&nbsp;<a class="j-underline" href="/simon/view/cookie_policy/">Cookies</a>&nbsp; / &nbsp;<a class="j-underline" href="/simon/view/privacy_policy/">Privacy</a>&nbsp; / &nbsp;<a class="j-underline" href="/simon/view/terms_of_service/">Terms</a></span>
			<span class="j-hide-medium j-hide-large">Do you agree? &nbsp;&nbsp;<a class="j-underline" href="/simon/view/cookie_policy/">Cookies</a>&nbsp;&nbsp;<a class="j-underline" href="/simon/view/privacy_policy/">Privacy</a>&nbsp;&nbsp;<a class="j-underline" href="/simon/view/terms_of_service/">Terms</a></span>
			&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-motive j-button j-white j-text-purple j-hover-yellow" href="#" onclick="hide('banner'); savecookie('eu-cookies','true');">GOT IT!</a>
		</div>
		<div class="j-banner_close" onclick="hide('banner');"></div>
	</div>

	<!-- Modals -->
	<div id="cart" class="j-cart-sidebar">
		<div class="j-cart-sidebar-content">
			<div class="j-container j-white j-center">
				<!-- <i onclick="j_close(); document.getElementById('cart').style.display='none'" class="fa fa-remove j-right j-button j-transparent j-xlarge icon"></i> -->
				<i id="hide_cart" class="fa fa-remove j-right j-button j-white j-xlarge icon j-pad j-border-gray"></i>

	            <!-- Scrollable div that slides out (holds cart & wishlist) -->
	            <div class="side-menu__module overflow">
					<main>
	      				<div class="widget">
							<h2 class="widget-header">Shopping Cart</h2>
							<div class="ct-cart"><span class="ct-cart-empty">Your cart is empty</span><ol></ol></div>
						</div>
						<div class="widget">
							<h2 class="widget-header">Wishlist</h2>
							<div class="ct-wishlist"><ol></ol></div>
						</div>
					</main>
	            </div>
			</div>
		</div>
	</div>	
	<div id="newsletter" class="j-modal">
		<div class="j-modal-content j-animate-zoom">
			<div class="j-container j-white j-center j-pad-24">
				<form name="newsletter" method="post" action="/simon/">
					<i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove j-right j-button j-transparent j-xlarge icon"></i><br>
					<h2 class="j-wide modal-title">NEWSLETTER</h2>
					<p>Join our mailing list to receive updates on new arrivals and special offers.</p>
					<p><input name="newsletter" class="j-input j-border" type="text" placeholder="Enter e-mail"></p>
					<button type="submit" class="j-button j-pad-large j-cyan j-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">
					Subscribe</button>
				</form>
			</div>
		</div>
	</div>
	<div id="simonai" class="j-modal">
		<div class="j-modal-content j-animate-zoom">
			<div class="j-container j-white j-center">
				<i onclick="document.getElementById('simonai').style.display='none'" class="fa fa-remove j-right j-button j-transparent j-xlarge icon"></i><br>
				<h2 class="j-wide modal-title">SIMON AI</h2><br>
				<img src="<%=Application("https_root")%>/simon/assets/images/mascot/logo.png" alt="simon" class="avatar" title="Hi, I'm Simon!">
				<p class="j-medium">Hi, I'm SIMON.</p>  
				<p class="j-medium">I provide Fast, Relevant, Search for this web site and I learn as you shop.</p>
				<p class="j-medium">I'm so fast Google ranks this site the fastest they have tested!  &nbsp;Click <a class="j-underline" href="https://testmysite.thinkwithgoogle.com/?url=avoli.com/simon" rel="nofollow">here</a> to see for yourself!</p>
				<p class="j-medium">Contact my maker <a class="j-underline" href="https://eddiedrye.com">Eddie Drye</a> to put me on your site and start seeing faster searches today!</p>
			</div>
		</div>
	</div>	

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<%=Application("https_root")%>/simon/assets-store/js/shop.min.js"></script>
	<script>
	// Hide all pagination page content - Ex Syntax: <div page='1'>Product grid and products here</div>
	$( document ).ready(function() {
		$("[page]").hide();							// Hide all elements where attribute page exists
		$("[page='1']").show();						// Show a particular page attribute
    });	
	function showpage(id) {
		$("[page]").hide();
		$( '.j-pagination.j-bar > a' ).removeClass( 'j-cyan' );								// Removing .j-cyan from previously active pagination
		$( '.j-pagination.j-bar' ).find( "[pagenumber='"+ id +"']" ).addClass( "j-cyan" );	// Adding .j-cyan to current active pagination
		$("[page='" + id + "']").show();
		if (id > 1) {
			$(".ct-product").hide();
		}
	}
	showpage(1);
	</script>
	

	<script>
	function hide(id) {
		var item = document.getElementById(id)
        if(item) {
            item.style.display = "none";
        }
	}
	
	// Overlay click
	function j_close() {
		document.getElementById("myOverlay").style.display = "none";
		toggle("mySidebar");
	}	
	function closeSidebar() { document.getElementById("mySidebar").style.display = "none"; }

	// Accordions Left Nav (3 main sections, catalogs, brands, categories, filters and pages) 
	function toggle(id) {
	    var x = document.getElementById(id);
	    if (x.className.indexOf("j-show") == -1) {
	        x.className += " j-show";
	        if (id = "mySidebar")
	        {
				var item = document.getElementById("myOverlay");
                if(item) {
                    // item.style.display = "block";
                }
			}
	    } else {
	        x.className = x.className.replace(" j-show", "");
	        if (id = "mySidebar")
	        {
				document.getElementById("myOverlay").style.display = "none";
			}
	    }
		document.getElementById(id).focus();	
	}
	
	// Close alerts
	var close = document.getElementsByClassName("closebtn");
	var i;
	for (i = 0; i < close.length; i++) {
	    close[i].onclick = function(){
	        var div = this.parentElement;
	        div.style.opacity = "0";
	        setTimeout(function(){ div.style.display = "none"; }, 600);
	    }
	}
 	</script>
 	
	<script>
	$( '.ct-product-button, .ct-product-wishlist, #show_cart' ).on( 'click', function( e ) {
		$( '#cart' ).show().addClass( 'show' );
	});
	$( '#hide_cart' ).on( 'click', function( e ) {
		e.preventDefault();
		$( '#cart' ).hide().removeClass( 'show' );
	})	
	
	
	// Default to rating sorting
	//ratingProductSort();

	// Product Sorting Javascript
	// -----------------------------------------------------
	jQuery( ".list-products > li" ).each( function( index ) {
		var price = jQuery( this ).find( ".tile-contents .j-medium.j-text-blue [itemprop='price']" ).text();
		jQuery( this ).attr( 'data-sid', price );
	});
	
	// Clickable sorts
	function ascendingProductSort() {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).data( 'sid' ));
			var val_b = parseFloat(jQuery(b).data( 'sid' ));
			return ( val_a < val_b ) ? -1 : ( val_a > val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function descendingProductSort() {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).data( 'sid' ));
			var val_b = parseFloat(jQuery(b).data( 'sid' ));
			return ( val_a > val_b ) ? -1 : ( val_a < val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function bestmatchProductSort() {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).attr( 'weight' ));
			var val_b = parseFloat(jQuery(b).attr( 'weight' ));
			return ( val_a < val_b ) ? -1 : ( val_a > val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function dairyProductSort() {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).attr( 'dairy' ));
			var val_b = parseFloat(jQuery(b).attr( 'dairy' ));
			return ( val_a < val_b ) ? -1 : ( val_a > val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function ratingProductSort() {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).attr( 'rating' ));
			var val_b = parseFloat(jQuery(b).attr( 'rating' ));
			return ( val_a > val_b ) ? -1 : ( val_a < val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function ascendingProductSortGen( data_el ) {
		jQuery( ".list-products > li" ).sort( function( a, b ) {
			var val_a = parseFloat(jQuery(a).data( data_el ));
			var val_b = parseFloat(jQuery(b).data( data_el ));
			return ( val_a < val_b ) ? -1 : ( val_a > val_b ) ? 1 : 0;
		}).appendTo( "[page='1']" );
	}
	function disablePagination() {
		jQuery( '#products-grid' ).addClass( 'disable-pagination' );
	}
	function enablePagination() {
		jQuery( '#products-grid' ).removeClass( 'disable-pagination' );
	}
	
	// Registering the Event on Sort Buttons
	jQuery( "#ascending_sort" ).on( 'click', function(e) {
		disablePagination();
		ascendingProductSortGen('sid');
	});
	jQuery( "#descending_sort" ).on( 'click', function(e) {
		disablePagination();
		descendingProductSort();
	});
	jQuery( "#dairy_sort" ).on( 'click', function(e) {
		disablePagination();
		dairyProductSort();
	});
	jQuery( "#rating_sort" ).on( 'click', function(e) {
		disablePagination();
		ratingProductSort();
	});
	jQuery( '.j-dropdown-hover .j-dropdown-content a:nth-of-type(1)' ).on( 'click', function() {
		disablePagination();
		bestmatchProductSort();
	});
	</script> 	
	
	
 	
	<script>
	// Requiring the Data For Search Autocomplete. This will be done, after page finished loading...
	var categories = [];
	var searchForm = document.querySelector( 'form.autocomplete' );
	window.onload = function() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				// Change delimiter on line below to be what the file has between values
				// Make sure the file does NOT have \n or \n\l.  All should be on one line in the file
				categories = this.responseText.split( "|" ).map(function(item) {
					return item.trim();
				});
			}
		};
		xmlhttp.open("GET", "data/autocomplete.txt", true);
		xmlhttp.send();
		
		// Triggering autocomplete event for Search Field
		setTimeout(function() {
			autocomplete(document.querySelector( '.autocomplete [name="search"]' ), categories);
		}, 1000);
	}
	
	function matchCategories(input) {
		var reg = new RegExp(input.split('').join('\\w*').replace(/\W/, ""), 'i');
		return categories.filter(function(cat) {
			if ( cat.match(reg) ) {
				return cat;
			}
		});
	}
	
	function autocomplete(inp) {
		/*the autocomplete function takes two arguments,
		the text field element and an array of possible autocompleted values:*/
		var currentFocus;
		/*execute a function when someone writes in the text field:*/
		inp.addEventListener("input", function (e) {
			var a, b, i, val = this.value;
			/*close any already open lists of autocompleted values*/
			closeAllLists();
			if (!val) {
				return false;
			}
			currentFocus = -1;
			/*create a DIV element that will contain the items (values):*/
			a = document.createElement("DIV");
			a.setAttribute("id", this.id + "autocomplete-list");
			a.setAttribute("class", "autocomplete-items");
			/*append the DIV element as a child of the autocomplete container:*/
			this.parentNode.appendChild(a);
			/*for each item in the array...*/
			
			var arr = matchCategories( val );
			for (i = 0; i < arr.length; i++) {
			
				/*create a DIV element for each matching element:*/
				b = document.createElement("DIV");
				/*make the matching letters bold:*/
				b.innerHTML = arr[i];
				/*insert a input field that will hold the current array item's value:*/
				b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
				/*execute a function when someone clicks on the item value (DIV element):*/
				b.addEventListener("click", function (e) {
					/*insert the value for the autocomplete text field:*/
					inp.value = this.getElementsByTagName("input")[0].value;
					// Submitting Form
					searchForm.submit();
					/*close the list of autocompleted values, (or any other open lists of autocompleted values:*/
					closeAllLists();
				});
				a.appendChild(b);
			}
		});
		/*execute a function when user presses a key on the keyboard:*/
		inp.addEventListener("keydown", function (e) {
			var x = document.getElementById(this.id + "autocomplete-list");
			if (x) x = x.getElementsByTagName("div");
			if (e.keyCode == 40) {
				/*If the arrow DOWN key is pressed, increase the currentFocus variable:*/
				currentFocus++;
				/*and and make the current item more visible:*/
				addActive(x);
			} else if (e.keyCode == 38) { //up
				/*If the arrow UP key is pressed, decrease the currentFocus variable:*/
				currentFocus--;
				/*and and make the current item more visible:*/
				addActive(x);
			}
			//console.log( 'Keypressed' );
		});
		function addActive(x) {
			/*a function to classify an item as "active":*/
			if (!x) return false;
			/*start by removing the "active" class on all items:*/
			removeActive(x);
			if (currentFocus >= x.length) currentFocus = 0;
			if (currentFocus < 0) currentFocus = (x.length - 1);
			/*add class "autocomplete-active":*/
			x[currentFocus].classList.add("autocomplete-active");
		}
	
		function removeActive(x) {
			/*a function to remove the "active" class from all autocomplete items:*/
			for (var i = 0; i < x.length; i++) {
				x[i].classList.remove("autocomplete-active");
			}
		}
	
		function closeAllLists(elmnt) {
			/*close all autocomplete lists in the document,
			except the one passed as an argument:*/
			var x = document.getElementsByClassName("autocomplete-items");
			for (var i = 0; i < x.length; i++) {
				if (elmnt != x[i] && elmnt != inp) {
					x[i].parentNode.removeChild(x[i]);
				}
			}
		}
		/*execute a function when someone clicks in the document:*/
		document.addEventListener("click", function (e) {
			closeAllLists(e.target);
		});
	}	
	</script>
	
	
	<script>
	// COOKIES (Tested: 6/5/2019)
	var c = getCookie("eu-cookies");
	if (c == "true") {
		hide('banner');
	} 
	function setCookie(cname, cvalue, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
		var expires = "expires="+d.toUTCString();
		document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
			}
		}
		return "";
	}
	function savecookie(name,value)
	{
		document.cookie = name + "=" + value;
	}	
	</script>
 	
    <script>
          $('body').ctshop({
               currency: '$',
               promo_codes: 'true',
               promo_values: {
                    'saletoday5%': '5%',
                    'discount30%': '30%',
                    'discount5$': 5,
                    'discount10$': 10,
       		},
               shipping_option: 'true',
                    shipping_types: {
                    "Standard Mail": 10,
                    "Express Mail": 15,
                    "Next Day Delivery": 20,
       		},		     
               paypal: {
                    no_shipping: '2',
                    business: "eddie@avoli.com",
                    currency_code: 'USD',
                    return: '<%=Application("https_root")%>/simon/?message=Success - Thanks for your order!',
                    cancel_return: '<%=Application("https_root")%>/simon/?message=Error - I am sad you cancelled your order :('
               }
          });
       </script>
<script>showpage(1);</script>



</body>
</html>
<!-- #include virtual="./simon/lib/dbClose.asp" -->