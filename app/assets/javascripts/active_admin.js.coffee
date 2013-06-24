#= require active_admin/base
jQuery ->
  $('.lang-form.ru').show()
  $('.lang-switch.ru').addClass('lang-switch-active')

  $('.lang-switch').on 'click', ->
    $(this).addClass('lang-switch-active').siblings().removeClass('lang-switch-active')
    $('.lang-form').show().not(document.getElementsByClassName($(this).data().lang)).hide()
    return false
