//= jquery-ui.min
//= jquery-ui.widget
//= jquery.fileupload
//= jquery.iframe-transport

//= require_self

$(function () {
  $('#video').fileupload({
    dataType: 'json',
    xhrFields: {withCredentials: true},
    url: '/upload',

    add: function (e, data) {
      var $upload = $('section.upload')
        , $button = $('<button class="submit"/>').text('Upload')

      data.context = $button
      .appendTo($upload)
      .click(function () {
          data.context = $('<p/>').text('Uploading...').replaceAll($(this));
          data.submit();
      });
    },

    done: function (e, data) {
      $.each(data.result.files, function (index, file) {
        $('<p/>').text(file.name).appendTo(results)
      });
    },

    progressall: function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10)

        $('#progress .bar').css(
            'width',
            progress + '%'
        );
    }
  })
})
