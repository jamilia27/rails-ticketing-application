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

  reviewFormatter() {
    return `<li class ="list-group-item">
    <h4>${this.title()}</h4>
    <p>${this.body()}</p>
    <p>By: ${this.userName()}</p>
    </li>`
  }
}


// <h4>${this.title()}</h4>
// <p>${this.body()}</p>
// <p>Reviewed By: ${this.userName()}
