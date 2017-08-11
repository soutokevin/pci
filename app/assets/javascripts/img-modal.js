$(document).on('turbolinks:load', function() {
  var body = $(document.body),
    modal = $('#images'),
    preview = modal.find('.modal__preview'),
    list = modal.find('.modal__list'),
    current,
    images

  modal.click(function(event) {
    if (event.target === this) {
      modal.removeClass('modal--active')
    }
  })

  function setupList() {
    // Clean up
    list.children().remove()

    images.forEach(function(src, index) {
      var img = $('<img class="modal__item" src="' + src + '">')

      if (current === index) {
        img.addClass('modal__item--active')
      }

      list.append(img)
    })
  }

  window.showImageModal = function setup(list, index) {
    current = index
    images = list

    setupList()
    preview.attr('src', images[current])
    modal.addClass('modal--active')
  }
})
