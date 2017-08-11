$(document).on('turbolinks:load', function() {
  var body = $(document.body),
    modal = $('#images')

  modal.click(function(event) {
    if (event.target === this) {
      modal.removeClass('modal--active')
    }
  })

  window.showImageModal = function setup(images, index) {
    modal.addClass('modal--active')
  }
})
