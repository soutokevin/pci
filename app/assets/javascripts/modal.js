$(document).on('turbolinks:load', function() {
  var body = $(document.body),
    btns = $('[data-modal]'),
    modal = $('#info')

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

  function setup(opts, photos) {
    modal.find('.modal__title').text(opts.title)

    var text = modal.find('.modal__text')
    var images = modal.find('.modal__images')

    // Clean everything up
    text.children().remove()
    images.children().remove()

    text.html(opts.body)

    photos.forEach(function(src, index) {
      var img = $('<img class="modal__image" src="' + src.fullpath + '">')

      img.click(function() {
        showImageModal(opts.images, index)
      })

      images.append(img)
    })
  }

  window.setModal = setup

  // Requisição AJax dos slides para o modal
  var next = $('.carousel__next')
  var prev = $('.carousel__prev')
  var slide_active = $('.carousel__slide--active')
  var id = slide_active.data('modal');
  ajax(id);

  prev.click(function(){
    slide_active = $('.carousel__slide--active')
    id = slide_active.data('modal');
    ajax(id);
  });

  next.click(function(){
    slide_active = $('.carousel__slide--active')
    id = slide_active.data('modal');
    ajax(id);
  });

  function ajax(id) {
    $.ajax({
      type: 'GET',
      url: '/pages/6/page_parts/34/contents/'+ id +'.json'
    }).success(function(response) {
      setup(response.content, response.photos);
    })
  }
})