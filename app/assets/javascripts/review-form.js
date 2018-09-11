// class newReview {
//   appendReview() {
    $(document).on("turbolinks:load", function() {
      $('#new_review').on("submit", function(e) {
        e.preventDefault()
        const values = $(this).serialize()
        let posting = $.post('/reviews', values)
        // debugger
        posting.done(function(review, status) {
          console.log(status)
          // if (status === "success") {
            $(".reviewTitle").text(review["title"])
            $(".reviewBody").text(review["body"])
            $(".reviewedBy").text("Reviewed by: " + review["user"]["name"])
          // }
          // else {
          //   alert("Try Again")
          // }
        });

        posting.always(function() {
          $('#new_review').trigger("reset");
        })
      })
      // $('#new_review').reset()
    })
//   }
// }
