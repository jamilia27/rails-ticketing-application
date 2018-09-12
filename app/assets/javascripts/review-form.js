$(document).on("turbolinks:load", function() {
  $('#new_review').on("submit", function(e) {
    e.preventDefault()
    const values = $(this).serialize()
    let posting = $.post('/reviews', values)
    posting.done(function(review) {
      let reviewPost = new ReviewPresenter(review)
      $('#reviewDiv').append(reviewPost.formatter())
    })
    posting.always(function() {
      $('#new_review').trigger("reset")
    })
  })
})
