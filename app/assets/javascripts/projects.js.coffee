$(document).ready ->
  porfolioShow = ->
    $(".portfolio-item").eq(pItem).addClass "portfolio-show"
    pItem++
  pItem = 0
  setInterval porfolioShow, 200
  isMobile = navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry)/)
  $(".portfolio-link").on "click", (event) ->
    id = $(this).parent().data().id
    $.ajax "/projects/#{id}",
      method: 'get'
    .done (data) ->
      console.log(data)
      $('body').append JST["templates/projects/show"]({project: data})

      $("#project-body").css("height", $(window).height() - 250 + "px").mCustomScrollbar()
      $("#project").modal backdrop: false

      if isMobile
        $("#project").css "min-height", $(window).height() + "px"
        $("#page").hide()
      else
        $("body").addClass "no-scroll"
      false

    .fail ->
      alert 'Error'
    return false


  $(document).on 'click', '#project-close', ->
    $("#project").removeClass('in')
    setTimeout ->
      $("#project").remove()
      if isMobile
        $("#page").show()
      else
        $("body").removeClass "no-scroll"
      false
    , 500
