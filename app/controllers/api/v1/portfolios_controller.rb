class Api::V1::PortfoliosController < ApplicationController
  def index
    portfolios = Portfolio.joins(:tags).distinct
    # binding.pry
    # render json: portfolios.to_json(include:[:tags])
    render json: portfolios.to_json(include: [:tags], methods: [:image_url])
    # binding.pry
  end
end
