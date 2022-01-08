# == Schema Information
#
# Table name: portfolios
#
#  id         :bigint           not null, primary key
#  github     :string(255)      not null
#  name       :string(255)      not null
#  text       :text(65535)      not null
#  url        :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Portfolio < ApplicationRecord
  has_many :portfolio_tags, dependent: :delete_all
  has_many :tags, through: :portfolio_tags

  has_one_attached :image
  # belongs_to :user
end
