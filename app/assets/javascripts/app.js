function App() {}

App.prototype = {
  run: function run() {
    console.log("Starting AJAX");
    var article_id = 1;
    $.ajax({
      type: "GET",
      url: "/articles/" + article_id + "/comments",
      success: function (data) {
        console.log("Success with AJAX!");
        console.log(data);
      }
    })
  }
}
