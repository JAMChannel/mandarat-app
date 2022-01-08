# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  tagname    :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_many :portfolio_tags, dependent: :delete_all
  has_many :portfolios, through: :portfolio_tags
end
