isEmail = (email) ->
  email = $.trim(email)
  regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
  regex.test email

jQuery ->
  $('#feedback-form').on 'ajax:beforeSend', ->
    unless isEmail($('#feedback-email').val())
      noty
        text: I18n.t('js.wrong_email')
        type: 'error'
      return false
    if $('#feedback-message').val().length < 10
      noty
        text: I18n.t('js.short_message')
        type: 'error'
      return false
  $('#feedback-form').on 'ajax:success', ->
    noty text: I18n.t('js.send_success')
  $('#feedback-form').on 'ajax:error', ->
    noty
      text: I18n.t('js.send_error')
      type: 'error'

