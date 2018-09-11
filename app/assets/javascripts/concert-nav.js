$(document).on("turbolinks:load", function() {
  $(".next-concert").on("click", function(e) {
    e.preventDefault()
    let nextId = parseInt($(".next-concert").attr("data-id")) + 1
    $.get('/concerts/' + nextId + '.json', function(concert) {
      $(".concertName").text(concert["name"])
      $(".concertDate").text("Date: " + moment(concert["date"], "YYYY-MM-DD").format("MMMM D, YYYY"));
      $(".concertGenre").text("Genre: " + concert["genre"])
      $(".concertVenue").text("Venue: " + concert["venue"])

      $(".next-concert").attr("data-id", concert["id"])
    })
  })
})

$(document).on("turbolinks:load", function() {
  $(".previous-concert").on("click", function(e) {
    e.preventDefault()

    let prevId = parseInt($(".previous-concert").attr("data-id")) - 1
        $.get('/concerts/' + prevId + '.json', function(concert) {
      $(".concertName").text(concert["name"])
      $(".concertDate").text("Date: " + moment(concert["date"], "YYYY-MM-DD").format("MMMM D, YYYY"))
      $(".concertGenre").text("Genre: " + concert["genre"])
      $(".concertVenue").text("Venue: " + concert["venue"])

      $(".previous-concert").attr("data-id", concert["id"])
    })
  })
})
