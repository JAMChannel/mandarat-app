class Api::V1::PortfoliosController < ApplicationController

  def index
    portfolios = Portfolio.order(updated_at: :desc)
    # binding.pry
    render json: portfolios
  end
end
