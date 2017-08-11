$(document).on('turbolinks:load', function() {
  'use strict'

  var body = $(document.body),
    modal = $('#images'),
    preview = modal.find('.modal__preview'),
    list = modal.find('.modal__list'),
    prev = modal.find('.modal__prev'),
    next = modal.find('.modal__next'),
    current,
    images

  modal.click(function(event) {
    if (event.target === this) {
      modal.removeClass('modal--active')
    }
  })

  prev.click(function() {
    var items = list.children()
    items.removeClass('modal__item--active')

    current = (current - 1 + items.length) % items.length
    $(items[current]).addClass('modal__item--active')
    preview.attr('src', images[current])
  })

  next.click(function() {
    var items = list.children()
    items.removeClass('modal__item--active')

    current = (current + 1) % items.length
    $(items[current]).addClass('modal__item--active')
    preview.attr('src', images[current])
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
