$(document).on("turbolinks:load", function() {
  $('#load-tickets').on('click', function() {
    // e.preventDefault()
    // // alert("This fucking sucks")
    // let counter = 0
    const userId = $(this).data("id")
    const url = '/users/' + userId + '/tickets' + ".json"
    $.get(url, function(tickets) {

      tickets.forEach(function(ticket) {

        let ticketItem = new TicketPresenter(ticket)
        // debugger
        $('.userTickets').append(ticketItem.ticketAttributes())
      })
    })
  })
})

