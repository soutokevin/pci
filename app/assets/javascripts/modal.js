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

  function setup(opts) {
    modal.find('.modal__title').text(opts.title)

    var text = modal.find('.modal__text')
    var images = modal.find('.modal__images')

    // Clean everything up
    text.children().remove()
    images.children().remove()

    text.html(opts.description)

    opts.images.forEach(function(src) {
      var img = $('<img class="modal__image" src="' + src + '">')
      images.append(img)
    })
  }

  window.setModal = setup
})
