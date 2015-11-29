class VideosController < ApplicationController
  def index
    @latest_vid = Video.latest_videos.last
    @models     = @latest_vid.models
    @more_vids  = Video.latest_videos.order(post_date: 'DESC')
    @upcoming_videos = Video.upcoming_videos.order(post_date: 'DESC')
  end

  def new
  end

  def upload
    aws_upload_for params[:video]

    render json: upload_response, content_type: request.format
  end

  def show
    @video = find_video
    @videopics = @video.pictures
    # .paginate(page: params[:page], per_page: 12).order(id: 'ASC')
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end

  def aws_upload_for video
    # ...
    # All AWS File uploading goes here
    # However, should go in the model
    # ...
    puts "\n\n\n"
    [:original_filename, :content_type].each do |param|
      puts "#{param.to_s.humanize}: #{video.send param}"
    end
    puts "\n\n\n"
  end

  def upload_response
    # This is just a dummy response that jquery file upload expects

    name = 'video.mp4'
    size = 1000
    url  = "http://example.org/files/#{name}"
    thumbnail_url = "http://example.org/files/#{name}_thumb.jpg"
    delete_type = "DELETE"
    delete_url = "http://example.org/files/picture1.jpg"

    {
      files: [
        {
          name: name,
          size: size,
          url: url,
          thumbnailUrl: thumbnail_url,
          deleteType: delete_type,
          deleteUrl: delete_url
        }
      ]
    }
  end
end
