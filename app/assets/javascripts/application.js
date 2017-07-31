//= require jquery
//= require jquery_ujs
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require turbolinks
//= require_tree .


$( document ).on('turbolinks:load', function() {
	$( '#menu-btn' ).click(function(){
		$('.responsive-menu').toggleClass('expand')
		$('.menu-btn span').toggleClass('active')
 	})
});

$( document ).ready(function(){
	$('.attachinary-input').attachinary()
});