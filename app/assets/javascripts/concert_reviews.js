let loadConcertReviews = function() {
  let concertReviewsUrl = $("#review-list").data("url");
  let concertReviewsRequest = $.ajax({
    method: "GET",
    url: concertReviewsUrl
  });

  concertReviewsRequest.done(function(concertReviews) {
    $("#review-list").html("");

    concertReviews.forEach(function(concertReview) {
      $("#review-list").append($(`<li>${concertReview.title}</li>`));
    });
  });

  concertReviewsRequest.always(function() {
    console.log("We finshed trying to load concert reviews");
  });
}

$(document).on("turbolinks:load", function() {
  loadConcertReviews();

  $('#new_review').on("submit", function(e) {
    e.preventDefault();

    const values = $(this).serialize();
    let posting = $.post('/reviews', values);

    posting.always(function() {
      $('#new_review').trigger("reset");
      loadConcertReviews();
    });
  });
});

