class Portfolio < ApplicationRecord
  has_many :portfolio_tags ,dependent: :delete_all
  has_many :tags, through: :portfolio_tags

  has_one_attached :image
  belongs_to :user
end
