class ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show

  end
end