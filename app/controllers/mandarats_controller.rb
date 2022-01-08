class MandaratsController < ApplicationController
  before_action :require_login, only: %i[index show new create edit update destroy]
  def index
    if current_user.mandarats.exists?
      @mandarat = current_user.mandarats
      @title = current_user.mandarat_title
      @target = Form::TargetCollection.new
    else
      redirect_to new_mandarat_path
    end
  end

  def new
    @mandarat = Form::MandaratCollection.new
  end

  def create
    # binding.pry
    @mandarat = Form::MandaratCollection.new(mandarat_params)
    if @mandarat.save
      redirect_to mandarats_path
    else
      redirect_to new_mandarat_path
    end
  end

  def show
    @mandarat = Mandarat.find(params[:id])
    @target = @mandarat.targets
  end

  def edit; end

  private

  def mandarat_params
    params.require(:form_mandarat_collection).permit(:title, :user_id, mandarats_attributes: %i[name user_id])
  end
end
