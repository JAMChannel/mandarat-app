class MandaratsController < ApplicationController
  before_action :require_login, only: %i[index show new create edit update destroy]
  def index
    # @mandarat = Mandarat.includes(:user).order("created_at DESC")
    @mandarat = current_user.mandarats
    @title = current_user.title

    @items = []
    9.times do |n|
      if n == 4
        @items << @title
      else
        @items << @mandarat[n]
      end
    end
  end

  def new
    @mandarat = Form::MandaratCollection.new
    # binding.pry
  end

  def create
    # binding.pry
    @mandarat = Form::MandaratCollection.new(mandarat_params)
    if @mandarat.save
      redirect_to mandarats_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end


  private

  def mandarat_params
    # params.require(:form_mandarat_collection).permit(mandarats_attributes: Form::Mandarat::REGISTRABLE_ATTRIBUTES).merge(user_id: current_user.id)
    # params.require(:form_mandarat_collection).permit(mandarats_attributes: [:name,:user_id])
    params.require(:form_mandarat_collection).permit(:name, :user_id, mandarats_attributes: [:name,:user_id,:title_id])
  end

end
