jQuery ->
  $('#feedback-form').on 'ajax:success', ->
    noty text: 'Ваше сообщение успешно отправлено'
  $('#feedback-form').on 'ajax:error', ->
    noty
      text: 'Произошла ошибка'
      type: 'error'

