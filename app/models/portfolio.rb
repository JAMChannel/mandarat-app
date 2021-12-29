class Portfolio < ApplicationRecord
  has_many :portfolio_tags ,dependent: :delete_all
  has_many :tags, through: :portfolio_tags
end
