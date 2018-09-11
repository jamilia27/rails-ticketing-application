$(function() {
  $('#load-tickets').on('click', function() {
    // e.preventDefault()
    // // alert("This fucking sucks")
    const userId = $(this).data("id")
    let ticketListItem = ""
    const url = '/users/' + userId + '/tickets' + ".json"
    $.get(url, function(tickets) {
      tickets.forEach(function(ticket) {
        ticketListItem += '<li class="ticketItem list-group-item" data-id="' + ticket["id"] + '">' + '<a href="' + userId + '/tickets/' + ticket["id"] + '">' + ticket["concert"]["name"] + '</a>'  + ticket["price"] + '</li>'
      })
      $('.userTickets').append(ticketListItem)
    })
  })
})

