$(function() {
  $('#new_review').on("submit", function(e) {
    e.preventDefault()
    const values = $(this).serialize()
    let posting = $.post('/reviews', values)
    // debugger
    posting.done(function(data) {
      debugger
      // console.log(data)
    })
  })
})
