//= require jquery3
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .


$( document ).on('turbolinks:load', function() {
	$( '#menu-btn' ).click(function(){
		$('.responsive-menu').toggleClass('expand')
		$('.menu-btn span').toggleClass('active')
 	})
})