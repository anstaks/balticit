#= require active_admin/base
jQuery ->
  $('.globalize-inputs .language-selection li:first').addClass('lang-switch-active')
  $('.globalize-inputs > div > div:first').show()

  $('.globalize-inputs .language-selection li a').on 'click', ->
    $(this).parent().addClass('lang-switch-active').siblings().removeClass('lang-switch-active')
    $('.globalize-inputs > div > div').hide().eq($(this).parent().index()).show()
    return false
