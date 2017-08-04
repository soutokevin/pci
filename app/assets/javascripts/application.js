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
	// Comportamento do Hamburguer
	$( '#menu-btn' ).click(function(){
		$('.responsive-menu').toggleClass('expand')
		$('.menu-btn span').toggleClass('active')
 	})
 	// Inicializa attachinary input para upload de imagens
 	$('.attachinary-input').attachinary()
 	// Comportamento do da página de Login
 	var working = false;
	$('.login').on('submit', function(e) {
	  if (working) return;
	  working = true;
	  var $this = $(this),
	    $state = $this.find('button > .state');
	  $this.addClass('loading');
	  $state.html('Authenticating');
	});
});