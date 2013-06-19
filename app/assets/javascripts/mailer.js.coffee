jQuery ->
  $('#feedback-form').on 'ajax:success', ->
    $(".notifications").notify(
      message:
        text: "Ваше сообщение успешно отправлено"
      fadeOut:
        enabled: true
        delay: 5000
    ).show()
  $('#feedback-form').on 'ajax:error', ->
    $(".notifications").notify(
      type: 'error'
      message:
        text: "Извините, произошла ошибка"
      fadeOut:
        enabled: true
        delay: 5000
    ).show()
