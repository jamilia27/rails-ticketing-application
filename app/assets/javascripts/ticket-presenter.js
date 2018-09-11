class TicketPresenter {
  constructor(ticket) {
    this.ticket = ticket
  }

  price() {
    return this.ticket.price
  }

  ticketId() {
    return this.ticket.id
  }

  concertName() {
    return this.ticket.concert.name
  }

  userId() {
    return this.user_id
  }



  ticketAttributes() {
    return `<li class="ticketItem list-group-item" data-id="${this.ticketId()}"><div class="row"><div class="col-md-6"><a href="${this.userId()}/tickets/${this.ticketId()}">${this.concertName()}</a><div><div class="col-md-6">$${this.price()}</div></div></li>`
  }
}
