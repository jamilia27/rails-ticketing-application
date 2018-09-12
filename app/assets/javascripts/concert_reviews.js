let loadConcertReviews = function() {
  let concertReviewsUrl = $("#review-list").data("url");
  let concertReviewsRequest = $.ajax({
    method: "GET",
    url: concertReviewsUrl
  });

  concertReviewsRequest.done(function(concertReviews) {
    $("#review-list").html("");

    concertReviews.forEach(function(concertReview) {
      let reviewItem = new ReviewPresenter(concertReview)
      $("#review-list").append(reviewItem.reviewFormatter());
    });
  });

  concertReviewsRequest.always(function() {
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
      $("input[type='submit']").removeAttr('data-disable-with')
      $("input[type='submit']").prop("disabled", false)
      loadConcertReviews();
    });
  });
});

