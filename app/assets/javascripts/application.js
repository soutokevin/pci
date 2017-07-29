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

  const carousel = $('.carousel')
  const slides = carousel.find('.carousel__slide')
  const controls = carousel.find('.carousel__control')

  controls.click(function() {
    const index = controls.index(this)

    const nextSlide = $(slides[index])
    const nextControl = $(controls[index])

    if (nextSlide.length === 0) {
      throw new Error('Slide não encontrado!!!')
    }

    slides.removeClass('carousel__slide--active')
    controls.removeClass('carousel__control--active')

    nextSlide.addClass('carousel__slide--active')
    nextControl.addClass('carousel__control--active')
  })
})
