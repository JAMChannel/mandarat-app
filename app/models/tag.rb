class Tag < ApplicationRecord
  has_many :portfolio_tags, dependent: :delete_all
  has_many :portfolios, through: :portfolio_tags
end
