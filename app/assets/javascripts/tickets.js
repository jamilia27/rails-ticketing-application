$(function() {
  $('#load-tickets').on('click', function() {
    var userId = $(this).data("id")
    console.log(userId)
    var ticketListItem = ""
    $.get('/users/' + userId + '/tickets' + ".json", function(tickets) {
      tickets.forEach(function(ticket) {
        ticketListItem += '<li class="ticketItem list-group-item" data-id="' + ticket["id"] + '">' + '<a href="' + userId + '/tickets/' + ticket["id"] + '">' + ticket["concert"]["name"] + '</a>'  + ticket["price"] + '</li>'
      })
      $('.userTickets').html(ticketListItem)
    })
  })
})

