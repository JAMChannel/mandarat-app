class MandaratsController < ApplicationController
  before_action :require_login, only: %i[index show new create edit update destroy]
  def index
    # if current_user.mandarats == true
        @mandarat = current_user.mandarats
        @title = current_user.mandarat_title
    # else
      # redirect_to new_mandarat_path
    # end

    # @items = []
    # 9.times do |n|
    #   if n == 4
    #     @items << @title
    #   else
    #     @items << @mandarat[n]
    #   end
    # end
    # binding.pry
  end

  def new
    @mandarat = Form::MandaratCollection.new
    # @mandarat = Mandarat.new
  end

  def create
    # binding.pry
    @mandarat = Form::MandaratCollection.new(mandarat_params)
    # test = {user_id: current_user.id}
    # hash = {}
    # @mandarat.each do |user|
    #   hash.merge!(user.user_id => 1)
    # end
    # binding.pry
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
    params.require(:form_mandarat_collection).permit(:title, :user_id, mandarats_attributes: [:name,:user_id])
  end

end
