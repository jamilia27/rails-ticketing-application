$(function() {
  $('#load-tickets').on('click', function() {
    var id = $(this).data("id")
    $.get('/users/' + id + '/tickets' + ".json", function(tickets) {
      console.log(tickets)
    })
  })
})

