class ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show
    @model = Model.find(params[:id])
    @more_vids = @model.videos
  end
end