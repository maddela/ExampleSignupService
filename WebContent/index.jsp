<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	
	<meta name="google-translate-customization" content="59d61509bb95247-6092126cd0b09237-g3d35fa0317e5ded6-13"></meta>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
	<link rel="stylesheet" href="normalize.css">
	<link rel="stylesheet" href="style.css">
	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
		
		
	</script>
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=APP_ID";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	
	
		
</head>
<body>
<div align="right">
 <a href="Login.jsp">Login </a>



</div>








	<nav class="clearfix">
	
	

		<ul class="clearfix">
			
			<li><a href="index.jsp">Home</a></li>
			<li><a href="#">Teacher staff</a></li>
			<li><a href="#">Student Info</a></li>
			<li><a href="#">News Events</a></li>
			<li><a href="REGISTER.jsp">Register</a></li>
			<li><a href="#">About Us</a></li>	
		</ul>
		<a href="#" id="pull">Menu</a>
		
		
	</nav>
	<div class="fb-login-button" data-show-faces="true" data-width="200" data-max-rows="1"></div>
	
	
	
	<table>
<tr>
<td width="95%">
	  <h1 class="title" id="page-title">Little Angels English Medium School</h1>
</td>
<td align="right">
      <a class="a2a_dd" href="http://www.addtoany.com/share_save" target="_blank"><img src="http://www.springsource.org/sites/all/themes/s2org11/images/button_share.png"></a>
<script type="text/javascript">
var a2a_config = a2a_config || {};
a2a_config.color_main = "e5e6e6";
a2a_config.color_border = "5c6c75";
a2a_config.color_link_text = "333333";
a2a_config.color_link_text_hover = "333333";
var a2a_config = a2a_config || {};
a2a_config.onclick = 1;
</script>
<script type="text/javascript" src="http://www.wavemaker.com/_js/addtoany.js"></script>
</td>
</tr>
</table>

</div>
    <div id="sliderFrame">
        
        <div id="slider">
        
           		<img src="s2.jpg" alt="" />
                <img src="Photo0127.jpg" alt="" />
            </a>
            <img src="Photo0131.jpg" alt="" />
            <img src="Photo0132.jpg" alt="" />
            <img src="Photo0133.jpg" alt="" />
             <img src="s1.jpg" alt="" />
            
        </div>
       
    </div>
    
    <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        
    

<div align=right>
<iframe src="https://www.google.com/calendar/embed?height=300&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=r6he27ogfk1igic8dsj02007e4%40group.calendar.google.com&amp;color=%235229A3&amp;ctz=Asia%2FCalcutta" style=" border-width:0 " width="300" height="300" frameborder="0" scrolling="no"></iframe>
      
</div>
</body>
</html>