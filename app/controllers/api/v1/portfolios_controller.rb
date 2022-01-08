class Api::V1::PortfoliosController < ApplicationController
  def index
    portfolios = Portfolio.joins(:tags)
    # binding.pry
    # render json: portfolios.to_json(include:[:tags,:image])
    render json: portfolios.to_json(include: [:tags])
  end
end
