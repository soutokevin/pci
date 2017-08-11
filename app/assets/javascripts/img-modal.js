$(document).on('turbolinks:load', function() {
  var body = $(document.body),
    modal = $('#images'),
    preview = modal.find('.modal__preview'),
    current,
    images

  modal.click(function(event) {
    if (event.target === this) {
      modal.removeClass('modal--active')
    }
  })

  window.showImageModal = function setup(list, index) {
    current = index
    images = list

    preview.attr('src', images[current])
    modal.addClass('modal--active')
  }
})
