function App() {}

App.prototype = {
  run: function run() {
    // console.log("Starting AJAX");

    var url = $("#new_comment").attr("action");
    // console.log(url);

    $.ajax({
      type: "GET",
      url: url,
      success: function (data) {

        data.forEach(function(object){



          // console.log(object);
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
            )

        });

      }
    })

  }
}
