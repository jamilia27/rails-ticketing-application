$(function() {
  $('#new_review').on("submit", function(e) {
    e.preventDefault()
    const values = $(this).serialize()
    let posting = $.post('/reviews', values)

    posting.done(function(data) {
      // console.log(data)
    })
  })
})
