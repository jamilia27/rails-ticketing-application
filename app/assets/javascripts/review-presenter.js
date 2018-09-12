class ReviewPresenter {
  constructor(review) {
    this.review = review
  }

  title() {
    return this.review.title
  }

  body() {
    return this.review.body
  }

  userName() {
    return this.review.user.name
  }

  reviewTime() {
    return moment(this.review.created_at).format('LLL')
  }

  reviewFormatter() {
    return `<li class ="list-group-item list-group-item-secondary">
    <h4>${this.title()}</h4>
    <p>${this.body()}</p>
    <p>By: ${this.userName()} at ${this.reviewTime()}</p>
    </li>`
  }
}


// <h4>${this.title()}</h4>
// <p>${this.body()}</p>
// <p>Reviewed By: ${this.userName()}
