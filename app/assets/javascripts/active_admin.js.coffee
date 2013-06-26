#= require active_admin/base
jQuery ->
  customTabs $('.globalize-content')
  customTabs $('.globalize-seo')
  customTabs $('.globalize-project')


customTabs = (parent) ->
  parent.find('.language-selection li:first').addClass('lang-switch-active')
  parent.find('> div > div:first').show()

  parent.find('.language-selection li a').on 'click', ->
    $(this).parent().addClass('lang-switch-active').siblings().removeClass('lang-switch-active')
    parent.find('> div > div').hide().eq($(this).parent().index()).show()
    return false
