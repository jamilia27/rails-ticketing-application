$(document).on("turbolinks:load", function() {
  $('#load-tickets').on('click', function() {
    const userId = $(this).data("id")
    const url = '/users/' + userId + '/tickets' + ".json"
    $.get(url, function(tickets) {

      tickets.forEach(function(ticket) {

        let ticketItem = new TicketPresenter(ticket)
        $('.userTickets').append(ticketItem.ticketAttributes())
      })
    })
  })
})

