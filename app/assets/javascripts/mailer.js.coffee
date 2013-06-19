isEmail = (email) ->
  email = $.trim(email)
  regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
  regex.test email

jQuery ->
  $('#feedback-form').on 'ajax:beforeSend', ->
    unless isEmail($('#feedback-email').val())
      noty
        text: 'Введите правильный e-mail'
        type: 'error'
      return false
    if $('#feedback-message').val().length < 10
      noty
        text: 'Ваше сообщение cлишком короткое'
        type: 'error'
      return false
  $('#feedback-form').on 'ajax:success', ->
    noty text: 'Ваше сообщение успешно отправлено'
  $('#feedback-form').on 'ajax:error', ->
    noty
      text: 'Произошла ошибка'
      type: 'error'

