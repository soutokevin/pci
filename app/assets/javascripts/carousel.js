$(document).on('turbolinks:load', function() {
  'use strict'

  var el = $('.carousel')
  for (var i = 0; i < el.length; i++) {
    carousel(el[i])
  }
})

function carousel(el) {
  'use strict'

  var current = 0,
    carousel = $(el),
    slides = carousel.find('.carousel__slide'),
    controls = carousel.find('.carousel__control')

  function setSlide(index) {
    var nextSlide = $(slides[index]),
      nextControl = $(controls[index])

    if (nextSlide.length === 0 || nextControl.length === 0) {
      throw new Error('Cannot set slide for index "' + index + '".')
    }

    current = index
    slides.removeClass('carousel__slide--active')
    controls.removeClass('carousel__control--active')

    nextSlide.addClass('carousel__slide--active')
    nextControl.addClass('carousel__control--active')
  }

  carousel.find('.carousel__prev').click(function() {
    var next = (current - 1 + slides.length) % slides.length
    setSlide(next)
  })

  carousel.find('.carousel__next').click(function() {
    var next = (current + 1) % slides.length
    setSlide(next)
  })

  controls.click(function() {
    var index = controls.index(this)
    setSlide(index)
  })
}
