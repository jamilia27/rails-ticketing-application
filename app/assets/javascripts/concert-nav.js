$(function() {
  $(".next-concert").on("click", function(e) {
    e.preventDefault()
    alert("You clicked next!")
  })
})

$(function() {
  $(".previous-concert").on("click", function(e) {
    e.preventDefault()
    alert("You clicked previous!")
  })
})
