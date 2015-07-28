$ ->
	code_default = """<html>
		<style>
			h1 {
				color:black;
				font-family: "Times New Roman";
			}

			h3 {
				color:black;
				font-family: "Times New Roman";
			}

			body {
				background-color:white;
				text-align: center;
			}
		</style>

		<body>
			<h1>My Super Special Awesome Website</h1>
			<h3>I'm having the best summer at Stanford University!</h3>
			<img src="http://chasemcniel.weebly.com/uploads/1/4/5/4/14541026/8394649.png" id="stanford">
		</body>
	</html>
	"""



# <nav data-hyper="quiz.social, .translations as t" ng-hide="result" class="nav nav-share ng-scope ng-hyper-loaded ng-hyper-loaded-defined"><ol class="list list-inline share-footer display-inline-block"><!-- ngRepeat: link in social | limitTo:2 --><li ng-repeat="link in social | limitTo:2" data-hyper="link as hyperSocial, link.form as hyperForm" class="list-item ng-scope ng-hyper-loaded ng-hyper-loaded-defined"><div class="hyper-force-show qz-social-link-form ng-scope ng-isolate-scope ng-hyper-loaded ng-hyper-loaded-defined" data-hyper="quiz.description as quizDescription" override="true" data-link="hyperSocial" data-form="hyperForm" via="" description="Discover what font you're born to be!!" data-hyper-translate="title -> t.social.quiz <- quiz.title as quiz_title;url -> quiz.share_url;description-fallback -> t.social.description;image -> quiz.share_image.src;image-fallback -> quiz.image.small.src;caption -> t.social.caption;via -> quiz.social.twitter.via;hashtags -> quiz.social.twitter.hashtags" title="Check out &quot;What font style are you?&quot;" url="file:///Users/carolinedebs/Desktop/HOMEPAGE/index.html" description-fallback="Make your own quizzes for free on Qzzr, the world's simplest quiz tool." image="//d4vp3733ickae.cloudfront.net/1440x900/e8d167/fff.png&amp;text=+" image-fallback="//d4vp3733ickae.cloudfront.net/694x400/e8d167/fff.png&amp;text=+" caption="Made with Qzzr" hashtags=""><a data-hyper="link.name" class="button button-medium button-square ng-hyper-loaded ng-hyper-loaded-defined button-social-facebook"><i data-hyper="link.name" class="icon button-icon-element ng-hyper-loaded ng-hyper-loaded-defined icon-ss-social-facebook"></i><span data-hyper-bind="link.label" class="button-label ng-scope ng-hyper-loaded ng-hyper-loaded-defined">Share</span></a></div></li><!-- end ngRepeat: link in social | limitTo:2 --><li ng-repeat="link in social | limitTo:2" data-hyper="link as hyperSocial, link.form as hyperForm" class="list-item ng-scope ng-hyper-loaded ng-hyper-loaded-defined"><div class="hyper-force-show qz-social-link-form ng-scope ng-isolate-scope ng-hyper-loaded ng-hyper-loaded-defined" data-hyper="quiz.description as quizDescription" override="true" data-link="hyperSocial" data-form="hyperForm" via="" description="Discover what font you're born to be!!" data-hyper-translate="title -> t.social.quiz <- quiz.title as quiz_title;url -> quiz.share_url;description-fallback -> t.social.description;image -> quiz.share_image.src;image-fallback -> quiz.image.small.src;caption -> t.social.caption;via -> quiz.social.twitter.via;hashtags -> quiz.social.twitter.hashtags" title="Check out &quot;What font style are you?&quot;" url="file:///Users/carolinedebs/Desktop/HOMEPAGE/index.html" description-fallback="Make your own quizzes for free on Qzzr, the world's simplest quiz tool." image="//d4vp3733ickae.cloudfront.net/1440x900/e8d167/fff.png&amp;text=+" image-fallback="//d4vp3733ickae.cloudfront.net/694x400/e8d167/fff.png&amp;text=+" caption="Made with Qzzr" hashtags=""><a data-hyper="link.name" class="button button-medium button-square ng-hyper-loaded ng-hyper-loaded-defined button-social-twitter"><i data-hyper="link.name" class="icon button-icon-element ng-hyper-loaded ng-hyper-loaded-defined icon-ss-social-twitter"></i><span data-hyper-bind="link.label" class="button-label ng-scope ng-hyper-loaded ng-hyper-loaded-defined">Tweet</span></a></div></li><!-- end ngRepeat: link in social | limitTo:2 --><!-- ngIf: social.length > 2 --><li ng-if="social.length > 2" class="list-item ng-scope"><qz-share-modal data-share-quiz="quiz" data-links="social" via-fallback="Qzzr_" data-hyper-translate="title -> t.social.quiz <- quiz.title as quiz_title;url -> quiz.share_url;description-fallback -> t.social.description;image -> quiz.share_image.src;image-fallback -> quiz.image.small.src;caption -> t.social.caption;via -> quiz.social.twitter.via;hashtags -> quiz.social.twitter.hashtags" class="ng-scope ng-isolate-scope" title="Check out &quot;What font style are you?&quot;" url="file:///Users/carolinedebs/Desktop/HOMEPAGE/index.html" description-fallback="Make your own quizzes for free on Qzzr, the world's simplest quiz tool." image="//d4vp3733ickae.cloudfront.net/1440x900/e8d167/fff.png&amp;text=+" image-fallback="//d4vp3733ickae.cloudfront.net/694x400/e8d167/fff.png&amp;text=+" caption="Made with Qzzr" via="" hashtags=""><div><div data-sl-modal="data-sl-modal" href="javascript:;"><!-- ngIf: buttonText --><!-- ngIf: !buttonText --><a data-tooltip="More sharing options" ng-if="!buttonText" class="button button-square button-medium button-outline tooltip tooltip-top ng-scope"><i class="icon icon-more button-icon-element"></i></a><!-- end ngIf: !buttonText --></div></div></qz-share-modal></li><!-- end ngIf: social.length > 2 --></ol><div class="box-made-with"><div data-hyper=".translations as t" class="nav-logo ng-scope ng-hyper-loaded ng-hyper-loaded-defined"><a href="http://www.qzzr.com" target="_blank" class="footer-logo"><span data-hyper-bind="t.made-with" class="logo-subheading gray-blue-color ng-scope ng-hyper-loaded ng-hyper-loaded-defined">Made with</span><i class="logo small"></i></a></div></div></nav>


	code_run = ->
		code_text = editor.getValue()
		window.frames[0].document.body.innerHTML = code_text
		localStorage.setItem 'code_current', code_text

	code_reset = ->
		localStorage.clear()
		localStorage.setItem 'code_current', code_default
		editor.getSession().setValue code_default
		window.frames[0].document.body.innerHTML = code_default

	if !localStorage.getItem 'code_current'
		localStorage.setItem 'code_current', code_default

	# initalize Ace 
	editor = ace.edit 'editor'
	editor.setTheme 'ace/theme/twilight'
	editor.getSession().setMode 'ace/mode/html'
	code_current = localStorage.getItem 'code_current'
	editor.getSession().setValue code_current
	editor.setOptions({fontSize:"9pt"})

	window.frames[0].document.body.innerHTML = code_current

	editor.getSession().on "change", ->
		code_run()

	$("#button_reset").on "click", ->
		code_reset()

	$("#button_run").on "click", ->
		code_run()