function App() {}

App.prototype = {
  run: function run() {

    var url = $("#new_comment").attr("action");

    $.ajax({
      type: "GET",
      url: url,
      success: function (data) {
        data.forEach(function(object){
          this.id = object.id;
          this.content = object.content;
          this.date = object.created_at;

          $("h3").after(
            "<ul id='" + this.id + "' class='comment' >" +
              "<li>" +
                "<p>" + this.content + "</p>" +
                "<p>" + this.date + "</p>" +
              "</li>" +
            "</ul>"
          );
        })
      },
      error: function(error) {
        console.log("error: ", error);
      }
    });

    $(".new_comment").hide();


    $("#container").on("click", ".add_comment", function(){
      var $form = $(this).next()
      var klass = $form.attr("class")
      $comment_class = $("." + klass)
      $comment_class.toggle();
    })
  }
}



























