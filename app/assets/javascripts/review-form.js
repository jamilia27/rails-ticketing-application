$(function() {
  $('#new_review').on("submit", function(e) {
    e.preventDefault()
    const values = $(this).serialize()
    let posting = $.post('/reviews', values)
    // debugger
    posting.done(function(review) {
      $(".reviewTitle").text(review["title"])
      $(".reviewBody").text(review["body"])
      $(".reviewedBy").text("Reviewed by: " + review["user"]["name"])
    })
  })
})
