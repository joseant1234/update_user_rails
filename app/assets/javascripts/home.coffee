$(document).on "turbolinks:load", ()->
  $(document).on 'change', '.all-checkbox-of-table', ->
    if $(this).is(':checked')
      $('tbody').find("input[type='checkbox']").prop('checked',true)
    else
      $('tbody').find("input[type='checkbox']").prop('checked',false)

  $(document).on 'click', '.status-btn', (ev)->
    ev.preventDefault()
    status = $(this).data 'status'
    $("#action_hidden").val status
    $(this).closest('form').submit()