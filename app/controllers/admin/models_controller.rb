class Admin::ModelsController < AdminsController
  def index
    @models = Model.all
  end

  def show

  end

  def edit

  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update

  end

  def destroy

  end

  private

  def model_params
    params.require(:model).permit!
  end


end