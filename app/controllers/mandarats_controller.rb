class MandaratsController < ApplicationController
  def index
  end

  def new
    @mandarat = Mandarat.new
  end

  def create
    binding.pry
    @mandarat = Mandarat.new(mandarat_params)
    if @mandarat.save!
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
    # params.require(:mandarat).permit(:title ,name: []).merge(user_id: current_user.id)
  end

end
