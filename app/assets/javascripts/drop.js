$(function(){

  var template = Handlebars.compile($("#picture-container").html());

  function updatePictures(pictures) {
    $(".pic-container").html(template({pictures: pictures}));
  }

  Dropzone.options.photoDropzone = {
    paramName: "image",
    maxFilesize: 10,
    init: function() {
      this.on("success", function(file, response){
        updatePictures(response);
      });
    }
  };


  $(".pic-container").on("click", ".deletePicture", function(e){
    e.preventDefault();

    var self = $(this),
        pictureId = self.attr("data-picture-id"),
        videoId = self.attr("data-video-id"),
        url = "/admin/videos/" + videoId + "/pictures" + "/" + pictureId

    $.ajax({
      type: "DELETE",
      url: url,
      success: function(data) {
        updatePictures(data);
      }
    });
  });

});
