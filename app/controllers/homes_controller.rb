class HomesController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Form::PortfolioCollection.new(port_params)
    @portfolio.save
    redirect_to root_path
  end

  def port_params
    params.require(:portfolio).permit(:name, :text, :url, :image, :github, :tagnames)
  end
end
