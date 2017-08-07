$(document).on('turbolinks:load', function() {
  var body = $(document.body),
    btns = $('[data-modal]'),
    modal = $('.modal')

  modal.click(function(event) {
    if (event.target === this) {
      modal.removeClass('modal--active')
      body.removeClass('with-active-modal')
    }
  })

  btns.click(function() {
    body.addClass('with-active-modal')
    modal.addClass('modal--active')
  })
})
