//= require jquery3
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  $('#menu-btn').click(function() {
    $('.responsive-menu').toggleClass('expand')
    $('.menu-btn span').toggleClass('active')
  })

  var cards = $('.accordion__card')

  cards.click(function() {
    var el = $(this)
    var cl = 'accordion__card--active'
    var has = el.hasClass(cl)
    cards.removeClass(cl)

    if (!has) {
      el.addClass(cl)
    }
  })
})
