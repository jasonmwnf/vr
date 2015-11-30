$(function(){

  Dropzone.autoDiscover = false;

  var dropzone = new Dropzone ("#photoDropzone", {
        paramName: "image",
        maxFilesize: 30,
  });

  dropzone.on("success", function(file, response) {
    console.log(response)
    console.log(file)

    $(".pic-container").append("" +
    "<div class='col-sm-3' id='img_" + response.id + "'>" +
      // "<img src='" + response.image_url.url + "'>" +
        "<div class='vid-pics vid-pics-fix' style='background-image: url(\"" + response.image_url.url + "\")'>" +
          '<a href="#"></a>' + 
          '<a class="deletePicture" data-remote="true" rel="nofollow" data-method="delete" href="/admin/videos/' + response.video_id + '/pictures/' + response.id + '">Remove Picture</a>' +
        "</div>" +
    "</div>"
    );

    // this.removeFile(file)
    // $.getScript("/admin/videos/" + response + "/uploaded");

  });

  // .col-sm-3{:id => "img_#{img.id}"}
  //   .vid-pics.vid-pics-fix{:style => "background-image: url('#{img.image_url}')"}
  //   %a{:href => "#"}
  //   = link_to 'Remove Picture', admin_video_picture_path(@video, img), class: 'deletePicture', method: :delete, remote: true

//   var template = Handlebars.compile($("#picture-container").html());

//   function updatePictures(pictures) {
//     $(".pic-container").html(template({pictures: pictures}));
//     alert("test")
//   }

//   Dropzone.options.photoDropzone = {
//     paramName: "image",
//     maxFilesize: 30,
//     init: function() {
//       this.on("success", function(file, response){
//         updatePictures(response);
//       });
//     }
//   };


//   $(".pic-container").on("click", ".deletePicture", function(e){
//     e.preventDefault();

//     var self = $(this),
//         pictureId = self.attr("data-picture-id"),
//         videoId = self.attr("data-video-id"),
//         url = "/admin/videos/" + videoId + "/pictures" + "/" + pictureId

//     $.ajax({
//       type: "DELETE",
//       url: url,
//       success: function(data) {
//         updatePictures(data);
//       }
//     });
//   });

});
