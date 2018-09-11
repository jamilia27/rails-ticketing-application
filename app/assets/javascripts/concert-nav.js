$(function() {
  $(".next-concert").on("click", function(e) {
    e.preventDefault()
    let nextId = parseInt($(".next-concert").attr("data-id")) + 1
    $.get('/concerts/' + nextId + '.json', function(concert) {
      $(".concertName").text(concert["name"])
      $(".concertDate").text(concert["date"])
      $(".concertGenre").text(concert["genre"])
      $(".concertVenue").text(concert["venue"])

      $(".next-concert").attr("data-id", concert["id"])
    })
  })
})

$(function() {
  $(".previous-concert").on("click", function(e) {
    e.preventDefault()
    let prevId = parseInt($(".previous-concert").attr("data-id")) - 1
        $.get('/concerts/' + prevId + '.json', function(concert) {
      $(".concertName").text(concert["name"])
      $(".concertDate").text(concert["date"])
      $(".concertGenre").text(concert["genre"])
      $(".concertVenue").text(concert["venue"])

      $(".previous-concert").attr("data-id", concert["id"])
    })
  })
})
