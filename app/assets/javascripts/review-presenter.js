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

  formatter() {
    return `<h4>${this.title()}</h4>
    <p>${this.body()}</p>
    <p>Reviewed By: ${this.userName()}`
  }
}
