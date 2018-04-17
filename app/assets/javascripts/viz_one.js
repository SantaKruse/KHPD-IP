$(document).ready(function() {

  $(document)
  .on('change', '.filter_checkbox, .year-box', function() {
    filterLists()
  })

   $(document)
  .on('click', '.btn', function() {
    filterLists()
  })

  filterLists()


  function filterLists() {
    var form = $('#filter_form')
    console.log('hello ryan')
    $.ajax({
      url: form.attr('action'),
      type: 'post',
      data: form.serialize(),
      dataType: 'json',
      success: function(response) {
        vizOne(response)
      }
    })
  }

})

