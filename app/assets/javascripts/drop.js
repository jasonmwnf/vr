$(function(){

  Dropzone.autoDiscover = false;

  var dropzone = new Dropzone ("#photoDropzone", {
        paramName: "image",
        maxFilesize: 30,
  });

  dropzone.on("success", function(file, response) {

    $(".pic-container").append("" +
    "<div class='col-sm-3' id='img_" + response.id + "'>" +
        "<div class='vid-pics vid-pics-fix' style='background-image: url(\"" + response.image_url.url + "\")'></div>" +
          '<a href="#"></a>' + 
          '<a class="deletePicture" data-remote="true" rel="nofollow" data-method="delete" href="/admin/videos/' + response.video_id + '/pictures/' + response.id + '">Remove Picture</a>' +
    "</div>"
    );

    this.removeFile(file)

  });

});

